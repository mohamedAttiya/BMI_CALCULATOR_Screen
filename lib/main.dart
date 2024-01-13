import 'package:bmi/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
main()
{
  runApp(const BMIApp());
}
class BMIApp extends StatelessWidget {
  const BMIApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:ThemeData(
        floatingActionButtonTheme:const FloatingActionButtonThemeData(
          backgroundColor:Colors.pink,
        ),
        sliderTheme:SliderThemeData(
          thumbColor:Colors.white,
          inactiveTrackColor:Colors.grey[300],
          activeTrackColor:Colors.pink
        ),
        appBarTheme:const AppBarTheme(
          iconTheme:IconThemeData(
            color:Colors.black,
          ),
          color:Colors.white,
          elevation:0.0,
          systemOverlayStyle:SystemUiOverlayStyle(
            statusBarColor:Colors.white,
            statusBarIconBrightness:Brightness.dark
          )
        ),
        scaffoldBackgroundColor:Colors.white,
      ),
      home:const HomeScreen() ,
    );
  }
}