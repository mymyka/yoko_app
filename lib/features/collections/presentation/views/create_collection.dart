import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/gen/strings.g.dart';

class CreateCollectionView extends StatefulWidget {
  const CreateCollectionView({super.key});

  @override
  State<CreateCollectionView> createState() => _CreateCollectionViewState();
}

class _CreateCollectionViewState extends State<CreateCollectionView> {
  late final TextEditingController _nameController;
  late final TextEditingController _textEditingController;
  late final String status;
  late final String color;
  File? _posterFile;
  File? _bannerFile;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _textEditingController = TextEditingController();
    status = 'public';
    color = 'blue';
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              _bannerFile != null
                  ? Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: FileImage(_bannerFile!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : Container(
                      height: 200,
                      color: Theme.of(context).colorScheme.primary,
                      child: Center(
                        child: IconButton(
                          onPressed: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();
                            if (result != null) {
                              setState(() {
                                _bannerFile = File(result.files.single.path!);
                              });
                            }
                          },
                          icon: const Icon(Icons.add),
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              labelText: t.collection.name,
                              border: const OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        _posterFile != null
                            ? Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: FileImage(_posterFile!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : Container(
                                height: 100,
                                width: 100,
                                color: Theme.of(context).colorScheme.primary,
                                child: Center(
                                  child: IconButton(
                                    onPressed: () async {
                                      FilePickerResult? result =
                                          await FilePicker.platform.pickFiles();
                                      if (result != null) {
                                        setState(() {
                                          _posterFile =
                                              File(result.files.single.path!);
                                        });
                                      }
                                    },
                                    icon: const Icon(Icons.add),
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DropdownButton(
                          hint: Text(status),
                          items: [
                            DropdownMenuItem(
                              value: 'public',
                              child: Text(t.collection.public),
                            ),
                            DropdownMenuItem(
                              value: 'private',
                              child: Text(t.collection.private),
                            ),
                          ],
                          onChanged: (v) => {
                            setState(() {
                              status = v ?? 'public';
                            })
                          },
                        ),
                        const SizedBox(width: 16),
                        DropdownButton(
                          hint: Text(color),
                          items: const [
                            DropdownMenuItem(
                              value: '#9fc5e8',
                              child: Text('Blue'),
                            ),
                            DropdownMenuItem(
                              value: '#FF0000',
                              child: Text('Red'),
                            ),
                          ],
                          onChanged: (v) => {
                            setState(() {
                              color = v ?? 'blue';
                            })
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        labelText: t.collection.text,
                        border: const OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Button.primary(
                      text: t.collection.create_collection_button,
                      onTap: () {
                        context.read<CreateCollectionPageBloc>().add(
                              CreateCollectionPageCreateCollectionEvent(
                                  CreateCollectionParams(
                                name: _nameController.text,
                                text: _textEditingController.text,
                                status: status,
                                color: color,
                                poster: _posterFile!,
                                banner: _bannerFile!,
                              )),
                            );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
