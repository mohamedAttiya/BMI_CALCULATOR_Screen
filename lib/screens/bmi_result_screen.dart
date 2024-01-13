import 'package:flutter/material.dart';
class BMIResult extends StatelessWidget {
  const BMIResult({super.key, required this.isMale, required this.result, required this.age});
  final bool isMale;
  final int result;
  final int age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        title:Text("BMI RESULT",style:Theme.of(context).textTheme.bodyText1!.copyWith(fontSize:16.0),),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:
          [
            Text("Gender : ${isMale ? 'MALE' : 'FEMALE'}",style:const TextStyle(fontSize:20.0,fontWeight:FontWeight.bold),),
            Text("Result : $result",style:const TextStyle(fontSize:20.0,fontWeight:FontWeight.bold),),
            Text("Age : $age",style:const TextStyle(fontSize:20.0,fontWeight:FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}