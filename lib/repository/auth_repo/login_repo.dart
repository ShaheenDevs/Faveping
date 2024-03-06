

import '../../data/network/network_api_services.dart';
import '../../res/app_urls.dart';


class LoginRepositry{
  final _apiService = NetworkApiServices();
Future<dynamic> loginApi(var data) async{
  dynamic response =await _apiService.postApi(data,AppUrl.baseUrl);
  return response;
}
}