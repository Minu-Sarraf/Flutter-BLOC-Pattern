import 'dart:async';

import 'package:ui_tests/src/models/homescreen_model.dart';
import 'package:ui_tests/src/resources/network_call/homepage_api.dart';

class Repository {
  final moviesApiProvider = HomePageProvider();

  Future<HomePageModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}
