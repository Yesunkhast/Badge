import 'package:demo/widgets/Home.dart';
import 'package:flutter/material.dart';

class UserBar extends StatelessWidget implements PreferredSizeWidget {
  // ignore: prefer_typing_uninitialized_variables
  final ner;

  const UserBar({super.key, required this.ner});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      backgroundColor: const Color(0xff17181c),
      title: Text(
        ner,
        style: const TextStyle(color: Colors.white, fontSize: 18.0),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: SizedBox(
            width: 130,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff17181c),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Home();
                }));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
