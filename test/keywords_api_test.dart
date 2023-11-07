import 'package:test/test.dart';
import 'package:arasaac_api/arasaac_api.dart';


/// tests for KeywordsApi
void main() {
  final instance = ArasaacApi().getKeywordsApi();

  group(KeywordsApi, () {
    // Obtain a list of keywords for pictograms for an specific language (es, en...)
    //
    //Future<KeywordsResponse> getAll(Locales language) async
    test('test getAll', () async {
      // TODO
    });

  });
}
