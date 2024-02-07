sealed class Failure {
  const Failure();
}

class ServerFailure extends Failure {
  const ServerFailure();
}

class CacheFailure extends Failure {
  const CacheFailure();
}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure();
}
