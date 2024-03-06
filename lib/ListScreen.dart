import 'package:flutter/material.dart';
import 'package:project_01/ResponsiveUI.dart';
import 'package:project_01/TestScreen1.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  var isSelected;
  String name = "Flutter";
  List names = ["Apple","Boy","Home","Face","Men","Bicycle"];
  List icon = [Icons.apple,Icons.boy,Icons.home,Icons.face,Icons.person,Icons.bike_scooter,Icons.watch,];
  List color = [Colors.lightBlue,Colors.yellow,Colors.redAccent,Colors.green,Colors.purple,Colors.pink,];
  List isChange = [false,false,false,false,false,false];

  // List names = ["Apple","Boy","Home",];
  // List icon = [Icons.apple,Icons.boy,Icons.home,];
  // List color = [Colors.lightBlue,Colors.yellow,Colors.redAccent,];
  // List isChange = [false,false,false,];

  // List names = [];
  // List icon = [];
  // List color = [];
  // List isChange = [];
  bool seeMore =false;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("List Screen",
          style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            // height: size.height*0.8,
            // color: Colors.green,
            child: ListView.builder(
                itemCount: seeMore==true
                    ? names.length
                    : names.length<4
                    ? names.length
                    : 4,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index){
              return Card(
                color: isChange[index]==true? Colors.deepOrangeAccent : Colors.lightGreen,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                     // mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SizedBox(width: 120,),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Icon(
                          icon[index],
                          size: 30,
                        color: Colors.white,),
                      ),
                      const SizedBox(width: 10,),
                       Text(
                           names[index],
                         // seeMore==true
                         //     ? index==5
                         //     ? "Less"
                         // : names[index]
                         //     : index==3
                         //     ? "More"
                         //     // : index==5
                         //     // ? "Less"
                         //     : names[index].toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
          names.length==0
          ?Container(
            child: Text("No Data"),
          )
          :GestureDetector(
            onTap: (){
              setState(() {

                  seeMore = !seeMore;

                // isSelected== index;
                // isChange[index] = !isChange[index];
              });
            },
            child: Card(
              color: Colors.lightGreen,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //SizedBox(width: 120,),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Icon(
                        seeMore==true
                            ? Icons.expand_less
                            : Icons.expand_more,
                        size: 30,
                        color: Colors.white,),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      // seeMore==true
                      //   ? names[index]
                      //   : index==3
                      //   ? "More"
                      //   : index==5
                      //   ? "Less"
                      //   : names[index].toString(),

                      seeMore==true
                          ? "Less"
                          : "More",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: (){
              setState(() {
                seeMore = !seeMore;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //SizedBox(width: 120,),
                  Icon(
                    seeMore==true?Icons.expand_less : Icons.expand_more,
                    size: 30,
                    color: Colors.blue,),
                  const SizedBox(width: 10,),
                  Text(
                    seeMore==true? "Less":"More",
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TestScreen1()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green.shade700),
              elevation: MaterialStateProperty.all(3),
            ),
            child: const Text("Test Screen",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),

          ElevatedButton(
            onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>GridScreen()));
              Navigator.pushNamed(context, '/grid');
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
              elevation: MaterialStateProperty.all(3),
            ),
            child: const Text("Grid Screen",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              print("onPressed ElevatedButton");
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ResponsiveUIScreen()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              elevation: MaterialStateProperty.all(3),
            ),
            child: const Text("UI Screen",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),

          ElevatedButton(
            onPressed: (){
              print("onPressed ElevatedButton");
              // Navigator.pop(context);
              Navigator.of(context).pop();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.redAccent),
              elevation: MaterialStateProperty.all(3),
            ),
            child: const Text("Back",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),


    );
  }
}
