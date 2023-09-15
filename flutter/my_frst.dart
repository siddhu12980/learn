
import 'package:flutter/material.dart';


class MyfistMaterialpage extends StatefulWidget {
  const MyfistMaterialpage({super.key});

  @override
  State<MyfistMaterialpage> createState() => _MyfistMaterialpageState();
}

class _MyfistMaterialpageState extends State<MyfistMaterialpage> {
  final TextEditingController textEditingController = TextEditingController();
      double result = 0;


     @override
      Widget build(BuildContext context) {
    //final border=OutlineInputBorder( //put it below widget
    //                      borderSide: BorderSide(
    //                        color: Colors.white60,
    //                        width: 3,
    //                        style: BorderStyle.solid,
    //                        strokeAlign: BorderSide.strokeAlignCenter,
    //                      ),
    //
    //                      borderRadius: BorderRadius.horizontal(left: Radius.circular(30))
    //
    //                    ),
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(120, 130, 137, .5),
          elevation: 0,
          title: const Text("Currency Converter"),
          centerTitle: true,
          //actions = [widget ]-like small exit button
          //leading = one widget for first thing in app bar
        ),
        backgroundColor: const Color.fromRGBO(120, 130, 137, .5),


        body: Center(child:

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [


            Text(
              
              // ignore: prefer_interpolation_to_compose_strings
              "NPR "+result.toString(),
              style: const TextStyle(
                
                
                fontSize: 50,
                fontWeight: FontWeight.bold,
                //  color: Color.fromRGBO(255, 125, 5,.9),
                color: Colors.white,
              ),),
            //padding and container widget
            //use wrapping with padding
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),

              child: TextField(
                controller: textEditingController,


                style: const TextStyle(
                  color: Colors.black,
                ),

                decoration: const InputDecoration( //text style ma decoration xainw but textfield ma xw
                  hintText: "Please Enter the number",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,

                  filled: true,
                  fillColor: Colors.white,


                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 3,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white60,
                        width: 3,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),

                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(30))

                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),

            //BUTTON

            //types of button -1 raised and 2 appear like a text

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
              child: ElevatedButton(onPressed: () {
                 //or textbutton

             setState(() {
               result= (double.parse(textEditingController.text)*132);
             });
               
               // result = (double.parse(textEditingController.text) * 10.0);

                


              },
    //dont forget focused decoration

                style: ButtonStyle( // use can use Textbutton.styleform() that avoid material state
                  elevation: const MaterialStatePropertyAll(10),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  foregroundColor: const MaterialStatePropertyAll(Colors.black),
                  minimumSize: const MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  // shape: MaterialStatePropertyAll(CircleBorder()) looks better with icon
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  ),

                ),


                child: const Text("Convert"),
              ),
            ),


          ],


        ),

        ),


      );
    }
}
