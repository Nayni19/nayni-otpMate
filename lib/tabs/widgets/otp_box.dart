import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpBox extends StatelessWidget {
  const OtpBox({super.key,  this.value, this.isDisabled});
  final String? value;
  final bool? isDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: const Color(0xfff3ecf9),
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(206, 185, 184, 184),
            offset: Offset(1, 0.7),
            blurRadius: 3,
            spreadRadius: 0.5,
          )
        ],
      ),
      child: TextFormField(
        maxLength: 1,
        initialValue: value,
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        showCursor: false,
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        readOnly: isDisabled?? false,
        decoration: InputDecoration(
          counterText: "",
          counterStyle: GoogleFonts.poppins(
            fontSize: 0,
          ),
          // focusedBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
