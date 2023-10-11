import 'package:flutter/material.dart';

class NextButton extends StatefulWidget {
  final VoidCallback ontap;
  const NextButton({super.key,required this.ontap});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      right: 26,
      child: GestureDetector(
        onTap: widget.ontap,
        child: Container(
          width: 25,
          height: 25,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(-0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFFD5EBCB), Color(0xFF9CED6B), Color(0xFF579133)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 21,
                offset: Offset(0, 20),
                spreadRadius: 0,
              )
            ],
          ),
          child: const Center(
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
