import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/features/study/study.dart';
import 'package:yoko_app/utils/utils.dart';

class ChatView extends StatefulWidget {
  final TextStudyEntity textStudy;

  const ChatView({
    super.key,
    required this.textStudy,
  });

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> with MainBoxMixin {
  final _openAI = OpenAI.instance.build(
    token: OPENAI_API_KEY,
    baseOption: HttpSetup(
      receiveTimeout: const Duration(seconds: 5),
    ),
    enableLog: true,
  );

  late final ChatUser _user;
  late final ChatUser _gptChatUser;

  final List<ChatMessage> _messages = <ChatMessage>[];
  final List<ChatUser> _typingUsers = <ChatUser>[];

  @override
  void initState() {
    super.initState();
    final state = context.read<AuthBloc>().state;
    if (state is AuthSuccess) {
      _user = ChatUser(
        id: state.credentials.user.id.toString(),
        firstName: state.credentials.user.name,
        lastName: state.credentials.user.surname,
      );
    }
    _gptChatUser = ChatUser(
      id: 'gpt',
      firstName: 'GPT',
      lastName: 'Assistant',
    );
    _messages.add(
      ChatMessage(
        text:
            'Hello, in I read next text ${widget.textStudy.text}, can you help me and talk about it, as two friends would do?',
        user: _user,
        createdAt: DateTime.now(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.scrim,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'GPT Chat',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      body: DashChat(
        currentUser: _user,
        messageOptions: MessageOptions(
          currentUserContainerColor: Theme.of(context).colorScheme.tertiary,
          currentUserTextColor: Theme.of(context).colorScheme.onTertiary,
          containerColor: Theme.of(context).colorScheme.primary,
          textColor: Theme.of(context).colorScheme.onPrimary,
          messageRowBuilder: (message, previousMessage, nextMessage,
                  isAfterDateSeparator, isBeforeDateSeparator) =>
              MessageRow(
            currentUser: _user,
            message: message,
            previousMessage: previousMessage,
            nextMessage: nextMessage,
            isAfterDateSeparator: isAfterDateSeparator,
            isBeforeDateSeparator: isBeforeDateSeparator,
            messageOptions: MessageOptions(
              currentUserContainerColor: Theme.of(context).colorScheme.tertiary,
              currentUserTextColor: Theme.of(context).colorScheme.onTertiary,
              containerColor: Theme.of(context).colorScheme.primary,
              textColor: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          // b: (Function onSend) {
          //   return IconButton(
          //     icon: Icon(Icons.send),
          //     onPressed: () {
          //       // Call onSend function when button is pressed
          //       onSend();
          //     },
          //     color: Colors.blue, // Change the color here
          //   );
          // },
        ),
        onSend: (ChatMessage m) {
          getChatResponse(m);
        },
        messages: _messages,
        typingUsers: _typingUsers,
      ),
    );
  }

  Future<void> getChatResponse(ChatMessage m) async {
    setState(() {
      _messages.insert(0, m);
      _typingUsers.add(_gptChatUser);
    });
    List<Map<String, dynamic>> messagesHistory =
        _messages.reversed.toList().map((m) {
      if (m.user == _user) {
        return Messages(role: Role.user, content: m.text).toJson();
      } else {
        return Messages(role: Role.assistant, content: m.text).toJson();
      }
    }).toList();
    final request = ChatCompleteText(
      messages: messagesHistory,
      maxToken: 200,
      model: GptTurbo0301ChatModel(),
    );
    final response = await _openAI.onChatCompletion(request: request);
    for (var element in response!.choices) {
      if (element.message != null) {
        setState(() {
          _messages.insert(
              0,
              ChatMessage(
                  user: _gptChatUser,
                  createdAt: DateTime.now(),
                  text: element.message!.content));
        });
      }
    }
    setState(() {
      _typingUsers.remove(_gptChatUser);
    });
  }
}
