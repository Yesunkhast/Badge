import 'package:flutter/material.dart';

class ScrollBar extends StatelessWidget {
  const ScrollBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff17181c),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                onPressed: () {
                  print("Elevated button");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/img/littlestar.jpg",
                      fit: BoxFit.contain,
                    ),
                    Text(
                      "Түвшин ахих",
                      style: TextStyle(color: Colors.black, fontSize: 10.0),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffD0FF14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                onPressed: () {
                  print("Elevated button");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/img/lime.jpg",
                      fit: BoxFit.contain,
                    ),
                    Text(
                      "Данс шалгах",
                      style: TextStyle(color: Colors.black, fontSize: 10.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
