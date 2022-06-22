import 'package:flutter/material.dart';
import 'package:Sarthak_parajuli/constraints.dart';
import 'package:Sarthak_parajuli/screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sarthak Parajuli | Flutter Developer | 🇳🇵 🇳🇵 🇳🇵',
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        )
            .apply(bodyColor: Colors.white)
            .copyWith(bodyText1: TextStyle(color: bodyTextColor)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
