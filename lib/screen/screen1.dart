import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:test2/component/slide-comic.dart';
import './more.dart';

class Screen1 extends StatelessWidget {

  final img = [
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Quicksand'),
        home: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 141,
            color: Colors.white,
          ),
          Container(
            height: 6,
            color: Color.fromRGBO(244, 244, 244, 1),
          ),
          Container(
              // height: 200,
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 244, 244, 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 34,
                      width: MediaQuery.of(context).size.width - 60,
                      child: IntrinsicWidth(
                          child: TextField(
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Tim Kiem',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(192, 192, 192, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            height: 40 / 13,
                          ),
                          border: InputBorder.none,
                        ),
                      )),
                    ),
                    SlideComic(name: 'Comic moi', listslide: img),
                  ],
                ),
              )),
          Container(
            height: 6,
            color: Color.fromRGBO(244, 244, 244, 1),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 11, bottom: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 0),
                  child: Column(
                    children: [
                      Image.asset('assets/img/Mask group (1).png'),
                      Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Album',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  height: 13 / 10,
                                  color: Color.fromRGBO(0, 0, 0, 1))))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 0),
                  child: Column(
                    children: [
                      Image.asset('assets/img/Mask group (1).png'),
                      Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Album',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  height: 13 / 10,
                                  color: Color.fromRGBO(0, 0, 0, 1))))
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 6,
            color: Color.fromRGBO(244, 244, 244, 1),
          ),
          Container(
            child: SlideComic(
              name: 'Comic yeu thich',
              listslide: img,
            ),
          ),
          Container(
            child: SlideComic(
              name: 'Halloween',
              listslide: img,
            ),
          ),
          Container(
            height: 40,
            color: Color.fromRGBO(244, 244, 244, 1),
          ),
        ],
      )),
    ));
  }
}
