import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart';
import 'package:ostad_flutter_batch_two/ui/state_managers/auth_controller.dart';

import '../models/response_model.dart';
import '../utils/urls.dart';

class NetworkCaller {
  // singleton
  NetworkCaller._();

  static Future<ResponseModel> getRequest({required String url}) async {
    try {
      // print(AuthController.token.toString());
      final Response response =
          await get(Uri.parse(Urls.baseUrl + url), headers: {
        'Content-type': 'application/json',
            'Accept' : 'application/json',
        'token': AuthController.token.toString(),
        // 'Accept' : 'application/json',
        // 'token' : AuthController.token.toString(),
      });
      if (response.statusCode == 200) {
        return ResponseModel(
            isSuccess: true,
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body));
      } else {
        return ResponseModel(
            isSuccess: false,
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body));
      }
    } catch (e) {
      log(e.toString());
      return ResponseModel(
          isSuccess: false, statusCode: -1, returnData: e.toString());
    }
  }
}
