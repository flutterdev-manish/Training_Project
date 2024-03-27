import 'package:flutter/material.dart';
import 'package:project_01/GridScreen.dart';
import 'package:project_01/Helper/Constants.dart';
import 'package:project_01/ListScreen.dart';
import 'package:project_01/LoginScreen.dart';
import 'package:project_01/ProductScreen.dart';
import 'package:project_01/UserListScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appBarColor,
        title: const Text("Home Screen",
        style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Container(
                height: 70,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.amber.shade900,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "World",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "To",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Flutter",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Icon(
                Icons.home,
                size: 50,
                color: Colors.deepPurpleAccent,
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      height: 150,
                      width: 150,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.near_me,
                    size: 100,
                      color: Colors.lightBlue,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      // print("onPressed ElevatedButton");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));

                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      elevation: MaterialStateProperty.all(3),
                    ),
                    child: const Text("Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: (){
                      // print("onPressed ElevatedButton");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const UserListScreen()));

                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                      elevation: MaterialStateProperty.all(3),
                    ),
                    child: const Text("User List",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),

              ElevatedButton(
                onPressed: (){
                  // print("onPressed ElevatedButton");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductListScreen()));

                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
                  elevation: MaterialStateProperty.all(3),
                ),
                child: const Text("Product List",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>const ListScreen()));

                        Navigator.pushNamed(context, '/list');
                      },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.green;
                            }
                            return Colors
                                .purpleAccent;
                          }),
                    ),
                      child: const Text("List Screen",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      // print("onPressed ElevatedButton");
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>const GridScreen()));

                      Navigator.pushNamed(context, '/grid');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red[700]),
                      elevation: MaterialStateProperty.all(3),
                    ),
                    child: const Text("Grid Screen",
                      style: TextStyle(
                        color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              ElevatedButton(
                onPressed: (){
                  print("onPressed ElevatedButton");
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>ResponsiveUIScreen()));
                  Navigator.pushNamed(context, '/ui');

                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(3),
                ),
                child: const Text("UI Screen",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 15,),
              ElevatedButton(
                onPressed: (){
                  print("onPressed ElevatedButton");
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>ResponsiveUIScreen()));
                  Navigator.pushNamed(context, '/bulb');

                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  elevation: MaterialStateProperty.all(3),
                ),
                child: const Text("Bulb Screen",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
