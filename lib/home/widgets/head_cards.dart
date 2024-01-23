import 'package:flutter/material.dart';

class HeadCard extends StatelessWidget {
  const HeadCard(
      {super.key,
      required this.title,
      required this.count,
      required this.icon});
  final String title;
  final String count;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              offset: const Offset(0, 0),
              blurRadius: 1,
              spreadRadius: 0.5,
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: const Color(0xfff3ecf9),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            icon,
            size: 30,
            color: Color(0xff6e53c4),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xff040017),
          ),
        ),
        Text(
          count,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w300,
            color: Color(0xff040017),
          ),
        ),
      ]),
    );
  }
}
