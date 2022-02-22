import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/screens/main_screen.dart';
import 'package:rock_paper_scissors/screens/rules_screen.dart';
import 'package:rock_paper_scissors/utils/constants.dart' as utils;
import 'package:rock_paper_scissors/utils/game.dart';
import 'package:rock_paper_scissors/widgets/game_button.dart';
import 'package:rock_paper_scissors/widgets/score_text.dart';

// ignore: must_be_immutable
class GameScreen extends StatefulWidget {
  GameScreen(this.gameChoice, {Key? key}) : super(key: key);
  Choice gameChoice;

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    double btnWidth = MediaQuery.of(context).size.width / 2 - 40;
    String? robotChoice = Game.randomChoice();
    String robotChoicePath = '';
    switch (robotChoice) {
      case 'Piedra':
        robotChoicePath = 'assets/rock_btn.png';
        break;
      case 'Papel':
        robotChoicePath = 'assets/paper_btn.png';
        break;
      case 'Tijeras':
        robotChoicePath = 'assets/scisor_btn.png';
        break;
      default:
    }

    String? playerChoice;
    switch (widget.gameChoice.type) {
      case 'Piedra':
        playerChoice = 'assets/rock_btn.png';
        break;
      case 'Papel':
        playerChoice = 'assets/paper_btn.png';
        break;
      case 'Tijeras':
        playerChoice = 'assets/scisor_btn.png';
        break;
      default:
    }

    if (Choice.gameRule[widget.gameChoice.type]![robotChoice] == 'GANAS') {
      setState(() {
        Game.score++;
      });
    }

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
              height: MediaQuery.of(context).size.height / 3,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'YO',
                          style: TextStyle(
                            color: utils.colorSecundary,
                            fontSize: 28.0,
                            fontFamily: utils.fontFamilyBlack,
                          ),
                        ),
                        Hero(
                          tag: '${widget.gameChoice.type}',
                          child: gameButton(null, playerChoice!, btnWidth),
                        ),
                      ],
                    ),
                    const Text(
                      'VS',
                      style: TextStyle(
                        color: utils.colorSecundary,
                        fontSize: 28.0,
                        fontFamily: utils.fontFamilyBlack,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          'BOT',
                          style: TextStyle(
                            color: utils.colorSecundary,
                            fontSize: 28.0,
                            fontFamily: utils.fontFamilyBlack,
                          ),
                        ),
                        gameButton(null, robotChoicePath, btnWidth),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Text(
              '${Choice.gameRule[widget.gameChoice.type]![robotChoice]}',
              style: const TextStyle(
                color: utils.colorSecundary,
                fontSize: 45.0,
                fontFamily: utils.fontFamilyBlack,
                letterSpacing: 3.0,
              ),
            ),
            const SizedBox(height: 1.0),
            SizedBox(
              width: double.infinity,
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
                fillColor: utils.colorSecundary,
                padding: const EdgeInsets.all(16.0),
                shape: const StadiumBorder(
                  side: BorderSide(
                    color: utils.colorSecundary,
                    width: 5.0,
                  ),
                ),
                child: const Text(
                  'JUGAR DE NUEVO',
                  style: TextStyle(
                      color: utils.colorPrimary,
                      fontSize: 24.0,
                      fontFamily: utils.fontFamilyBold),
                ),
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
