import 'package:apilistview/models/my_api_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '/models/my_api_model.dart';

Future<List<MyApiModel>> fetchApiData( ) async {
  const String apiEndpoint = '';

  final response = await http.get(Uri.parse(apiEndpoint));

  if (response.statusCode == 200) {
    final List<Map<String, dynamic>> dataList = convert.jsonDecode(response.body);
    return dataList.map((data) => MyApiModel.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load data: ${response.statusCode}');
  }

}