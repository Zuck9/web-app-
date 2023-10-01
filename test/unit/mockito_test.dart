import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:testing/classes/appstate.dart';
import 'package:testing/models/albums.dart';

import 'mockito_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group("mokito testing", () {
    test("Returns Album if http call completes successfully", () async {
      final client = MockClient();
      final fetchdata = FetchData();
      when(client
              .get(Uri.parse("https://jsonplaceholder.typicode.com/albums/1")))
          .thenAnswer((realInvocation) async {
        return http.Response('{"userId": 1, "id": 2, "title": "mock"}', 200);
      });
      expect(await fetchdata.fetchAlbum(client), isA<Album>());
    });
    test("throws an exception if http call completes with an error", () {
      final client = MockClient();
      when(client
              .get(Uri.parse("https://jsonplaceholder.typicode.com/albums/1")))
          .thenAnswer((realInvocation) async {
        return http.Response('Not Found', 404);
      });
      expect(FetchData().fetchAlbum(client), throwsException);
    });
  });
}
