import 'package:ddb_technology/globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProcessWidget extends StatelessWidget {
  int? no;
  String? image;
  String? title;
  String? description;
  bool? right;
  ProcessWidget({
    super.key,
    required this.no,
    required this.image,
    required this.title,
    required this.description,
    this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          right == null ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "0$no",
              style: GoogleFonts.poppins(
                fontSize: 46,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      primaryColor,
                      secondaryColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
              child: Center(
                child: Image.asset(
                  image!,
                  height: 80,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width > 356
                ? 350
                : MediaQuery.of(context).size.width * 0.9,
          ),
          child: Text(
            title!,
            softWrap: true,
            textAlign: TextAlign.start,
            style: GoogleFonts.muktaMalar(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width > 356
                  ? 350
                  : MediaQuery.of(context).size.width * 0.9),
          child: Text(
            description!,
            softWrap: true,
            textAlign: right != null ? TextAlign.right : TextAlign.left,
            style: GoogleFonts.muktaMalar(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
