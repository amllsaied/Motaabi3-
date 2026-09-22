// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:motaabe/core/network/api_constants.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';


// class DioFactory {


//  static late Dio _dio;

//   static getDio(){
//     Duration duration = Duration(seconds: 30);
//     _dio = Dio(BaseOptions(
//       baseUrl: ApiConstants.baseUrl,
//       receiveTimeout:duration,
//       connectTimeout: duration,
//       sendTimeout: duration,
//       headers: {
//         'Accept':'application/json',
//         'Content-Type':'application/json',

//       }
//     ));


//     _dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (o,r){
//         o.headers['Authorization'] = 'Bearer $token';
//       },

//     ));

//     _dio.interceptors.add(PrettyDioLogger(
//         requestHeader: true,
//         requestBody: true,
//         responseBody: true,
//         responseHeader: false,
//         error: true,
//         compact: true,
//         maxWidth: 90,
//         enabled: kDebugMode,
//     )
//     );

//     return _dio;
//   }





// }