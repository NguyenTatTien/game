
import 'package:momentum/momentum.dart';
import 'package:game/Model/GameModel.dart';

class GameController extends MomentumController<GameModel> {

  @override
  GameModel init() {
    return new GameModel(this);
  }
}
