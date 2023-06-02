class FetchNewsFailure implements Exception {
  /// The associated error message.
  final String message;

  const FetchNewsFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  factory FetchNewsFailure.fromCode(int? code) {
    switch (code) {
      case 400:
        return const FetchNewsFailure(
          'Client side error. Please try again later',
        );
      case 500:
        return const FetchNewsFailure(
          'Internal server error. Please contact admin.',
        );
      case 503:
        return const FetchNewsFailure(
          'API service no longer available. Please contact admin.',
        );
      case 408:
        return const FetchNewsFailure(
          'Issue with the network connection. Please try again later',
        );
      default:
        return const FetchNewsFailure();
    }
  }
}
