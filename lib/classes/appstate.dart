import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testing/models/albums.dart';

class AppState {
  int val = 0;
  void increment() => val++;
  void decrement() => val--;

  void reset() => val = 0;
}

class FetchData {
  Future<Album> fetchAlbum(http.Client client) async {
    var response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    if (response.statusCode == 200) {
      // we received the data successfully
      return Album.fromJson(jsonDecode(response.body));
    } else {
      print(response.statusCode);
      throw Exception('Failed to load album');
    }
  }
}
