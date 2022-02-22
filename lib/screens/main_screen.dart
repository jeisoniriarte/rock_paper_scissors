import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/screens/game_screen.dart';
import 'package:rock_paper_scissors/screens/rules_screen.dart';
import 'package:rock_paper_scissors/utils/constants.dart' as utils;
import 'package:rock_paper_scissors/utils/game.dart';
import 'package:rock_paper_scissors/widgets/game_button.dart';
import 'package:rock_paper_scissors/widgets/score_text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double btnWidth = MediaQuery.of(context).size.width / 2 - 40;

    return Scaffold(
      backgroundColor: utils.colorPrimary,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 34.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ScoreText(),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: MediaQuery.of(context).size.width / 2 -
                          btnWidth / 2 -
                          20,
                      child: Hero(
                        tag: 'Papel',
                        child: gameButton(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GameScreen(
                                  Choice('Papel'),
                                ),
                              ),
                            );
                          },
                          'assets/paper_btn.png',
                          btnWidth,
                        ),
                      ),
                    ),
                    Positioned(
                      top: btnWidth,
                      left:
                          MediaQuery.of(context).size.width / 2 - btnWidth - 40,
                      child: Hero(
                        tag: 'Piedra',
                        child: gameButton(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GameScreen(
                                  Choice('Piedra'),
                                ),
                              ),
                            );
                          },
                          'assets/rock_btn.png',
                          btnWidth,
                        ),
                      ),
                    ),
                    Positioned(
                      top: btnWidth,
                      right:
                          MediaQuery.of(context).size.width / 2 - btnWidth - 40,
                      child: Hero(
                        tag: 'Tijeras',
                        child: gameButton(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GameScreen(
                                  Choice('Tijeras'),
                                ),
                              ),
                            );
                          },
                          'assets/scisor_btn.png',
                          btnWidth,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'ELIJE',
              style: TextStyle(
                color: utils.colorSecundary,
                fontSize: 40.0,
                fontFamily: utils.fontFamilyBlack,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RulesScreen(),
                    ),
                  );
                },
                padding: const EdgeInsets.all(16.0),
                shape: const StadiumBorder(
                  side: BorderSide(
                    color: utils.colorSecundary,
                    width: 5.0,
                  ),
                ),
                child: const Text(
                  'NORMAS',
                  style: TextStyle(
                    color: utils.colorSecundary,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
