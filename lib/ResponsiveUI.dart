//ResponsiveUI
import 'package:flutter/material.dart';

class ResponsiveUIScreen extends StatefulWidget {
  const ResponsiveUIScreen({super.key});

  @override
  State<ResponsiveUIScreen> createState() => _ResponsiveUIScreenState();
}

class _ResponsiveUIScreenState extends State<ResponsiveUIScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.7),
      appBar: AppBar(
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.white),
        // leading: BackButton(
        //   color: Colors.white,
        // ),
        backgroundColor: Colors.deepPurpleAccent.shade200,
        title: const Text(
          "UI Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.search),
                        Text(
                          "Search",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     // Text(
                        //     //   "World",
                        //     //   style: TextStyle(
                        //     //       color: Colors.white,
                        //     //       fontSize: 18,
                        //     //       fontWeight: FontWeight.w600),
                        //     // ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
                // Expanded(
                //   child: Container(
                //     height: 100,
                //     width: size.width * 0.45,
                //     decoration: BoxDecoration(
                //         color: Colors.red.shade900,
                //         border: Border.all(color: Colors.black, width: 1),
                //         borderRadius: BorderRadius.circular(10)),
                //     child: const Center(
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Text(
                //             "Hello",
                //             style: TextStyle(
                //                 color: Colors.white,
                //                 fontSize: 18,
                //                 fontWeight: FontWeight.w600),
                //           ),
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //             children: [
                //               Text(
                //                 "World",
                //                 style: TextStyle(
                //                     color: Colors.white,
                //                     fontSize: 18,
                //                     fontWeight: FontWeight.w600),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          // Row(
          //   children: [
          //     Container(
          //       height: 100,
          //       width: size.width * 1/3,
          //       decoration: BoxDecoration(
          //           color: Colors.yellow.shade700,
          //           border: Border.all(color: Colors.black, width: 1),
          //           borderRadius: BorderRadius.circular(10)),
          //       child: const Center(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Text(
          //               "Hello",
          //               style: TextStyle(
          //                   color: Colors.white,
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.w600),
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 Text(
          //                   "World",
          //                   style: TextStyle(
          //                       color: Colors.white,
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w600),
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Container(
          //       height: 100,
          //       width: size.width * 1/3,
          //       decoration: BoxDecoration(
          //           color: Colors.yellow.shade700,
          //           border: Border.all(color: Colors.black, width: 1),
          //           borderRadius: BorderRadius.circular(10)),
          //       child: const Center(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Text(
          //               "Hello",
          //               style: TextStyle(
          //                   color: Colors.white,
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.w600),
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 Text(
          //                   "World",
          //                   style: TextStyle(
          //                       color: Colors.white,
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w600),
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Container(
          //       height: 100,
          //       width: size.width * 1/3,
          //       decoration: BoxDecoration(
          //           color: Colors.yellow.shade700,
          //           border: Border.all(color: Colors.black, width: 1),
          //           borderRadius: BorderRadius.circular(10)),
          //       child: const Center(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Text(
          //               "Hello",
          //               style: TextStyle(
          //                   color: Colors.white,
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.w600),
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 Text(
          //                   "World",
          //                   style: TextStyle(
          //                       color: Colors.white,
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w600),
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 5,
          ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Container(
          //         height: 100,
          //         // width: size.width * 1/3,
          //         decoration: BoxDecoration(
          //             color: Colors.amber.shade900,
          //             border: Border.all(color: Colors.black, width: 1),
          //             borderRadius: BorderRadius.circular(10),
          //           image: DecorationImage(
          //             image: NetworkImage(
          //               "https://img.freepik.com/free-photo/autumn-leaves-fall-gracefully-painting-nature-canvas-generative-ai_188544-9370.jpg?w=1060&t=st=1707125875~exp=1707126475~hmac=27fcc09c1d95ba5dc04173129c95a9bbef0c2fd0f56f1b6b586a6c4449d9a35b",
          //             ),
          //             // opacity: 0.5,
          //             filterQuality: FilterQuality.high,
          //             fit: BoxFit.fill,
          //           ),
          //         ),
          //         // child: const Center(
          //         //   child: Column(
          //         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         //     crossAxisAlignment: CrossAxisAlignment.center,
          //         //     children: [
          //         //       Text(
          //         //         "Hello",
          //         //         style: TextStyle(
          //         //             color: Colors.white,
          //         //             fontSize: 18,
          //         //             fontWeight: FontWeight.w600),
          //         //       ),
          //         //       Row(
          //         //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         //         children: [
          //         //           Text(
          //         //             "World",
          //         //             style: TextStyle(
          //         //                 color: Colors.white,
          //         //                 fontSize: 18,
          //         //                 fontWeight: FontWeight.w600),
          //         //           ),
          //         //         ],
          //         //       ),
          //         //     ],
          //         //   ),
          //         // ),
          //       ),
          //     ),
          //     SizedBox(width: 2,),
          //     Expanded(
          //       child: Container(
          //         height: 100,
          //         // width: size.width * 1/3,
          //         decoration: BoxDecoration(
          //
          //             color: Colors.amber.shade900,
          //             border: Border.all(color: Colors.black, width: 1),
          //             borderRadius: BorderRadius.circular(10),
          //           image: DecorationImage(
          //             image: NetworkImage(
          //               "https://images.unsplash.com/photo-1635468872214-8d30953f0057?q=80&w=1937&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          //             ),
          //             // opacity: 0.5,
          //             filterQuality: FilterQuality.high,
          //             fit: BoxFit.fill,
          //           ),
          //         ),
          //         // child: const Center(
          //         //   child: Column(
          //         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         //     crossAxisAlignment: CrossAxisAlignment.center,
          //         //     children: [
          //         //       Text(
          //         //         "Hello",
          //         //         style: TextStyle(
          //         //             color: Colors.white,
          //         //             fontSize: 18,
          //         //             fontWeight: FontWeight.w600),
          //         //       ),
          //         //       Row(
          //         //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         //         children: [
          //         //           Text(
          //         //             "World",
          //         //             style: TextStyle(
          //         //                 color: Colors.white,
          //         //                 fontSize: 18,
          //         //                 fontWeight: FontWeight.w600),
          //         //           ),
          //         //         ],
          //         //       ),
          //         //     ],
          //         //   ),
          //         // ),
          //       ),
          //     ),
          //     SizedBox(width: 2,),
          //     Expanded(
          //       child: Container(
          //         height: 100,
          //         // width: size.width * 1/3,
          //         decoration: BoxDecoration(
          //             color: Colors.amber.shade900,
          //             border: Border.all(color: Colors.black, width: 1),
          //             borderRadius: BorderRadius.circular(10),
          //           image: DecorationImage(
          //             image: NetworkImage(
          //               "https://images.unsplash.com/photo-1621155346337-1d19476ba7d6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          //             ),
          //             // opacity: 0.5,
          //             filterQuality: FilterQuality.high,
          //             fit: BoxFit.fill,
          //           ),),
          //         // child: const Center(
          //         //   child: Column(
          //         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         //     crossAxisAlignment: CrossAxisAlignment.center,
          //         //     children: [
          //         //       Text(
          //         //         "Hello",
          //         //         style: TextStyle(
          //         //             color: Colors.white,
          //         //             fontSize: 18,
          //         //             fontWeight: FontWeight.w600),
          //         //       ),
          //         //       Row(
          //         //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         //         children: [
          //         //           Text(
          //         //             "World",
          //         //             style: TextStyle(
          //         //                 color: Colors.white,
          //         //                 fontSize: 18,
          //         //                 fontWeight: FontWeight.w600),
          //         //           ),
          //         //         ],
          //         //       ),
          //         //     ],
          //         //   ),
          //         // ),
          //       ),
          //     ),
          //     SizedBox(width: 2,),
          //     Expanded(
          //       child: Container(
          //         height: 100,
          //         // width: size.width * 1/3,
          //         decoration: BoxDecoration(
          //             color: Colors.amber.shade900,
          //             border: Border.all(color: Colors.black, width: 1),
          //             borderRadius: BorderRadius.circular(10),
          //           image: DecorationImage(
          //             image: NetworkImage(
          //               "https://images.unsplash.com/photo-1574169207511-e21a21c8075a?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          //             ),
          //             // opacity: 0.5,
          //             filterQuality: FilterQuality.high,
          //             fit: BoxFit.fill,
          //           ),),
          //         // child: const Center(
          //         //   child: Column(
          //         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         //     crossAxisAlignment: CrossAxisAlignment.center,
          //         //     children: [
          //         //       Text(
          //         //         "Hello",
          //         //         style: TextStyle(
          //         //             color: Colors.white,
          //         //             fontSize: 18,
          //         //             fontWeight: FontWeight.w600),
          //         //       ),
          //         //       Row(
          //         //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         //         children: [
          //         //           Text(
          //         //             "World",
          //         //             style: TextStyle(
          //         //                 color: Colors.white,
          //         //                 fontSize: 18,
          //         //                 fontWeight: FontWeight.w600),
          //         //           ),
          //         //         ],
          //         //       ),
          //         //     ],
          //         //   ),
          //         // ),
          //       ),
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 5,
          ),
          // Row(
          //   children: [
          //     Expanded(
          //       flex: 1,
          //       child: Container(
          //         height: 100,
          //         // width: size.width * 1/3,
          //         decoration: BoxDecoration(
          //             color: Colors.green.shade900,
          //             border: Border.all(color: Colors.black, width: 1),
          //             borderRadius: BorderRadius.circular(10)),
          //         child: const Center(
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Text(
          //                 "flex",
          //                 style: TextStyle(
          //                     color: Colors.white,
          //                     fontSize: 18,
          //                     fontWeight: FontWeight.w600),
          //               ),
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                 children: [
          //                   Text(
          //                     "1",
          //                     style: TextStyle(
          //                         color: Colors.white,
          //                         fontSize: 18,
          //                         fontWeight: FontWeight.w600),
          //                   ),
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //     SizedBox(width: 2,),
          //     Expanded(
          //       flex: 3,
          //       child: Container(
          //         height: 100,
          //         // width: size.width * 1/3,
          //         decoration: BoxDecoration(
          //             color: Colors.green.shade900,
          //             border: Border.all(color: Colors.black, width: 1),
          //             borderRadius: BorderRadius.circular(10)),
          //         child: const Center(
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Text(
          //                 "flex",
          //                 style: TextStyle(
          //                     color: Colors.white,
          //                     fontSize: 18,
          //                     fontWeight: FontWeight.w600),
          //               ),
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                 children: [
          //                   Text(
          //                     "3",
          //                     style: TextStyle(
          //                         color: Colors.white,
          //                         fontSize: 18,
          //                         fontWeight: FontWeight.w600),
          //                   ),
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //     SizedBox(width: 2,),
          //     Expanded(
          //       flex: 2,
          //       child: Container(
          //         height: 100,
          //         // width: size.width * 1/3,
          //         decoration: BoxDecoration(
          //             color: Colors.green.shade900,
          //             border: Border.all(color: Colors.black, width: 1),
          //             borderRadius: BorderRadius.circular(10)),
          //         child: const Center(
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Text(
          //                 "flex",
          //                 style: TextStyle(
          //                     color: Colors.white,
          //                     fontSize: 18,
          //                     fontWeight: FontWeight.w600),
          //               ),
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                 children: [
          //                   Text(
          //                     "2",
          //                     style: TextStyle(
          //                         color: Colors.white,
          //                         fontSize: 18,
          //                         fontWeight: FontWeight.w600),
          //                   ),
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: size.width * 0.45,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),

                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                      image: NetworkImage("https://st2.depositphotos.com/2250171/10052/i/450/depositphotos_100522786-stock-photo-girl-in-denim.jpg"),
                        fit: BoxFit.cover
                      ),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text(
                        //   "Hello",
                        //   style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.w600),
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     Text(
                        //       "World",
                        //       style: TextStyle(
                        //           color: Colors.white,
                        //           fontSize: 18,
                        //           fontWeight: FontWeight.w600),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: size.width * 0.45,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage("https://st2.depositphotos.com/1007995/5242/i/450/depositphotos_52425477-stock-photo-man-with-his-hands-in.jpg"),
                        fit: BoxFit.cover
                    ),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text(
                        //   "Hello",
                        //   style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.w600),
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     Text(
                        //       "World",
                        //       style: TextStyle(
                        //           color: Colors.white,
                        //           fontSize: 18,
                        //           fontWeight: FontWeight.w600),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Container(
                width: size.width*0.4,
                child: Text("Women's jeans with shirt.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(width: 35,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: size.width*0.4,
                  child: Text("Men's denim shirt with jeans.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ),
            ],
          ),
          Spacer(),
          ElevatedButton(
          onPressed: (){
            // print("onPressed ElevatedButton");
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>ResponsiveUIScreen()));
            Navigator.pushNamed(context, '/list');

          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey),
            elevation: MaterialStateProperty.all(3),
          ),
          child: const Text("List Screen",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
          ElevatedButton(
            onPressed: (){
              // print("onPressed ElevatedButton");
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>ResponsiveUIScreen()));
              Navigator.pushNamed(context, '/');

            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
              elevation: MaterialStateProperty.all(3),
            ),
            child: const Text("Home Screen",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
