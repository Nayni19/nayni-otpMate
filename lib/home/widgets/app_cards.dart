import 'package:flutter/material.dart';
import 'package:otp_app/home/widgets/pop_up_card.dart';
import 'package:otp_app/home/widgets/pop_up_item.dart';

class AppCards extends StatelessWidget {
  const AppCards({super.key, required this.appName, required this.appImage});
  final String appName;
  final String appImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => PopUpItem(
            tag: appName,
            child: PopUpCard(appName: appName),
            color: Colors.white,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.all(30),
          ),
        );
        // Navigator.of(context).push(
        //   HeroDialogRoute(builder: (context) {
        //     return
        //     PopUpItem(
        //       tag: appName,
        //       child: PopUpCard(appName: appName),
        //       color: Colors.white,
        //       elevation: 2,
        //       shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(12)),
        //       padding: EdgeInsets.all(20),
        //     );
          // }
          // ),
        // );
      },
      child: Hero(
        tag: appName,
        child: Material(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 5.0,
                    ),
                  ]),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      appImage,
                      height: 50,
                      fit: BoxFit.cover,
                      width: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    appName,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
