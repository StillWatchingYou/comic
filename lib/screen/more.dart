import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/component/slide-comic.dart';

class MoreScreen extends StatelessWidget {
  final String name;

  const MoreScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final img = [
      'assets/img/Group 9093.png',
      'assets/img/Group 9093.png',
      'assets/img/Group 9093.png',
      'assets/img/Group 9093.png',
      'assets/img/Group 9093.png',
    ];
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 80, left: 35),
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () => Navigator.of(context).pop(),
                      )),
                  Container(
                    padding: EdgeInsets.only(
                        top: 80,
                        left:
                            (MediaQuery.of(context).size.width - 71) / 2 - 83),
                    alignment: Alignment.center,
                    child: Text(
                      '${name}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        height: 7 / 6,
                        color: Color.fromRGBO(74, 74, 74, 1),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  padding: EdgeInsets.only(top: 60),
                  child: Wrap(
                    spacing: 30,
                    runSpacing: 48,
                    children: <Widget>[
                      for (var i = 0; i < img.length; i++)
                        if (img[i] != null)
                          Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    // spreadRadius: 5,
                                    blurRadius: 20,
                                    offset: Offset(
                                        0, 0.75), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                            onTap: (() {}),
                                            child: Image.asset(img[i],
                                                width: (MediaQuery.of(context)
                                                            .size
                                                            .width -
                                                        120) /
                                                    3)),
                                        Text('Ten Comic',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                height: 13 / 10,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 1))),
                                        Text('Ten tac gia',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                height: 12.5 / 10,
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1)))
                                      ])))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
