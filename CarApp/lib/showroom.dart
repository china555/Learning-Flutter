import 'package:flutter/material.dart';
import './constants.dart';
import './data.dart';
import 'package:google_fonts/google_fonts.dart';

class Showroom extends StatefulWidget {
  @override
  _ShowroomState createState() => _ShowroomState();
}

class _ShowroomState extends State<Showroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Car Shop',
          style: GoogleFonts.muli(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
          ),
        ],
      ),
    );
  }
}
