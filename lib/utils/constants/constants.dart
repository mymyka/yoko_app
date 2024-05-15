import 'package:flutter_dotenv/flutter_dotenv.dart';

const String apiUrl = "http://18.212.227.5:8876/api/v1";
String OPENAI_API_KEY = dotenv.env['OPENAI_API_KEY'] ?? '';
