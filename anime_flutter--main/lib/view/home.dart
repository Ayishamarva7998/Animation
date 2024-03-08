// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:anima/constant/data.dart';
import 'package:anima/view/details.dart';
import 'package:anima/widget/container_opacity.dart';
import 'package:anima/widget/icon_animation.dart';
import 'package:anima/widget/opcity.dart';
import 'package:anima/widget/physical.dart';
import 'package:anima/widget/sand_box.dart';
import 'package:anima/widget/text_slide.dart';

import 'package:anima/widget/ticker.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 24, 30, 41),
        title: Text('Your App Title'),
      ),
      body: Column(
        children: [
          Expanded(
            child: isLoading
                ? Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 120,
                          padding: EdgeInsets.all(10),
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      },
                    ),
                  )
                : ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final datas = data[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return DetailPage(data: datas);
                            },
                          ));
                        },
                        child: Hero(
                          tag: datas.id!,
                          child: Container(
                            height: 120,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 211, 203, 203),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage(datas.image!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    datas.name!,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return Slide();
                        },
                      ));
                    },
                    child: Text("Slide"),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return Sandbox();
                        },
                      ));
                    },
                    child: Text("Sandbox"),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return TickerPro();
                        },
                      ));
                    },
                    child: Text("TickerPro"),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return IconAnim();
                        },
                      ));
                    },
                    child: Text("IconAnim"),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return OpacityPage();
                        },
                      ));
                    },
                    child: Text("Opacity"),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return Physical();
                        },
                      ));
                    },
                    child: Text("Physical"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ConatinerOpac();
                        },
                      ));
                    },
                    child: Text("ConatinerOpac"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
         backgroundColor: Color.fromARGB(255, 24, 30, 41),
    );
  }
}
