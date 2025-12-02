import 'package:candy_puzzle/core/error/failures.dart';

abstract class UseCase<T, Params> {
  Future<(T?, Failure?)> call(Params params);
}

class NoParams {
  const NoParams();
}
