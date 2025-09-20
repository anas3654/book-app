
import 'package:dio/dio.dart';

class ApiService{
  final String _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String,dynamic>> get({required endPoint})async{
    Response response  = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}

// class API {
//   Future<Response> get({required String url , String? token}) async {
//     Map<String, String> headers = {};
//     if (token != null) {
//       headers['Authorization'] = 'Bearer $token';
//     }
//     try {
//       Response response = await Dio().get(url);
//       return response;
//     } on DioException catch (e) {
//       throw Exception('Failed to load data: ${e.message}');
//     }
//   }
//
//   Future<ProductModel> post({required String url, required Map<String, dynamic> body, String? token}) async {
//     Map<String, String> headers = {};
//     if (token != null) {
//       headers['Authorization'] = 'Bearer $token';
//     }
//     try {
//       Response response = await Dio().post(url, data: body, options: Options(headers: headers));
//       return ProductModel.fromJson(response.data);
//     } on DioException catch (e) {
//       throw Exception('Failed to post data: ${e.message} with body: $body with status code: ${e.response?.statusCode}');
//     }
//   }
//
//   Future<ProductModel> put({required String url, required Map<String, dynamic> body, String? token}) async {
//     Map<String, String> headers = {};
//     if (token != null) {
//       headers['Authorization'] = 'Bearer $token';
//       headers['Content-Type'] = 'application/json'; // better than x-www-form-urlencoded
//     }
//     try {
//       Response response = await Dio().put(url, data: body, options: Options(headers: headers));
//
//       if (response.data == null || response.data is! Map<String, dynamic>) {
//         throw Exception("Unexpected API response: ${response.data}");
//       }
//       log('API Response: ${response.data}');
//       return ProductModel.fromJson(response.data);
//     } on DioException catch (e) {
//       throw Exception(
//         'Failed to update data: ${e.message}, body: $body, status: ${e.response?.statusCode}, response: ${e.response?.data}',
//       );
//     }
//   }
//
// }
