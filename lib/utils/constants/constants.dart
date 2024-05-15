import 'package:flutter_dotenv/flutter_dotenv.dart';

const String apiUrl = "http://52.91.91.80:8876/api/v1";
String OPENAI_API_KEY = dotenv.env['OPENAI_API_KEY'] ?? '';
