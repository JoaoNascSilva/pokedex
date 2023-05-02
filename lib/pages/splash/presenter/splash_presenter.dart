import 'package:pokedex_app/core/mvp/pokedex_presenter.dart';

abstract class SplashPresenter extends PokedexPresenter {
  Future<void> checkLogin();
}
