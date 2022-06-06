import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabbarTop extends StatelessWidget implements PreferredSizeWidget {
  const TabbarTop({Key? key, this.title = ""}) : super(key: key);
  final String title;

  @override
  Size get preferredSize => Size.fromHeight(36.0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(36.0), // here the desired height
      child: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
// Within the SecondScreen Widget
            onPressed: () {
              Navigator.pop(context);
            },

          icon: Image.asset("../assets/icon/iconBack.png"),
        ),
        backgroundColor: Color(0xFF2C84D4),
      ),
    );
  }
}
