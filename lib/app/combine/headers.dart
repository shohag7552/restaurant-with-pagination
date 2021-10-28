class CustomHeaders {
  static Future<Map<String, String>> getHeader() async {
    var header = {
      //"Accept": "application/json",
      "zoneId": "1",
    };
    print("headers is 1");
    return header;
  }
}
