import 'package:candy_puzzle/core/error/failures.dart';
import 'package:candy_puzzle/core/usecases/usecase.dart';
import 'package:candy_puzzle/features/home/domain/entities/home_entity.dart';
import 'package:candy_puzzle/features/home/domain/repositories/home_repository.dart';

class GetHomeData extends UseCase<HomeEntity, NoParams> {
  final HomeRepository repository;

  GetHomeData(this.repository);

  @override
  Future<(HomeEntity?, Failure?)> call(NoParams params) {
    return repository.getHomeData();
  }
}
