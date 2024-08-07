import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? buttonColor;
  final Color? colorText;

  const CustomFilledButton({
    super.key,
    this.onPressed,
    required this.text,
    this.buttonColor, 
    this.colorText,
  });

  @override
  Widget build(BuildContext context) {

    return FilledButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(buttonColor),
            ), 
             
        onPressed: onPressed,
        child: Text(
          
          text,
          style: TextStyle(color: colorText),
        ));
  }
}
