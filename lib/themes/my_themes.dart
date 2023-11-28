import 'package:digisat_app/themes/my_colors.dart';
import 'package:digisat_app/themes/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData themeData() => ThemeData(
        useMaterial3: true,
        unselectedWidgetColor: violet.shade400,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.interTextTheme(),
        

        
        //outline button theme. can be used to change the default properties of outline button
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: violet.shade200)),
          ),
        ),
        hintColor: MyColors.mainBlack.withOpacity(0.5),
        //Theme for input fields like text field, text area etc.can be used to change the default properties of input fields
        inputDecorationTheme: InputDecorationTheme(
          counterStyle: TextStyle(
            color: MyColors.mainBlack.withOpacity(0.5),
            fontSize: 16,
            height: 1.5,
            fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
            fontWeight: FontWeight.w500,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          hintStyle: TextStyle(
            color: MyColors.mainBlack.withOpacity(0.5),
            fontSize: 16,
            height: 1.5,
            fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
            fontWeight: FontWeight.w500,
          ),

          //When the input field is enabled
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: violet[100]!, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          // When the input field is focused
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: MyColors.primary, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          // border for input fields.
          border: OutlineInputBorder(
            borderSide: BorderSide(color: violet[100]!, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        //Elevated Button theme. can be used to change the default properties of Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: MyColors.mainWhite)),
                foregroundColor:
                    MaterialStateProperty.all<Color>(MyColors.mainWhite),
                backgroundColor:
                    MaterialStateProperty.all<Color>(MyColors.primary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))))),

        //Theme for App bar
        appBarTheme: AppBarTheme(
            surfaceTintColor: MyColors.mainWhite,
            shadowColor: violet[400]!,
            iconTheme: const IconThemeData(color: Colors.black),
            color: Colors.white,
            titleTextStyle: const TextStyle(
                color: MyColors.mainBlack,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 1.4)),
      );
}
