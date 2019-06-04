import 'package:flutter/material.dart';
import 'package:my_first_app/src/pages/contador_page.dart';

// import 'package:my_first_app/src/pages/home_page.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage()
      )
        
    );
  }
}