import 'package:flutter/material.dart';
Widget buildContainer({
  required IconData icon,
  required String text,
  required Function() onTap,
  required Color color,
})=>Expanded(child: InkWell(
  onTap:onTap,
  child:Container(
    decoration:BoxDecoration(
        color:color,
        borderRadius:BorderRadius.circular(10)
    ),
    child: Column(
      children:
      [
        Icon(icon,color:Colors.white,size:100,),
        Text(text,style:const TextStyle(fontSize:24.0,color:Colors.white,fontWeight:FontWeight.w600),)
      ],
    ),
  ),
));
Widget buildButton({
  required double width,
  required Color containerColor,
  required String text,
  required Color textColor,
  required Function() buttonOnPressed,
})=>Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
      width:width,
      decoration:BoxDecoration(
        color:containerColor,
        borderRadius:BorderRadius.circular(10),
      ),
      child: MaterialButton(onPressed:buttonOnPressed,child:Text(text,style:TextStyle(color:textColor),))),
);
Widget buildCalcContainer({
  required String text,
  required String number,
  required Function() minusOnPressed,
  required Function() plusOnPressed,
  required String minusButton,
  required String plusButton,
  required String symbol,
  required String minusHeroTag,
  required String plusHeroTag,
})=>Expanded(
  child: Container(
    decoration:BoxDecoration(
      color:Colors.grey,
      borderRadius:BorderRadius.circular(10),
    ),
    child:Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children:
      [
        Text(text,style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
        const SizedBox(height:5.0,),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.baseline,
          textBaseline:TextBaseline.alphabetic,
          children: [
            Text(number,style:const TextStyle(fontSize:16.0,fontWeight:FontWeight.bold),),
            Text(symbol,style:const TextStyle(fontSize:14.0,fontWeight:FontWeight.w800),),
          ],
        ),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children:
          [
            FloatingActionButton(onPressed:minusOnPressed,heroTag:minusHeroTag,child: Text(minusButton,style:const TextStyle(fontSize:16.0),),),
            const SizedBox(width:5.0,),
            FloatingActionButton(onPressed:plusOnPressed,heroTag:plusHeroTag,child: Text(plusButton,style:const TextStyle(fontSize:16.0),),),
          ],
        )
      ],
    ),
  ),
);