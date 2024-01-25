import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_app/tabs/widgets/otp_field.dart';

class JoinRoomPage extends StatelessWidget {
  const JoinRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          SvgPicture.asset(
            'images/join.svg',
            height: 300,
            width: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Please enter the room code to join the room',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 48, 25, 123),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
         OtpField(),
         
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff6e53c4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 74, 57, 133),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
