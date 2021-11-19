import 'dart:convert';
import 'package:http/http.dart' as http;
import '../component/model.dart';

var uri = Uri.parse('https://apodapi.herokuapp.com/api/?count=5');

Future<List<Nasa>> fetchNasa() async {
  var response = await http.get(uri);
  final jsonList = jsonDecode(response.body);
  return jsonList.map<Nasa>((json) => Nasa.fromJson(json)).toList();
}