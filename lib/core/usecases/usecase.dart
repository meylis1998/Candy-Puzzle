import 'package:candy_puzzle/core/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<(Type?, Failure?)> call(Params params);
}

class NoParams {
  const NoParams();
}
