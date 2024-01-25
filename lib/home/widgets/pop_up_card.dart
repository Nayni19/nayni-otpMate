import 'package:flutter/material.dart';
import 'package:otp_app/tabs/widgets/otp_box.dart';

class PopUpCard extends StatelessWidget {
  const PopUpCard({super.key, required this.appName});
  final String appName;

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'OTP for $appName',
                textAlign: TextAlign.left,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 48, 25, 123),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpBox(
                  isDisabled: true,
                  value: '1',
                ),
                 OtpBox(
                  isDisabled: true,
                  value: '6',
                ),
                 OtpBox(
                  isDisabled: true,
                  value: '3',
                ),
                 OtpBox(
                  isDisabled: true,
                  value: '9',
                ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Enter this otp in the $appName app to verify your mobile number',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff6e53c4),
                ),
              ),
            ],
          ),
        );
  }
}