import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoko_app/features/collections/collections.dart';

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
    return BlocConsumer<CreateCollectionPageBloc, CreateCollectionPageState>(
      listener: (context, state) {
        if (state is CreateCollectionPageSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Collection ${state.collection.name} created successfully',
              ),
            ),
          );
        } else if (state is CreateCollectionPageFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  'Failed to create collection: ${state.exception.message}'),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is CreateCollectionPageLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is CreateCollectionPageFailure) {
          return const Center(
            child: Text('Failed to create collection'),
          );
        }
        return Column(
          children: [
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
                : ElevatedButton(
                    onPressed: () async {
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles();
                      if (result != null) {
                        setState(() {
                          _posterFile = File(result.files.single.path!);
                        });
                      }
                    },
                    child: const Text('Pick Poster'),
                  ),
            _bannerFile != null
                ? Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: FileImage(_bannerFile!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : ElevatedButton(
                    onPressed: () async {
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles();
                      if (result != null) {
                        setState(() {
                          _bannerFile = File(result.files.single.path!);
                        });
                      }
                    },
                    child: const Text('Pick Banner'),
                  ),
            const Text('Create Collection'),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Text',
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
            DropdownButton(
              hint: Text(status ?? ''),
              items: const [
                DropdownMenuItem(
                  value: 'public',
                  child: Text('Public'),
                ),
                DropdownMenuItem(
                  value: 'private',
                  child: Text('Private'),
                ),
              ],
              onChanged: (v) => {
                setState(() {
                  status = v ?? 'public';
                })
              },
            ),
            DropdownButton(
              hint: Text(color ?? ''),
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
            ElevatedButton(
                onPressed: () => {
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
                          )
                    },
                child: const Text('Create Collection')),
          ],
        );
      },
    );
  }
}
