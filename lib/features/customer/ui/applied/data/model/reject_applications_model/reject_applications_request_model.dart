import 'package:dio/dio.dart';

class RejectApplicationsRequestModel {
  final String status;

  RejectApplicationsRequestModel({
    required this.status,
  });

  Map<String, dynamic> toJson() {
    return {
      'status': status,
    };
  }

  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'status': status,
    });
  }
}
