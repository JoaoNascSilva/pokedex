import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:pokedex_app/core/constants/image_constants.dart';
import 'package:pokedex_app/core/styles/colors_styles.dart';
import 'package:pokedex_app/pages/splash/presenter/splash_presenter.dart';
import 'package:pokedex_app/pages/splash/view/splash_view_impl.dart';

class SplashPage extends StatefulWidget {
  final SplashPresenter presenter;

  const SplashPage({super.key, required this.presenter});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends SplashViewImpl with TickerProviderStateMixin {
  double height = 0;
  late final AnimationController _animationController;
  final Tween<double> _turnsTween = Tween<double>(
    begin: 0,
    end: 1,
  );

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animatedLogo();
  }

  void _animatedLogo() async {
    await Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      _animationController.reset();
      _animationController.forward();
      setState(() {
        height = 80;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsStyles.backgroundSplashColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: RotationTransition(
                turns: _turnsTween.animate(_animationController),
                child: AnimatedContainer(
                  height: height,
                  duration: const Duration(seconds: 3),
                  curve: Curves.bounceIn,
                  child: Image.asset(ImageConstants.logo),
                ),
              ),
            ),
            SizedBox(
                    height: 80,
                    width: 80,
                    child: RotationTransition(
                      turns: _turnsTween.animate(_animationController),
                      child: Image.asset(
                        ImageConstants.pokebola,
                        fit: BoxFit.scaleDown,
                      ),
                    ))
                .animate(
                  onPlay: (controller) {
                    controller.repeat();
                  },
                )
                .moveY(
                  begin: -25,
                  end: 15,
                  curve: Curves.easeInOut,
                  duration: 1000.ms,
                )
                .then()
                .moveY(begin: 15, end: -25, curve: Curves.easeInOut),
            ElevatedButton.icon(
              onPressed: () {
                widget.presenter.checkLogin();
              },
              icon: const Icon(Icons.login),
              label: const Text('Acessar'),
            ),
          ],
        ),
      ),
    );
  }
}
