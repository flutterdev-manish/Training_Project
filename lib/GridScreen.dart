import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {

  String name = "Flutter";
  List names = ["Apple", "Boy", "Home", "Face", "Person", "Cycle"];
  List icon = [Icons.apple, Icons.boy, Icons.home, Icons.face, Icons.person,  Icons.watch];
  List color = [Colors.redAccent, Colors.yellow, Colors.blue, Colors.green, Colors.purple, ];
  List isChange = [];
  bool allDeleted = true;
  bool isLiked = true;

  List productList = [
    {
      "name" : "Apple",
      "icon" : Icons.apple,
      "color" : Colors.redAccent,
      "desc" : "The apple is one of the pome (fleshy) fruits.",
      "imgUrl" : "https://img.freepik.com/premium-vector/red-apple-vector-cartoon-illustration_575828-165.jpg?w=740",
    },
    {
      "name" : "Boy",
      "icon" : Icons.boy,
      "color" : Colors.teal,
      "desc" : "A male child, from birth to full growth, especially one less than 18 years of age",
      "imgUrl" : "https://img.freepik.com/free-vector/cute-boy-standing-position-showing-thumb_96037-450.jpg?w=1060&t=st=1709124867~exp=1709125467~hmac=1c487f2ce23dde93ea514eaa610beac4731957a3684d33ead41965c58e5ae917",
    },
    {
      "name" : "Home",
      "icon" : Icons.home,
      "color" : Colors.blue,
      "desc" : "The place or region where something is native or most common.",
      "imgUrl" : "https://img.freepik.com/free-photo/3d-view-house-model_23-2150761168.jpg?t=st=1708943530~exp=1708947130~hmac=1ee681899e7b7cecc9024a1bd1bc1938928e1971f0c3a37b9cb37a66ccd407bb&w=740",
    },
    {
      "name" : "Face",
      "icon" : Icons.face,
      "color" : Colors.green,
      "desc" : "The front of the human head is called the face.",
      "imgUrl" : "https://as1.ftcdn.net/v2/jpg/01/24/88/90/1000_F_124889020_jALWDgqb5VKBBGONOi8I3tzAnvmh4SKe.jpg",
    },
    {
      "name" : "Person",
      "icon" : Icons.person,
      "color" : Colors.pink,
      "desc" : "Positive adjectives: calm, clever, efficient, creative, nice, dependable, hardworking, ambitious.",
      "imgUrl" : "https://img.freepik.com/free-vector/hand-drawn-flat-profile-icon_23-2149069550.jpg?t=st=1709125243~exp=1709128843~hmac=e737b30e3f4a8a0cbbc853c6ddb6b847b0f2852f71c24c9a2bfdd8fce514d5b1&w=900",
    },
    {
      "name" : "Cycle",
      "icon" : Icons.watch,
      "color" : Colors.purple,
      "desc" : "A bicycle is a useful vehicle that helps us reach a destination without polluting the environment.",
      "imgUrl" : "https://img.freepik.com/free-vector/cyclist-man-riding-bicycle-isolated_1308-65928.jpg?t=st=1709125298~exp=1709128898~hmac=1d6e52b74be6a6b9fe687f3e8e8cae4699dcae4f8ff8fed23f8e95eff7da7def&w=740",
    },
  ];

  @override
  void initState() {
    isChange=List.generate(names.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 5,
          leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text("Grid Screen",
          style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24),),
      ),
      body: SizedBox(
        height: screenHeight,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            productList.length==0
            ?const Center(
              child: Text(
                "No Data Found!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black26),),
            )
            :Expanded(
              child: Stack(
                children: [
                  SizedBox(
                    // height: screenHeight,
                    child: GridView.builder(
                        itemCount: productList.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio:2/3,
                        ),
                        shrinkWrap: true,
                        itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 4.0,right: 4.0,bottom: 6.0,top: 6.0),
                        child:
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 15,
                              offset: const Offset(5, 5),
                            ),
                            // lighter shadow on the top left
                            const BoxShadow(
                              color: Colors.white,
                              blurRadius: 15,
                              offset: Offset(-5, -5),
                            ),
                          ],
                        ),
                          // color: Colors.white,
                          // elevation: 10,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 150,
                                      width: 185,
                                      decoration: BoxDecoration(
                                        borderRadius:  const BorderRadius.only(
                                            bottomLeft: Radius.zero,
                                            bottomRight: Radius.zero,
                                            topRight: Radius.circular(12),
                                            topLeft: Radius.circular(12)),
                                        image: DecorationImage(
                                            image: NetworkImage(productList[index]["imgUrl"]),
                                          filterQuality: FilterQuality.high,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      ),
                                  Positioned(
                                    top: 5,
                                    right: 5,
                                    child: GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            isLiked = !isLiked;
                                            isChange[index] = !isChange[index];
                                            Fluttertoast.showToast(
                                              gravity: ToastGravity.BOTTOM,
                                              msg: isLiked==false? "Product liked successfully":"Product disliked successfully",
                                              backgroundColor: isLiked==false?Colors.green:Colors.red,
                                            );
                                          });
                                        },
                                        child: Icon(
                                          Icons.favorite,
                                          size: 24,
                                          color: isChange[index]==true? Colors.red : Colors.black26,
                                        )),
                                  ),
                                  Positioned(
                                    top: 5,
                                    left: 5,
                                    child: GestureDetector(
                                        onTap: (){
                                            showDialog(
                                                context: context,
                                                barrierDismissible: false,
                                                builder: (context){
                                                  return AlertDialog(
                                                    title: const Text("Delete?"),
                                                    content: const Text("Are you sure, you want to delete?"),
                                                    actions: [
                                                      GestureDetector(
                                                          onTap:(){
                                                            setState(() {
                                                              Navigator.of(context).pop();
                                                              productList.removeAt(index);
                                                            });
                                                          },
                                                          child: const Text("Delete")
                                                      ),
                                                      GestureDetector(
                                                          onTap:(){
                                                            Navigator.of(context).pop();
                                                          },
                                                          child: const Text("Cancel")
                                                      ),
                                                    ],
                                                  );
                                                }
                                            );
                                            setState(() {
                                              print("Deleted");
                                            });
                                        },
                                        child: const Icon(
                                          Icons.delete,
                                          size: 24,
                                          color: Colors.red,
                                        )),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                               Row(
                                children: [
                                  const SizedBox(width: 10,),
                                  Icon(
                                    productList[index]["icon"],
                                  size: 30,
                                  color: productList[index]["color"],),
                                  const SizedBox(width: 5,),
                                  Text(
                                    productList[index]["name"].toString(),
                                    style: const TextStyle(fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),),
                                ],
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14.0, right: 8.0),
                                  child: SingleChildScrollView(
                                    child: Text(productList[index]["desc"],
                                      style: const TextStyle(fontSize: 16,
                                          color: Colors.black54),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  // Positioned(
                  //   bottom: 20,
                  //   left: screenWidth*0.3,
                  //   right: screenWidth*0.3,
                  //   // child: ElevatedButton(
                  //   //   onPressed: (){
                  //   //     // print("onPressed ElevatedButton");
                  //   //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>const GridScreen()));
                  //   //     Navigator.pushNamed(context, '/');
                  //   //   },
                  //   //   style: ButtonStyle(
                  //   //     backgroundColor: MaterialStateProperty.all(Colors.grey[700]),
                  //   //     elevation: MaterialStateProperty.all(3),
                  //   //   ),
                  //   //   child: const Text("Home Screen",
                  //   //     style: TextStyle(
                  //   //         color: Colors.white,
                  //   //         fontSize: 18,
                  //   //         fontWeight: FontWeight.bold),
                  //   //   ),
                  //   // ),
                  // ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            // SizedBox(
            //   height: 45,
            //   child: FloatingActionButton.extended(
            //     shape: const RoundedRectangleBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(50.0))
            //     ),
            //     backgroundColor: const Color.fromRGBO(42, 44, 55, 10),
            //     onPressed: (){
            //       Navigator.pushNamed(context, '/');
            //     },
            //     label: const Text('Home Page',
            //     style: TextStyle(color: Colors.white,fontSize: 18),),
            //     icon: const Icon(Icons.home, color: Colors.white, size: 25),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:2.0,
              horizontal: 6.0),
          child: GNav(
            gap: 6,
            padding: EdgeInsets.all(16),
            backgroundColor: Colors.transparent,
            color: Colors.grey,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.black38 ,
            tabBorderRadius: 20,
            tabs: [
              GButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/');
                },
                icon: Icons.home,
                text: "Home",),
              GButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/list');
                },icon: Icons.list,
                text: "Favorites",),
              GButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/bulb');
                },icon: Icons.lightbulb,
                text: "Search",),
              GButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/ui');
                },icon: Icons.phone_android,
                text: "Settings",)
            ],
          ),
        ),
      ),
    );
  }
}
