import 'package:test/test.dart';
import 'package:arasaac_api/arasaac_api.dart';


/// tests for PhrasesApi
void main() {
  final instance = ArasaacApi().getPhrasesApi();

  group(PhrasesApi, () {
    // Get a phase in natural language based on pictogram keywords. It tries to convert sentences like *I + to eat + hamburger + yesterday* to  *I ate a hamburger yesterday*
    //
    //Future<PhraseResponse> getFlex(String language, String phrase, { String tense, BuiltList<int> idPictograms }) async
    test('test getFlex', () async {
      // TODO
    });

    // Send a report when converting a sentence to natural language does not work as expected
    //
    //Future<PhraseResponse> postReport(String originalPhrase, String returnedPhrase, { String expectedPhrase }) async
    test('test postReport', () async {
      // TODO
    });

  });
}
