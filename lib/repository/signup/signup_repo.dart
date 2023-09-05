import 'package:getx_apis/data/network/network_api_services.dart';
import 'package:getx_apis/res/app_url/app_url.dart';

class SignUpRepo{
  
  final _apiService = NetworkApiServices();

  Future<dynamic> signUpApi(var data)async{

    dynamic response = await _apiService.postApi(data, AppUrl.loginApi);
    return response;
  }
}