import 'package:flutter/material.dart';

class TestScreen1 extends StatefulWidget {
  const TestScreen1({super.key});

  @override
  State<TestScreen1> createState() => _TestScreen1State();
}

class _TestScreen1State extends State<TestScreen1> {

  List names = ["Apple", "Boy", "Home", "Face", "Person", "Cycle"];
  List isSelected= [];
  final List<String> _selected =[];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Test Screen",
          style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: names.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: (){
                setState(() {
                });
              },
              child: Container(
                height: 50,
                child: ListView.builder(
                    itemCount: names.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index2){
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            // if(_selected.contains(names[index2].toString())){
                            //   _selected.remove(names[index2].toString());
                            // }else{
                            //   _selected.add(names[index2].toString());
                            // }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            // alignment: Alignment.center,
                            // padding: EdgeInsets.all(5),
                            // margin: EdgeInsets.all(5),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: _selected.contains(names[index2].toString())? Colors.red : Colors.grey,
                                shape: BoxShape.circle
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            );
          }),
        ],
      ),
    );
  }
}
