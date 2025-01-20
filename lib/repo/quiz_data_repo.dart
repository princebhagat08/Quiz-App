import 'package:quizapp_testline/Api/apis.dart';
import '../apiServices/network/network_api_services.dart';
import '../models/quiz_data_model.dart';

class QuizDataRepo{
  final _apiService  = NetworkApiServices() ;

  // Fetching Quiz Data
  Future<QuizDataModel> quizData() async{
    dynamic response = await _apiService.getApi(Apis.quizDataUrl);
    return QuizDataModel.fromJson(response) ;
  }

}
