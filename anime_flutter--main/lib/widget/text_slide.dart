import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color.fromARGB(255, 24, 30, 41),
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
        title: const Text('Animated Slide',style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 24, 30, 41),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 59, 188, 214),
              borderRadius: BorderRadius.circular(15.0), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: AnimatedAlign(
              curve: Curves.easeInOut,
              alignment: selected ? Alignment.topLeft : Alignment.bottomCenter,
              duration: const Duration(seconds: 1),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Sliding!",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

