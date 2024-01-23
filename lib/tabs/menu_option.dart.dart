import 'package:flutter/material.dart';
import 'package:otp_app/tabs/create_room.dart';
import 'package:otp_app/tabs/join_room.dart';

class MenuOption extends StatelessWidget {
  const MenuOption({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: 'Join Room',
              ),
              Tab(
                text: 'Create Room',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            JoinRoomPage(),
            CreateRoom(),
          ],
        ),
      ),
    );
  }
}
