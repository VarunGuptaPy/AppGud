import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetInTouchInput extends StatefulWidget {
  String label;
  TextEditingController textEditingController;
  String hintText;

  GetInTouchInput(
      {super.key,
      required this.label,
      required this.textEditingController,
      required this.hintText});

  @override
  State<GetInTouchInput> createState() => _GetInTouchInputState();
}

class _GetInTouchInputState extends State<GetInTouchInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width >= 1300
          ? 250
          : MediaQuery.of(context).size.width * 0.30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: GoogleFonts.muktaMalar(
                fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: widget.textEditingController,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
