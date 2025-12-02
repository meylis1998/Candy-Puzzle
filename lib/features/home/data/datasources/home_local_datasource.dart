import 'package:candy_puzzle/features/home/data/models/home_model.dart';

abstract class HomeLocalDataSource {
  Future<HomeModel> getHomeData();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  Future<HomeModel> getHomeData() async {
    return const HomeModel(
      title: 'Candy Puzzle',
      description: 'Welcome to the game!',
    );
  }
}
