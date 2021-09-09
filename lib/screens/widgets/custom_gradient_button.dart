import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: FittedBox(
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(
            vertical: Utilities.padding / 1.5,
            horizontal: Utilities.padding * 2,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Utilities.borderRadious,
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Theme.of(context).accentColor,
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor,
              ],
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
