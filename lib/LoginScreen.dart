import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  var email = "";
  var password = "";

  bool isChange = true;
  bool isLoading =false;
  List userList = [];
  String strengthStatus = "";
  double password_strength = 0;
  RegExp pass_valid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");

  login() async {

    isLoading =true;

    var url = "https://reqres.in/api/login";

    var response = await http.post(Uri.parse(url),body: {
      // "email": "eve.holt@reqres.in",
      // "password": "cityslicka"
    "email": emailController.text,
    "password": passwordController.text
    });

    print("response body--> "+response.body.toString());
    print("response statusCode--> "+response.statusCode.toString());

    var jsonData = jsonDecode(response.body);

    if(response.statusCode == 200){
      setState(() {
        Navigator.pushNamed(context, '/');
        // userList = jsonData["data"];
        //
        // print("userList --> "+userList.toString());
        isLoading =false;
      });
    }{
      Fluttertoast.showToast(
          msg: "Login details are incorrect",
          backgroundColor: Colors.red
      );
    }

  }

  // passStrengthCheck(String pass){
  //   setState(() {
  //      if(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])+').hasMatch(passwordController.text)){
  //       strengthStatus = "Strong";
  //     }
  //      else if(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])+').hasMatch(passwordController.text)){
  //        strengthStatus = "Normal";
  //      }
  //      else if(RegExp(r'^(?=.*?[A-Z])+').hasMatch(passwordController.text)){
  //        strengthStatus = "Weak";
  //      }
  //      else if(RegExp(r'^(?=.*?[a-z])+').hasMatch(passwordController.text)){
  //        strengthStatus = "Weak";
  //      }
  //      else if(RegExp(r'^(?=.*?[0-9])+').hasMatch(passwordController.text)){
  //        strengthStatus = "Weak";
  //      }
  //   });
  // }

  bool checkPassword(String pass){
    String _password = pass.trim();

     if(pass_valid.hasMatch(_password)){
        setState(() {
          password_strength = 3 / 3;
        });
        return true;
      }
    else if(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])+').hasMatch(_password)){
      setState(() {
        password_strength = 2 / 3;
      });
    }
    else if(_password.length < 6 ){
      setState(() {
        password_strength = 1 / 3;
      });
    }
    else if(_password.isEmpty){
       setState(() {
         password_strength = 0;
       });
     }

    return false;
  }

  @override
  void initState() {
    print("Check 111222333 --> ");
    emailController.text = "abc@gmail.com";
    passwordController.text = "12345678";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurple[400],
        title: const Text(
          "Login Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        // color: Colors.redAccent,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/login.svg",
                  fit: BoxFit.fitWidth,
                  height: 250,
                  width: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: emailController,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Field can't be empty";
                    }else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)){
                      return "Enter a valid Email";
                    }
                    else{
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: isChange,
                  style: const TextStyle(color: Colors.white),
                  controller: passwordController,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Field can't be empty";
                    }else {
                      bool result = checkPassword(value);
                      if (result) {
                        return null;
                      } else {
                        return "Password length must be minimum 6";
                      }
                    }
                  },
                  onTapOutside: (value){
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(isChange
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(
                              () {
                            isChange = !isChange;
                          },
                        );
                      },
                    ),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Strength : ",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      strengthStatus.toString(),
                      style: const TextStyle(fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {
                          // passStrengthCheck();
                        },
                        child: const Text("Check",
                            style: TextStyle(
                              color: Colors.white,
                            ))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LinearProgressIndicator(
                    value: password_strength,
                    backgroundColor: Colors.deepPurple[100],
                    minHeight: 5,
                    color: password_strength <= 1 / 3
                        ? Colors.red
                        : password_strength == 2 / 3
                        ? Colors.orange
                        : password_strength == 3 / 3
                        ? Colors.green
                        : Colors.green,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: const Text("Signup?",
                            style: TextStyle(
                              color: Colors.white,
                            ))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      onPressed: () {
                        if(formkey.currentState!.validate()){
                          setState(() {
                            email = emailController.text;
                            password = passwordController.text;
                            FocusScope.of(context).unfocus();
                            // Navigator.pushNamed(context, '/bulb');

                            login();
                          });
                        }

                      },
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>const GridScreen()));

                      // style: ButtonStyle(
                      //   backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                      //   elevation: MaterialStateProperty.all(5),
                      // ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 22.0, right: 22.0, top: 12.0, bottom: 12.0),
                        child: Row(
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 05,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
