import '../../env_manager.dart';

Uri buildUrl(String unencodedPath, [Map<String, String> queryParameters]) {
  final _keyParams = queryParameters?.keys?.toList();
  var params = '';
  if ((_keyParams ?? []).isNotEmpty) {
    params += '?';
    for (var i = 0; i < _keyParams.length; i++) {
      final _element = _keyParams[i];
      params += '&$_element=${queryParameters[_element]}';
    }
  }
  final _url = 'https://463d-183-81-98-53.ap.ngrok.io/$unencodedPath$params'
      .replaceAll('//', '/')
      .replaceAll(':/', '://');
  return Uri.parse(_url);
}