import 'dart:convert';

import 'package:flask/model/checkInternet.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

enum StatusRequest {
  none  , 
  loading , 
  success , 
  failure , 
  serverfailure , 
  serverException , 
  offlinefailure 
}

Future<Either<StatusRequest, List>> postData(String linkurl, Map<String,dynamic> data) async {
   
      if (await checkInternet()) {
        print('=================================');
        var response = await http.post(Uri.parse(linkurl),headers: <String, String>{ 
          'Content-Type': 'application/json; charset=UTF-8', 
        }, body: jsonEncode(data));
          print(response.statusCode) ; 
        print('=================================');
        
        if (response.statusCode == 200 || response.statusCode == 201) {
          List responsebody = jsonDecode(response.body);
          print(responsebody) ; 
          
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
}