import 'package:flutter/material.dart';
import 'package:otp_app/home/widgets/head_cards.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Color(0xfff3ecf9),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              width: 100,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: const Color(0xff6e53c4),
                  width: 0.3,
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xff2F004F),
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '780013',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff6e53c4),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: const Color(0xffeae4ee),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0, 0),
                    blurRadius: 1,
                    spreadRadius: 0.5,
                  )
                ],
              ),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Color(0xffc1bdc3),
                  ),
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xff040017),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Your details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xff040017),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadCard(
                  title: 'Passwords',
                  count: '10',
                  icon: Icons.password,
                ),
                HeadCard(
                  title: 'Rooms',
                  count: '6',
                  icon: Icons.home,
                ),
                HeadCard(
                  title: 'Access',
                  count: '20',
                  icon: Icons.security,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
