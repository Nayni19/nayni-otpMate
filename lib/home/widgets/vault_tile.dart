import 'package:flutter/material.dart';

class VaultTile extends StatelessWidget {
  const VaultTile({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                // Image.network('https://cdn-icons-png.flaticon.com/256/32/32384.png', width: 50,)
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color:const Color(0xfff3ecf9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.person,
                    color: const Color(0xff6e53c4),
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Room Id : ', style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),),
                Text('780013'),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: const Color(0xff6e53c4),
                  size: 20,
                ),
              ],
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
