import '/widgets/home.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class SpScreen extends StatefulWidget {
  const SpScreen({super.key});

  @override
  State<SpScreen> createState() => _SpScreenState();
}

class _SpScreenState extends State<SpScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _navigateHome();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // Future.delayed(const Duration(seconds: 2), () {
    //   Navigator.of(context)
    //       .pushReplacement(MaterialPageRoute(builder: (_) => Home()));
    // });
  }

  _navigateHome() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: Image.asset(
            "assets/img/SplashScreen.jpg",
            height: 150,
            width: 300,
          ),
        ),
      ),
    );
  }
}
