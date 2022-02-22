import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/utils/constants.dart' as utils;
import 'package:rock_paper_scissors/utils/game.dart';

class ScoreText extends StatelessWidget {
  const ScoreText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: utils.colorSecundary,
          width: 8.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'PUNTAJE',
            style: TextStyle(
              color: utils.colorSecundary,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${Game.score}',
            style: const TextStyle(
              color: utils.colorSecundary,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
