import 'package:flutter/material.dart';

class BulbScreen extends StatefulWidget {
  const BulbScreen({super.key});

  @override
  State<BulbScreen> createState() => _BulbScreenState();
}

class _BulbScreenState extends State<BulbScreen> {

  bool isChange = false;
  bool animate = false;
  double height = 100;
  double width = 100;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 2,
        backgroundColor: Colors.deepPurpleAccent.shade200,
        title: const Text(
          "Bulb Screen",
          style: TextStyle(color: Colors.white,),
        ),
      ),
      body:  Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.lightbulb,
                  size: size.width*0.5,
                  color: isChange==true ? Colors.yellow : Colors.black,
                ),
                AnimatedScale(
                  scale: 0.8,
                  duration: Duration(seconds: 1),
                  child: Icon(
                    isChange==true ? Icons.lightbulb : Icons.lightbulb_outline,
                    size: size.width*0.5,
                    color: isChange==true ? Colors.yellow : Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: isChange==true ? Colors.red : Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    isChange = !isChange;
                    // isChange== true? height=200 : height=100;
                    // isChange== true? width=300 : width=200;
                  });

                },
                child: Text(
                  isChange==true? "Off":"On",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 20,),

            Container(height: 20,),

            GestureDetector(
              onTap: (){
                setState(() {
                  animate = !animate;
                });
              },
              child: AnimatedContainer(
                height: animate== true ? 200 : 100,
                width: animate== true ? 200 : 100,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                decoration: BoxDecoration(
                    color: animate== true?Colors.deepOrangeAccent:Colors.deepPurpleAccent.shade400,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
            Container(height: 20,),

            GestureDetector(
              onTap: (){
                print("Hellooo 1");
              },
              onDoubleTap: (){
                print("double tap");

              },
              child: Text(
                "GestureDetector",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(height: 20,),

            InkWell(
              onTap: (){
                print("Hellooo 2");
              },
              onDoubleTap: (){
                print("double tap");
              },
              borderRadius: BorderRadius.circular(50),

              splashColor: Colors.yellow,
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: 100,
                child: Text(
                  "InkWell",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(height: 10,),



          ]),
    );
  }
}
