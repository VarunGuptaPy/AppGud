import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? style;
  final Gradient? gradient;
  final double thickness;

  const MyOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.style,
    this.gradient,
    this.thickness = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ensure that the margin is greater than the thickness of the border
    final double margin = thickness + 1; // Adjust this value if necessary

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius:
            BorderRadius.circular(60), // Set border radius for gradient
      ),
      child: Container(
        margin: EdgeInsets.all(margin), // Adjust margin to avoid clipping
        decoration: BoxDecoration(
          color: Color.fromRGBO(
              26, 28, 29, 1), // Make the inner container transparent
          borderRadius:
              BorderRadius.circular(60 - margin), // Adjust the border radius
        ),
        child: OutlinedButton(
          onPressed: onPressed,
          style: style?.copyWith(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    60 - margin), // Adjust the border radius
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
                Colors.transparent), // Set background color to transparent
          ),
          child: child,
        ),
      ),
    );
  }
}
