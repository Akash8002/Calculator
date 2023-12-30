import 'package:flutter/material.dart';

class CalciButton extends StatelessWidget {
  final String buttontext;

  const CalciButton({
    super.key,
    required this.buttontext,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Card(
      child: SizedBox(
        height: width * 0.21,
        width: width * 0.21,
        child: Center(child: Text(buttontext)),
      ),
    );
  }
}
