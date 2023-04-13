import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeButton extends StatefulWidget {
  final String size;
  final Function(String) onPressed;
  final bool isSelected;

  const SizeButton(
      {Key? key,
      required this.size,
      required this.onPressed,
      required this.isSelected})
      : super(key: key);

  @override
  State<SizeButton> createState() => _SizeButtonState();
}

class _SizeButtonState extends State<SizeButton> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onPressed(widget.size);
      },
      child: CircleAvatar(
        backgroundColor: isSelected? const Color(0xff5390cd) : Colors.grey[300],
        child: Text(
          widget.size,
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
