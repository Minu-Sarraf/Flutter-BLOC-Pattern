import 'package:ui_tests/src/models/homescreen_model.dart';

import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';


class MoviesBloc {
  final _repository = Repository();
  final _moviesFetcher = PublishSubject<HomePageModel>();

  Observable<HomePageModel> get allMovies => _moviesFetcher.stream;

  fetchAllMovies() async {
    HomePageModel itemModel = await _repository.fetchAllMovies();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose() {
    _moviesFetcher.close();
  }
}

final bloc = MoviesBloc();