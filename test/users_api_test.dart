import 'package:test/test.dart';
import 'package:arasaac_api/arasaac_api.dart';


/// tests for UsersApi
void main() {
  final instance = ArasaacApi().getUsersApi();

  group(UsersApi, () {
    // Obtain user profile
    //
    //Future<UserProfileResponse> getProfile() async
    test('test getProfile', () async {
      // TODO
    });

  });
}
