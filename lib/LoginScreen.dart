import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var email = "";
  var password = "";

  bool isChange = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurple,
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
                      setState(() {
                        email = emailController.text;
                        password = passwordController.text;
                        FocusScope.of(context).unfocus();
                        // Navigator.pushNamed(context, '/bulb');
                        Navigator.pushNamed(context, '/');
                      });
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
    );
  }
}
