import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstsants {
  static final String _functionsBaseUrl =
      dotenv.env['FUNCTIONS_BASE_URL'] ?? '';

  static String scheduleReminder = '$_functionsBaseUrl/reminder/schedule';
}
