import 'package:getx_apis/data/network/network_api_services.dart';
import 'package:getx_apis/res/app_url/app_url.dart';

class LoginRepo{
  
  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data)async{

    dynamic response = await _apiService.postApi(data, AppUrl.loginApi);
    return response;
  }
}