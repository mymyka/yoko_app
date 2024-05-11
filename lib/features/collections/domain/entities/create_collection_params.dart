import 'dart:io';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class CreateCollectionParams extends Equatable {
  final String name;
  final String text;
  final String status;
  final String color;
  final File banner;
  final File poster;
  final ProgressCallback? onSendProgress;

  const CreateCollectionParams({
    required this.name,
    required this.text,
    required this.status,
    required this.color,
    required this.banner,
    required this.poster,
    this.onSendProgress,
  });

  @override
  List<Object?> get props => [
        name,
        text,
        status,
        color,
        banner,
        poster,
        onSendProgress,
      ];
}
