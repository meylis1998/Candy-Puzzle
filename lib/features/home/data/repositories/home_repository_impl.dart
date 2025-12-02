import 'package:candy_puzzle/core/error/exceptions.dart';
import 'package:candy_puzzle/core/error/failures.dart';
import 'package:candy_puzzle/features/home/data/datasources/home_local_datasource.dart';
import 'package:candy_puzzle/features/home/domain/entities/home_entity.dart';
import 'package:candy_puzzle/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource localDataSource;

  HomeRepositoryImpl({required this.localDataSource});

  @override
  Future<(HomeEntity?, Failure?)> getHomeData() async {
    try {
      final result = await localDataSource.getHomeData();
      return (result, null);
    } on CacheException catch (e) {
      return (null, CacheFailure(e.message));
    }
  }
}
