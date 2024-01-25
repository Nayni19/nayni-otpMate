import 'package:flutter/material.dart';
import 'package:otp_app/home/room.dart';
import 'package:otp_app/home/widgets/app_divider.dart';
import 'package:otp_app/home/widgets/list_tab.dart';
import 'package:otp_app/home/widgets/vault_tile.dart';

class Vault extends StatefulWidget {
  const Vault({super.key});

  @override
  State<Vault> createState() => _VaultState();
}

class _VaultState extends State<Vault> {
  String selectedTab = 'All';
  List rooms = ['1234','1083','0474','4673','7485'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.grey.shade50,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My Vault',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff040017),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ListTab(
                    label: 'All',
                    isSelected: selectedTab == 'All',
                    onTap: () => setState(() => selectedTab = 'All'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ListTab(
                    label: 'Created by me',
                    isSelected: selectedTab == 'Created by me',
                    onTap: () => setState(() => selectedTab = 'Created by me'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ListTab(
                    label: 'Shared',
                    isSelected: selectedTab == 'Shared',
                    onTap: () => setState(() => selectedTab = 'Shared'),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
              child: Column(
            children: [
              for (int i = 0; i < rooms.length; i++) ...[
                VaultTile(
                  roomId: rooms[i],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Room(roomId: rooms[i]),
                      ),
                    );
                  },
                ),
                const AppDivider(),
              ],
            ],
          )),
        )
      ],
    );
  }
}
