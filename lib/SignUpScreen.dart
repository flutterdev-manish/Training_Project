import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_01/UserInfo.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var name = "";
  var email = "";
  var mobile = "";
  var password = "";

  bool isChange = false;

  var dropdownvalue;

  var items = [
    'Male',
    'Female',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      // resizeToAvoidBottomInset: fa lse,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 2,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "SignUp Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: SizedBox(
          // height: size.height,
          width: size.width,
          // color: Colors.redAccent,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/signup.svg",
                  fit: BoxFit.fitWidth,
                  height: 250,
                  width: 300,
                ),
                const SizedBox(
                  height: 10,
                ),

                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: nameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                  style: const TextStyle(color: Colors.white),
                  controller: mobileController,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    hintText: "Mobile",
                    counterText: "",
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
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(isChange
                          ? Icons.visibility_off
                          : Icons.visibility),
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
                // DropdownButton(
                //
                //   // Initial Value
                //   value: dropdownvalue,
                //
                //   // Down Arrow Icon
                //   icon: const Icon(Icons.keyboard_arrow_down),
                //
                //   // Array list of items
                //   items: items.map((String items) {
                //     return DropdownMenuItem(
                //       value: items,
                //       child: Text(items),
                //     );
                //   }).toList(),
                //   // After selecting the desired option,it will
                //   // change button value to selected value
                //   onChanged: (String? newValue) {
                //     setState(() {
                //       dropdownvalue = newValue!;
                //     });
                //   },
                // ),
                const SizedBox(
                  height: 10,
                ),

                // DropdownButtonFormField(
                //   value: dropdownvalue,
                //   decoration: InputDecoration(
                //     hintText: "Gender",
                //     prefixIcon: Icon(Icons.person,),
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(16)),
                //   ),
                //   items: items.map(( value) {
                //     return DropdownMenuItem(
                //       value: value,
                //       child: Text(value.toString()),
                //     );
                //   }).toList(),
                //   onChanged: ( newValue) {
                //     setState(() {
                //       dropdownvalue = newValue.toString();
                //     });
                //   },
                // ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text("Login?",
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
                          name = nameController.text;
                          email = emailController.text;
                          mobile = mobileController.text;
                          password = passwordController.text;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>
                                  UserInfo(name: name, email: email, mobile: mobile, password: password,)));
                        });
                      },
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>const GridScreen()));

                      // Navigator.pushNamed(context, '/grid');
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
                              "SignUp",
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
