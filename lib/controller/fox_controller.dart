import 'package:mobx/mobx.dart';
import 'package:random_fox_generator/models/fox_model.dart';
import 'package:random_fox_generator/repository/fox_repository.dart';
part 'fox_controller.g.dart';

class FoxController = _FoxControllerBase with _$FoxController;

abstract class _FoxControllerBase with Store {
  FoxRepository repository = FoxRepository();

  _FoxControllerBase();

  @observable
  FoxModel foxModel = FoxModel();

  getFoxes() async {
    foxModel = await repository.getFoxes();
    return foxModel;
  }
}
