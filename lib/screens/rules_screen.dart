import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/screens/main_screen.dart';
import 'package:rock_paper_scissors/utils/constants.dart' as utils;

class RulesScreen extends StatefulWidget {
  const RulesScreen({Key? key}) : super(key: key);

  @override
  State<RulesScreen> createState() => _RulesScreenState();
}

class _RulesScreenState extends State<RulesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: utils.colorPrimary,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 34.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(25.0),
              child: const Text(
                'NORMAS',
                style: TextStyle(
                  color: utils.colorSecundary,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/rock_btn.png',
                          width: 60,
                        ),
                        const Text(
                          ' -> ',
                          style: TextStyle(
                            color: utils.colorSecundary,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                          ),
                        ),
                        Image.asset(
                          'assets/scisor_btn.png',
                          width: 60,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Piedra mata tijeras',
                      style: TextStyle(
                        color: utils.colorSecundary,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35.0),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/paper_btn.png',
                          width: 60,
                        ),
                        const Text(
                          ' -> ',
                          style: TextStyle(
                            color: utils.colorSecundary,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                          ),
                        ),
                        Image.asset(
                          'assets/rock_btn.png',
                          width: 60,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Papel mata piedra',
                      style: TextStyle(
                        color: utils.colorSecundary,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35.0),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/scisor_btn.png',
                          width: 60,
                        ),
                        const Text(
                          ' -> ',
                          style: TextStyle(
                            color: utils.colorSecundary,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                          ),
                        ),
                        Image.asset(
                          'assets/paper_btn.png',
                          width: 60,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Pijeras mata papel',
                      style: TextStyle(
                        color: utils.colorSecundary,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15.0),
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
                padding: const EdgeInsets.all(16.0),
                shape: const StadiumBorder(
                  side: BorderSide(
                    color: utils.colorSecundary,
                    width: 5.0,
                  ),
                ),
                child: const Text(
                  'VOLVER',
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
