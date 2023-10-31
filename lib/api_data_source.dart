import 'BaseNetwork.dart';


class ApiDataSource {
  static ApiDataSource instance = ApiDataSource();

  Future<Map<String, dynamic>> loadUsers() {
    return BaseNetwork.get("users");
  }
  Future<Map<String, dynamic>> loadDetailUser(int idDiterima){
    String id = idDiterima.toString();
    return BaseNetwork.get("users/$id");
  }
}