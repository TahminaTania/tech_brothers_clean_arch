import 'package:learn_clean_achitecture/data/response/status.dart';

class ApiResponses<T> {
  Status? status;
  T? data;
  String? message;
  ApiResponses(this.data, this.message, this.status);
  ApiResponses.loading() : status = Status.LOADDING;
  ApiResponses.loadded() : status = Status.LOADDED;
  ApiResponses.error() : status = Status.ERROR;

  @override
  String toString() {
    return "Status:$status \n Message:$message \n Data:$data";
  }
}
