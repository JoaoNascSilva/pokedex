import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:pokedex_app/pages/splash/presenter/splash_presenter.dart';
import 'package:pokedex_app/pages/splash/presenter/splash_presenter_impl.dart';
import 'package:pokedex_app/pages/splash/splash_page.dart';

class SplashRoute extends FlutterGetItPageRoute {
  const SplashRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<SplashPresenter>(
          (i) => SplashPresenterImpl(),
        ),
      ];

  @override
  WidgetBuilder get page => (context) => SplashPage(presenter: context.get());
}
