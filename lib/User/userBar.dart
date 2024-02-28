import 'package:demo/widgets/home.dart';
import 'package:flutter/material.dart';

class UserBar extends StatelessWidget implements PreferredSizeWidget {
  const UserBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      backgroundColor: Color(0xff17181c),
      title: const Text(
        'Хэрэглэгч',
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      ),
      actions: [
        Container(
          child: SizedBox(
            width: 130,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff17181c),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              onPressed: () {
                // print("Elevated button");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Image.asset(
                  //   "assets/img/littlestar.jpg",
                  //   fit: BoxFit.contain,
                  // ),
                  Icon(Icons.money_off_rounded,
                      color: Color.fromARGB(255, 255, 227, 16)),
                  Text(
                    "5'000 Нэгж",
                    style: TextStyle(color: Colors.white, fontSize: 10.0),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
