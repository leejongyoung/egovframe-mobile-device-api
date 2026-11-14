import '../lib/config/app_config.dart';

// dart run test/app_config_test.dart
// dart run -DAPI_BASE_URL=http://example.test:9700 test/app_config_test.dart
void main() {
  const expected = String.fromEnvironment('API_BASE_URL',
      defaultValue: 'http://10.0.2.2:9700');
  if (AppConfig.baseUrl != expected ||
      AppConfig.getMediaUrl('/x.do') != '$expected/mda/x.do') {
    throw StateError('API_BASE_URL not applied to baseUrl and media URL');
  }
  print('PASS: baseUrl and media URL follow API_BASE_URL');
}
