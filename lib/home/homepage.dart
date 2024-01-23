import 'package:flutter/material.dart';
import 'package:otp_app/home/header.dart';
import 'package:otp_app/home/vault.dart';
import 'package:otp_app/tabs/menu_option.dart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        HomePageHeader(),
        Expanded(
          child: Vault(),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const MenuOption(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
