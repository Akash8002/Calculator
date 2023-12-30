import 'package:flutter/material.dart';
import 'package:calculator/widgets/calci_buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalciButton(buttontext: "AC"),
                CalciButton(buttontext: "%"),
                CalciButton(buttontext: "÷"),
                CalciButton(buttontext: "+"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalciButton(buttontext: "7"),
                CalciButton(buttontext: "8"),
                CalciButton(buttontext: "9"),
                CalciButton(buttontext: "-"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalciButton(buttontext: "4"),
                CalciButton(buttontext: "5"),
                CalciButton(buttontext: "6"),
                CalciButton(buttontext: "x"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalciButton(buttontext: "1"),
                CalciButton(buttontext: "2"),
                CalciButton(buttontext: "3"),
                CalciButton(buttontext: "^"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalciButton(buttontext: "0"),
                CalciButton(buttontext: "."),
                Card(
                  child: SizedBox(
                    height: width * 0.21,
                    width: width * 0.21,
                    child: Center(
                      child: FaIcon(FontAwesomeIcons.deleteLeft),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    height: width * 0.21,
                    width: width * 0.21,
                    child: Center(
                      child: FaIcon(FontAwesomeIcons.equals),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
