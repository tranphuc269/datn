Uri buildUrl(String unencodedPath, [Map<String, String>? queryParameters]) {
  final _keyParams = queryParameters?.keys.toList();
  var params = '';
  if ((_keyParams ?? []).isNotEmpty) {
    params += '?';
    for (var i = 0; i < _keyParams!.length; i++) {
      final _element = _keyParams[i];
      params += '&$_element=${queryParameters![_element]}';
    }
  }
  final _url = 'https://5f18-42-119-189-44.ap.ngrok.io/$unencodedPath$params'
      .replaceAll('//', '/')
      .replaceAll(':/', '://');
  return Uri.parse(_url);
}
