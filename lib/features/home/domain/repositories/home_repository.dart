import 'package:candy_puzzle/core/error/failures.dart';
import 'package:candy_puzzle/features/home/domain/entities/home_entity.dart';

abstract class HomeRepository {
  Future<(HomeEntity?, Failure?)> getHomeData();
}
