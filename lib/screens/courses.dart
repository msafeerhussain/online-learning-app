import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomCourses extends StatelessWidget {
  const BottomCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Courses",
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
