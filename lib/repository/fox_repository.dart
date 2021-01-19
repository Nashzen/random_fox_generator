import 'package:dio/dio.dart';
import 'package:random_fox_generator/models/fox_model.dart';

class FoxRepository {
  final Dio dio;
  FoxRepository({this.dio});

  Future<FoxModel> getFoxes() async {
    try {
      Response response = await Dio().get(
        'https://randomfox.ca/floof/',
      );
      return FoxModel.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }
}
