import 'dart:convert';

import 'package:covid_19/confiq/confiq.dart';
import 'package:covid_19/model/hospital.dart';
import 'package:http/http.dart' as http;

class ApiService{
  Future<List<Hospitals>?> getHospital() async{
    var url = Uri.parse('${baseURL}/hospitals');
    print(url);

    var response= await http.get(url);
    print(response.body);

    if(response.statusCode == 200){
      List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((hospital) => Hospitals.fromJson(hospital)).toList();
    }else {
      print('Request Gagal dengan Status: ${response.statusCode}.');
      return null;
    }
  }
}