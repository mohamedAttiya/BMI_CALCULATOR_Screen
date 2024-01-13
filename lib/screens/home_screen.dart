import 'dart:math';

import 'package:bmi/constants/components.dart';
import 'package:bmi/screens/bmi_result_screen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>
{
  bool isMale = true;
  double height = 0.0;
  int weight = 5;
  int age = 1;
  @override
  Widget build(BuildContext context)
  {
        return Scaffold(
          appBar:AppBar(
            centerTitle:true,
            title:Text("BMI CALCULATOR",style:Theme.of(context).textTheme.bodyText1!.copyWith(fontSize:16.0),),
          ),
          body:Column(
            children:
            [
              //todo Container A :
              Expanded(child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child:Row(
                    children:
                    [
                      //todo Container 1 :
                      buildContainer(icon:Icons.male_rounded,text:"MALE",onTap:()
                      {
                        setState(()
                        {
                          isMale = true;
                        });
                      },
                        color:isMale ? Colors.blue : Colors.grey,
                      ),
                      const SizedBox(width:10,),
                      //todo Container 2 :
                      buildContainer(icon:Icons.female_rounded,
                          color:isMale ? Colors.grey : Colors.blue ,
                          text:"FEMALE",onTap:()
                      {
                        setState(()
                        {
                          isMale = false;
                        });
                      }),
                    ],
                  ),
                ),
              )),
              //todo Container B :
              Expanded(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Container(
                  width:double.infinity,
                  decoration:BoxDecoration(
                    color:Colors.grey,
                    borderRadius:BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:
                    [
                      const Text("HEIGHT",style:TextStyle(fontSize:20.0,fontWeight:FontWeight.bold),),
                      const SizedBox(height:5.0,),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        crossAxisAlignment:CrossAxisAlignment.baseline,
                        textBaseline:TextBaseline.ideographic,
                        children:
                        [
                          Text("${height.round()}",style:const TextStyle(fontSize:20.0,fontWeight:FontWeight.w600),),
                          const Text("cm",style:TextStyle(fontSize:14.0,fontWeight:FontWeight.bold),)
                        ],
                      ),
                      Slider(value:height, onChanged:(value)
                      {
                        setState(() {
                          height = value;
                        });
                      },min:0.0,max:220.0,)
                    ],
                  ),
                ),
              )),
              //todo Container C :
              Expanded(child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child:Row(
                    children:
                    [
                      //todo Container 1 :
                      buildCalcContainer(text:"WEIGHT", number:"$weight",symbol:"kg",
                        minusHeroTag:"Weight - ",plusHeroTag:"Weight +",
                          minusButton:"-",
                          plusButton:"+",plusOnPressed:()
                      {
                        setState(() {
                          weight++;
                        });
                      }
                          ,minusOnPressed:()
                      {
                        setState(() {
                          weight--;
                        });
                      },),
                      const SizedBox(width:10.0,),
                      //todo Container 2 :
                      buildCalcContainer(text:"AGE",number:"$age",symbol:"yr",
                          minusHeroTag:"Height -",plusHeroTag:"Height +",
                          minusButton:"-",
                          minusOnPressed:()
                          {
                            setState(() {
                              age--;
                            });
                          },
                          plusButton:"+",
                          plusOnPressed:()
                          {
                            setState(() {
                              age++;
                            });
                          }),
                    ],
                  ),
                ),
              )),
              buildButton(width:double.infinity,
                  containerColor:Colors.pink,
                  text:"CALCULATE",
                  textColor:Colors.white,
                  buttonOnPressed:()
                  {
                    var result = weight / pow (height/100,2);
                    Navigator.push(context,MaterialPageRoute(builder:(context)=> BMIResult(age:age,isMale:isMale,result:result.round(),)));
                  })
            ],
          ),
        );
  }
}