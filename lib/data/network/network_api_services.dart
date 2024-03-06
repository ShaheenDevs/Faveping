import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../response/app_exception.dart';
import 'base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    // print(responseJson);
    return responseJson;
  }

  @override
  Future<dynamic> getApiBearer(String url) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString("remToken");
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {'Authorization': 'Bearer $token'},
      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    // print(responseJson);
    return responseJson;
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      // print(url);
      // print(data);
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }

    // print(responseJson);
    return responseJson;
  }


  @override
Future<dynamic> postApiforComment(var data, String url) async {
  if (kDebugMode) {
    print('API Request: $data');
  }

  dynamic responseJson;
  try {
    final response = await http
        .post(Uri.parse(url), body: data)
        .timeout(const Duration(seconds: 10));

    if (kDebugMode) {
      print('API Response Status Code: ${response.statusCode}');
      print('API Response Body: ${response.body}');
    }

    responseJson = jsonDecode(response.body);
  } on SocketException {
    throw InternetException();
  } on RequestTimeOut {
    throw RequestTimeOut();
  }

  return responseJson;
}



  @override
  Future<dynamic> postApiSignup(var data, String url) async {
    if (kDebugMode) {
      // print(url);
      // print(data);
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponseSignup(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }

    // print(responseJson);
    return responseJson;
  }

  @override
  Future<dynamic> postApiBearer(var data, String url) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString("remToken");
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url),
              headers: {'Authorization': 'Bearer $token'}, body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }

    // print(responseJson);
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw FetchDataException(
            'Oops! Something went wrong with your request.');
      case 401:
        throw FetchDataException(
            'Access denied. Please provide valid credentials.');
      case 403:
        throw FetchDataException(
            'Oops! You don\'t have permission to access this resource.');
      case 404:
        throw FetchDataException(
            'Sorry, the requested resource was not found.');
      case 500:
        throw FetchDataException(
            'Oops! Something went wrong on our server. Please try again later.');
      default:
        throw FetchDataException(
            'Oops! An error occurred while communicating with the server.');
    }
  }

  dynamic returnResponseSignup(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw FetchDataException(
            'Oops! Something went wrong with your request.');
      case 401:
        throw FetchDataException(
            'Access denied. Please provide valid credentials.');
      case 403:
        throw FetchDataException(
            'Oops! You don\'t have permission to access this resource.');
      case 404:
        throw FetchDataException(
            'Sorry, the requested resource was not found.');
      case 500:
        throw FetchDataException(
            'Oops! Something went wrong on our server. Please try again later.');
      default:
        throw FetchDataException(
            'Oops! An error occurred while communicating with the server.');
    }
  }
}