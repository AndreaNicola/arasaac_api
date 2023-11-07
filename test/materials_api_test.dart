import 'package:test/test.dart';
import 'package:arasaac_api/arasaac_api.dart';


/// tests for MaterialsApi
void main() {
  final instance = ArasaacApi().getMaterialsApi();

  group(MaterialsApi, () {
    // Obtain last modified or published materials.
    //
    //Future<BuiltList<Material>> getLastMaterials(int numItems) async
    test('test getLastMaterials', () async {
      // TODO
    });

    // Obtain a material based on its key.
    //
    //Future<GetMaterialResponse> getMaterialById(int id) async
    test('test getMaterialById', () async {
      // TODO
    });

    // Obtain materials published in the last number of days.
    //
    //Future<BuiltList<Material>> getNewMaterials(int days) async
    test('test getNewMaterials', () async {
      // TODO
    });

    // Obtain a list of materials based on the search text parameter. It will search in the title and description fields. Language is used for search optimization.
    //
    //Future<BuiltList<Material>> searchMaterials(Locales language, String searchText) async
    test('test searchMaterials', () async {
      // TODO
    });

  });
}
