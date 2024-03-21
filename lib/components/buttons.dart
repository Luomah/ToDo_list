import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  buttons({
    super.key,
    required this.text,
    required this.onPressed,
});


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        color: Theme.of(context).primaryColorDark,
        child: Text(text),);
  }
}
