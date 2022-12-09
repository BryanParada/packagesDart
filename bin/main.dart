//import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:packages_dart/packages_dart.dart' as packages_dart;

import 'package:packages_dart/classes/reqres_response.dart';

void main(List<String> arguments) {

  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then( (resp) {

    final resReqRes = reqResResponseFromJson( resp.body);


    //print(resp);

    // final body = jsonDecode(resp.body);
    // print(body);
    // print('page: ${body['page']}');
    // print('per_page: ${body['per_page']}');
    // print('id third element: ${body['data'][2]}');
    // print('id third element: ${body['data'][2]['id']}');
    
    print('page: ${resReqRes.page}');
    print('per_page: ${resReqRes.perPage}');
    print('id third element: ${resReqRes.data[2]}');
    print('id third element: ${resReqRes.data[2].id}');


  });
 

   
}
