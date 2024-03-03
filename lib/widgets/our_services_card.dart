import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurServicesCard extends StatelessWidget {
  BuildContext context;
  String image;
  String title;
  OurServicesCard({
    super.key,
    required this.context,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.width >= 1300 ? 488 : 182,
          width: MediaQuery.of(context).size.width >= 1300 ? 410 : 161,
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Text(
              title,
              style: GoogleFonts.muktaMalar(
                fontSize: MediaQuery.of(context).size.width >= 1300 ? 35 : 11,
                fontWeight: FontWeight.bold,
              ),
            )),
      ],
    );
  }
}
