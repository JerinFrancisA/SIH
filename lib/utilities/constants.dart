import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Font :  quicksand
// Red Color : Color(0xFFC7141D)
// Yellow Color : Color(0xFFFFD700)

// Fonts
// AppBar Text
var kAppBarTextStyle = GoogleFonts.quicksand(
  textStyle: TextStyle(
    fontSize: 18.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  ),
);

// Canteen Name Text Style
var kCanteenNameTextStyle = GoogleFonts.quicksand(
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.15,
  ),
);

// Food Item Price Text Style
var kFoodItemPriceTextStyle = GoogleFonts.quicksand(
  textStyle: TextStyle(
    color: Colors.black,
    fontSize: 22.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
);

// Colors
// AppBar
const kAppBarColor = Color(0xFF1B262C);

// Button
const kButtonColor = Color(0xFF3282B8);

// Background
const kbackGroundColor = Color(0xFFFFFFFF);

// Primary1
const kPrimaryColor1 = Color(0xFF1B262C);

// Primary2
const kPrimaryColor2 = Color(0xFF0F4C75);

// FoodItem Boxx Border Color
const kFoodItemBoxBorderColor = Color(0xFFDDDDDD);

// Cursor while entering text
const kCursorColor = Colors.black;

// Server address
const SERVER_IP = 'https://ritcb-master.herokuapp.com';
