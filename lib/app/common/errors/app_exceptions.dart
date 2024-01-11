class FirebaseWriteException implements Exception {
  FirebaseWriteException({this.message = ''});

  final String message;
}

class FirebaseReadException implements Exception {
  FirebaseReadException({this.message = ''});

  final String message;
}
