import 'package:http/http.dart' as http;

class HttpHelper {
  // https://httpbin.org/cache/{value}
  final String authority = 'httpbin.org';
  final String path = 'response-headers';

  Future<String> getCache(String freeform) async {
    Map<String, dynamic> parameters = {'freeform': freeform};
    Uri uri = Uri.https(authority, path, parameters);
    http.Response result = await http.get(uri);

    return result.body;
  }
}
