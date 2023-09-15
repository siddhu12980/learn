import "package:flutter/material.dart";
import "my_frs.dart";

void main() {
  runApp(const MyApp());
}
//type of widget:
//stateless widget- immuatable-once made it cannot be changed
//statefulwidget
//remember every widget has state
//what is state- it refers to any data that define how the wigdet is rendered and behave

//two types of design -1 material design - by google
//2 Cupertino design -by apple
class MyApp extends StatelessWidget{
   const MyApp({super.key}); //a key is a class that help flutter idefiy and diff btwn widgets
//passing a key to constructor assign key to particular widgets instance during updates of wigidetory
  @override
  Widget build(BuildContext context) {
    //build context is very imp -  is a class by flutter it tells the location of widget
    //we have to return a widget
    return  const MaterialApp(
      home:MyfistMaterialpage(),  //needded to use sacfold to make it better
    );
    //const Text("hello  this is my  world",textDirection: TextDirection.ltr,);
  }
}
