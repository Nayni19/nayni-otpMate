import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_app/tabs/widgets/otp_box.dart';

class CreateRoom extends StatelessWidget {
  const CreateRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Let others join your room',
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 48, 25, 123),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset('images/create.jpg'),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OtpBox(
                isDisabled: true,
                value: '1',
              ),
              OtpBox(
                isDisabled: true,
                value: '2',
              ),
              OtpBox(
                isDisabled: true,
                value: '3',
              ),
              OtpBox(
                isDisabled: true,
                value: '4',
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff6e53c4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: const Text(
                  'Create room',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
