import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {


  var isSelected;
  String name = "Flutter";
  List names = ["Apple","Boy","Home","Face","Men","Bicycle"];
  List icon = [Icons.apple,Icons.boy,Icons.home,Icons.face,Icons.person,Icons.bike_scooter,Icons.watch,];
  List color = [Colors.lightBlue,Colors.yellow,Colors.redAccent,Colors.green,Colors.purple,Colors.pink,];
  List isChange = [false,false,false,false,false,false];

  bool seeMore =false;
  bool isLoading =false;
  List userList = [];

  @override
  initState() {
    super.initState();
    print("initState Called");
    getUserList();
  }

  getUserList() async {

    isLoading =true;

    var url = "https://reqres.in/api/users";

    var response = await http.get(Uri.parse(url));

    print("response --> "+response.body.toString());

    var jsonData = jsonDecode(response.body);

    setState(() {

      userList = jsonData["data"];

      print("userList --> "+userList.toString());

      isLoading =false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Users",
          style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
      isLoading ==true
          ? const Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircularProgressIndicator(),
          )
         :
      userList.length==0
          ?
            Container(
              child: Text("No Data"),
          )
          :ListView.builder(
              itemCount:
              // userList.length,
              seeMore==true
                  ? userList.length
                  : userList.length<4
                  ? userList.length
                  : 4,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index){
            return Card(
              color: isChange[index]==true? Colors.deepOrangeAccent : Colors.black,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //SizedBox(width: 120,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Image.network(userList[index]["avatar"],height: 60,),
                    ),
                    const SizedBox(width: 15,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                             userList[index]["first_name"]+" "+userList[index]["last_name"],
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
                         Text(
                           userList[index]["email"],
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
                               fontSize: 16,
                               fontWeight: FontWeight.w400),
                         ),
                       ],
                     ),
                  ],
                ),

              ),

            );
          }),

          userList.length==0
          ?Container(
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
              color: Colors.black,
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
          // GestureDetector(
          //   onTap: (){
          //     setState(() {
          //       seeMore = !seeMore;
          //     });
          //   },
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         //SizedBox(width: 120,),
          //         Icon(
          //           seeMore==true?Icons.expand_less : Icons.expand_more,
          //           size: 30,
          //           color: Colors.blue,),
          //         const SizedBox(width: 10,),
          //         Text(
          //           seeMore==true? "Less":"More",
          //           style: const TextStyle(
          //               color: Colors.blue,
          //               fontSize: 20,
          //               fontWeight: FontWeight.bold),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // ElevatedButton(
          //   onPressed: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context)=>TestScreen1()));
          //   },
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(Colors.green.shade700),
          //     elevation: MaterialStateProperty.all(3),
          //   ),
          //   child: const Text("Test Screen",
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 22,
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),

          // ElevatedButton(
          //   onPressed: (){
          //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>GridScreen()));
          //     Navigator.pushNamed(context, '/grid');
          //   },
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
          //     elevation: MaterialStateProperty.all(3),
          //   ),
          //   child: const Text("Grid Screen",
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 22,
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),
          // ElevatedButton(
          //   onPressed: (){
          //     print("onPressed ElevatedButton");
          //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ResponsiveUIScreen()));
          //   },
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
          //     elevation: MaterialStateProperty.all(3),
          //   ),
          //   child: const Text("UI Screen",
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 18,
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),

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
