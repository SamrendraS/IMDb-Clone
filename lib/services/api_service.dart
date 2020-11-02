import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:fmdb/models/trending_movie.dart';

abstract class IAPIService {
  Future<List<TrendingMovie>> fetchTrendingMovies();
  Future<List<TrendingMovie>> fetchDiscoverMovies();
}

class APIService implements IAPIService {
  static const baseUrl = "https://api.themoviedb.org/3";
  final String _apiKey = "e8cb7d934be72ae573bf9d7f633a2726";

  Future<List<TrendingMovie>> fetchTrendingMovies() async {
    final response =
        await http.get('$baseUrl/trending/movie/day?api_key=$_apiKey');
    // print(response.body);
    if (response.statusCode == 200) {
      final parsed =
          json.decode(response.body)['results'].cast<Map<String, dynamic>>();
      return parsed
          .map<TrendingMovie>((json) => TrendingMovie.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load featured movies');
    }
  }

  Future<List<TrendingMovie>> fetchDiscoverMovies() async {
    final response = await http.get('$baseUrl/movie/upcoming?api_key=$_apiKey');
    // print(response.body);
    if (response.statusCode == 200) {
      final parsed =
          json.decode(response.body)['results'].cast<Map<String, dynamic>>();
      return parsed
          .map<TrendingMovie>((json) => TrendingMovie.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load discover movies');
    }
  }
}
