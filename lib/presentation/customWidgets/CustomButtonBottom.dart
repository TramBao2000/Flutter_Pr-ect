import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonBottom extends StatelessWidget {
  final String textTitle;
  final Function method;

  const CustomButtonBottom({
    Key? key,
    required this.textTitle,
    required this.method,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Row(
              children: [
                Text(
                  textTitle,
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              primary: Color(0xFF2C84D4),
            ),
            onPressed: () => method(context),
          ),
        ],
      ),
    );
  }
}
