import 'package:test/test.dart';
import 'package:arasaac_api/arasaac_api.dart';


/// tests for PictogramsApi
void main() {
  final instance = ArasaacApi().getPictogramsApi();

  group(PictogramsApi, () {
    // Obtain best pictograms based on the searchText. The pictogram url can be generated based on pictogram id value and the desired resolution (300px, 500px or 2500px). There are some variations available for each pictogram using filename parameters (see below). You can see them in use and some more (available using API endpoint *GET /pictograms/{idPictogram}*) at https://arasaac.org/pictograms/en/2349  **Filename parameters** - *action* for verbal tense (*past*, *future*) - *hair* for hair color (brown *A65E26*, blonde *FDD700*, red *ED4120*, black *020100*, gray *EFEFEF*, darkGray *AAABAB*, darkBrown *6A2703*) - *skin* for skin color (white *F5E5DE*, black *A65C17*, assian *F4ECAD*, mulatto *E3AB72*, aztec *CF9D7C*) - *plural* - *nocolor*  **Examples** - https://static.arasaac.org/pictograms/2349/2349_2500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_300.png - https://static.arasaac.org/pictograms/2349/2349_nocolor_action-past_500.png - https://static.arasaac.org/pictograms/2349/2349_plural_nocolor_500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_hair-FDD700_500.png - https://static.arasaac.org/pictograms/2349/2349_action-future_hair-020100_skin-A65C17_500.png
    //
    //Future<BuiltList<Pictogram>> bestSearchPictograms(Locales language, String searchText) async
    test('test bestSearchPictograms', () async {
      // TODO
    });

    // Obtain all pictograms data. The pictogram image url is composed based on the id field and the required resolution (300px, 500px or 2500px). For example, for pictogram with id 2350 and resolution 2500px would be https://static.arasaac.org/pictograms/2340/2340_2500.png
    //
    //Future getAllPictograms(Locales language) async
    test('test getAllPictograms', () async {
      // TODO
    });

    // Obtain last modified or publish pictograms.
    //
    //Future<BuiltList<Pictogram>> getLastPictograms(Locales language, int numItems) async
    test('test getLastPictograms', () async {
      // TODO
    });

    // Obtain pictograms created or updated in the last days.
    //
    //Future<BuiltList<Pictogram>> getNewPictograms(Locales language, int days) async
    test('test getNewPictograms', () async {
      // TODO
    });

    // Obtain pictogram data based on its key (idPictogram). The pictogram image url can be generated based on pictogram key value and the desired resolution (300px, 500px or 2500px). For example https://static.arasaac.org/pictograms/2340/2340_2500.png for pictogram with key 2350 and resolution 2500px.
    //
    //Future getPictogramById(Locales language, int idPictogram) async
    test('test getPictogramById', () async {
      // TODO
    });

    // Obtain pictogram data based on its key (idPictogram) for several languages. The pictogram image url can be generated based on pictogram key value and the desired resolution (300px, 500px or 2500px). For example https://static.arasaac.org/pictograms/2340/2340_2500.png for pictogram with key 2350 and resolution 2500px.
    //
    //Future getPictogramByIdWithLocales(int idPictogram, BuiltList<Locales> languages) async
    test('test getPictogramByIdWithLocales', () async {
      // TODO
    });

    // Obtain pictogram image file in png format based on its key. Pictogram can be customized with color, resolution, plural...
    //
    //Future<Uint8List> getPictogramFileById(int idPictogram, { bool plural, bool color, String backgroundColor, String action, int resolution, String skin, String hair, bool url, bool download, String identifier, String identifierPosition }) async
    test('test getPictogramFileById', () async {
      // TODO
    });

    // Obtain a list of pictograms based on the Wordnet identifier (synset). Wordnet version must be provided.
    //
    //Future<BuiltList<Pictogram>> getPictogramsBySynset(Locales language, String wordnet, String synset) async
    test('test getPictogramsBySynset', () async {
      // TODO
    });

    // Obtain a list of pictograms based on the searchText. The pictogram url can be generated based on pictogram id value and the desired resolution (300px, 500px or 2500px). There are some variations available for each pictogram using filename parameters (see below). You can see them in use and some more (available using API endpoint *GET /pictograms/{idPictogram}*) at https://arasaac.org/pictograms/en/2349  **Filename parameters** - *action* for verbal tense (*past*, *future*) - *hair* for hair color (brown *A65E26*, blonde *FDD700*, red *ED4120*, black *020100*, gray *EFEFEF*, darkGray *AAABAB*, darkBrown *6A2703*) - *skin* for skin color (white *F5E5DE*, black *A65C17*, assian *F4ECAD*, mulatto *E3AB72*, aztec *CF9D7C*) - *plural* - *nocolor*  **Examples** - https://static.arasaac.org/pictograms/2349/2349_2500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_300.png - https://static.arasaac.org/pictograms/2349/2349_nocolor_action-past_500.png - https://static.arasaac.org/pictograms/2349/2349_plural_nocolor_500.png - https://static.arasaac.org/pictograms/2349/2349_action-past_hair-FDD700_500.png - https://static.arasaac.org/pictograms/2349/2349_action-future_hair-020100_skin-A65C17_500.png
    //
    //Future<BuiltList<Pictogram>> searchPictograms(Locales language, String searchText) async
    test('test searchPictograms', () async {
      // TODO
    });

  });
}
