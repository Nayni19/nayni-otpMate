import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_app/home/model/app_model.dart';
import 'package:otp_app/home/widgets/app_cards.dart';

class Room extends StatelessWidget {
  const Room({super.key, required this.roomId});
  final String roomId;

  @override
  Widget build(BuildContext context) {
    List<AppModel> appsAvailable = [
      AppModel(appName: 'Hotstar', appImage: 'https://i.pinimg.com/originals/ed/ff/8d/edff8da69ba789e86279d377c0c85013.png'),
      AppModel(appName: 'Netflix', appImage: 'https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png'),
      AppModel(appName: 'Amazon Prime', appImage: 'https://i.pinimg.com/originals/ba/13/50/ba1350cf974cf389fe2a2489e004da98.jpg'),
      AppModel(appName: 'Zee5', appImage: 'https://upload.wikimedia.org/wikipedia/commons/5/5a/Zee5-official-logo.jpeg'),
      AppModel(appName: 'Voot', appImage: 'https://play-lh.googleusercontent.com/70qBcFj4OSFhN2rPIiXadUvtSRSvSy4AAVvgWkKS3_PeUEabtIKL8gsDKbvjhSBa4UI'),
      AppModel(appName: 'Alt Balaji', appImage: 'https://i0.wp.com/techchahiye.com/wp-content/uploads/2019/08/Alt-Balaji-has-crossed-20-Million-Paid-Subscribers.jpg?fit=1920%2C1080&ssl=1'),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(roomId),
        centerTitle: true,
        elevation: 2.0,
        shadowColor: Colors.grey[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You have access to these applications!',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 48, 25, 123),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Click on the application to view the otp',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color(0xff6e53c4),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: GridView.count(
                  scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 5 / 4,
              shrinkWrap: true,
              children: [
                for (int i = 0; i < appsAvailable.length; i++) ...[
                  AppCards(
                    appName: appsAvailable[i].appName,
                    appImage: appsAvailable[i].appImage,
                  ),
                ],
              ],
            ))
          ],
        ),
      ),
    );
  }
}
