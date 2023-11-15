import 'package:relight/l10n/l10n.dart';

class FirebaseWriteException implements Exception {
  FirebaseWriteException({this.message = ''});

  final String message;
}

class FirebaseReadException implements Exception {
  FirebaseReadException({this.message = ''});

  final String message;
}
