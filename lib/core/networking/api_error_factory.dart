import 'package:week3/core/networking/api_error_model.dart';
import 'package:week3/core/networking/local_status_codes.dart';

class ApiErrorFactory {
  static ApiErrorModel get defaultError => ApiErrorModel(
    message: "Something went wrong",
    statusCode: LocalStatusCodes.defaultError,
  );
}
