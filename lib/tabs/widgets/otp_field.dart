import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpField extends StatefulWidget {
  const OtpField({super.key});

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  late OtpFieldController otpController;
  @override
  void initState() {
     otpController = OtpFieldController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  OTPTextField(
          length: 4,
          controller: otpController,
          keyboardType: TextInputType.number,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 60,
          style: GoogleFonts.poppins(
            fontSize: 18,
          ),
          contentPadding: const EdgeInsets.all(18),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          outlineBorderRadius: 5,
          fieldStyle: FieldStyle.box,
          otpFieldStyle: OtpFieldStyle(
            backgroundColor: const Color(0xfff3ecf9),
            borderColor: Colors.transparent,
            enabledBorderColor: Colors.transparent,
            errorBorderColor: const Color.fromARGB(255, 111, 30, 24),
            focusBorderColor: const Color.fromARGB(255, 48, 25, 123),

          ),
          onCompleted: (pin) {
            print("Completed: " + pin);
          },
          onChanged: (pin) {
              print("Changed: " + pin);
            },
        );
  }
}