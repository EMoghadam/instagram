import 'package:flutter/material.dart';

import 'Screens/home_Screen.dart';
import 'Screens/search_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      textTheme: TextTheme(
          headline4: TextStyle(
              fontSize: 18,
              fontFamily: 'GB',
              fontWeight: FontWeight.w700,
              color: Colors.white)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: TextStyle(
                fontSize: 18, fontFamily: 'GB', fontWeight: FontWeight.w700)),
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: Search_Screen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    goToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xff1C1F2E),
            image: DecorationImage(
              repeat: ImageRepeat.repeat,
              image: AssetImage(
                "Images/pattern1.png",
              ),
            ),
          ),
          child: const Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: Center(
                      child: Image(
                    image: AssetImage('Images/logo_splash.png'),
                  )),
                ),
                Positioned(
                  bottom: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'MoboDeveloper',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  goToNextPage() async {
    await Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Home_Screen()));
    });
  }
}
