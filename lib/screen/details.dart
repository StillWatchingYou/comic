import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  bool inDescription = true;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool inDescription = true;
  String description =
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.';
  final img = [
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
  ];

  void changeScreen() {
    setState(() {
      inDescription = !inDescription;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 30,
            color: Colors.white,
          ),
          Container(
            color: Color.fromRGBO(244, 244, 244, 1),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 30),
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.of(context).pop(),
                    )),
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/img/Group 9093.png'),
                      Container(
                          padding: EdgeInsets.only(top: 7),
                          child: Text(
                            'Bau troi xanh',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              height: 21 / 18,
                              color: Color.fromRGBO(74, 74, 74, 1),
                            ),
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 7),
                          child: Text(
                            '14/12/2022',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              height: 12.5 / 10,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.only(top: 15, bottom: 28),
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromRGBO(135, 33, 176, 1)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            child: Text(
                              'Bat dau xem',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                height: 21 / 12,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            )),
                      ),
                      Container(
                          child:
                              // DescriptionWidget()
                              inDescription
                                  ? Container(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      'Mo ta',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          height: 20 / 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, 1)),
                                                    ),
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(Color
                                                                  .fromRGBO(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      1)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Color.fromRGBO(
                                                          235, 235, 235, 1),

                                                    ),
                                                  ),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  child: ElevatedButton(
                                                    onPressed: changeScreen,
                                                    child: Text(
                                                      'Cac tap',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          height: 20 / 16,
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, 1)),
                                                    ),
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(Color
                                                                  .fromRGBO(
                                                                      235,
                                                                      235,
                                                                      235,
                                                                      1)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                padding: EdgeInsets.only(
                                                    top: 36, left: 30),
                                                child: Text(
                                                  'Bau troi xanh',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      height: 16.25 / 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1)),
                                                )),
                                            Container(
                                              height: 40,
                                            ),
                                            Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                padding:
                                                    EdgeInsets.only(left: 30),
                                                child: Text(
                                                  'Tac gia: Ngoc Anh',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      height: 16.25 / 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1)),
                                                )),
                                            Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                padding:
                                                    EdgeInsets.only(left: 30),
                                                child: Text(
                                                  '',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      height: 16.25 / 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1)),
                                                )),
                                            Container(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              padding:
                                                  EdgeInsets.only(left: 30),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                      child: Text(description)),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text('Xem them'),
                                                  ),
                                                  Container(
                                                      // width: MediaQuery.of(context).size.width,
                                                      child: Text(
                                                    'Nha phat hanh: Raise',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        height: 16.25 / 13,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 1)),
                                                  ))
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 5,
                                              color: Color.fromRGBO(
                                                  244, 244, 244, 1),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 30, top: 16),
                                                    child: Text('Goi y',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            height: 16.25 / 13,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Color.fromRGBO(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    1))),
                                                  ),
                                                  Container(
                                                      padding: EdgeInsets.only(
                                                          left: 30),
                                                      child: Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20),
                                                          child: Wrap(
                                                            spacing: 30,
                                                            runSpacing: 48,
                                                            children: <Widget>[
                                                              for (var i = 0;
                                                                  i <
                                                                      img
                                                                          .length;
                                                                  i++)
                                                                if (img[i] !=
                                                                    null)
                                                                  Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(8)),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                Colors.grey.withOpacity(0.1),
                                                                            // spreadRadius: 5,
                                                                            blurRadius:
                                                                                20,
                                                                            offset:
                                                                                Offset(0, 0.75), // changes position of shadow
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child: ClipRRect(
                                                                          borderRadius: BorderRadius.circular(8),
                                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                            InkWell(
                                                                                onTap: (() {}),
                                                                                child: Image.asset(img[i], width: (MediaQuery.of(context).size.width - 120) / 3)),
                                                                            Text('Ten Comic',
                                                                                textAlign: TextAlign.left,
                                                                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, height: 13 / 10, color: Color.fromRGBO(0, 0, 0, 1))),
                                                                            Text('Ten tac gia',
                                                                                textAlign: TextAlign.left,
                                                                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10, height: 12.5 / 10, color: Color.fromRGBO(0, 0, 0, 1)))
                                                                          ])))
                                                            ],
                                                          )))
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  : Container(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      child: SingleChildScrollView(
                                          child: Column(children: [
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color.fromRGBO(
                                                      235, 235, 235, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2,
                                              child: ElevatedButton(
                                                onPressed: changeScreen,
                                                child: Text(
                                                  'Mo ta',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      height: 20 / 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1)),
                                                ),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Color.fromRGBO(235,
                                                              235, 235, 1)),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Cac tap',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      height: 20 / 16,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1)),
                                                ),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Color.fromRGBO(255,
                                                              255, 255, 1)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: 5,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Container(
                                                padding:
                                                    EdgeInsets.only(left: 30),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          bottom: 8),
                                                      child: Text('Bau troi do',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              height:
                                                                  16.25 / 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      1))),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          bottom: 12),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                              child: Text(
                                                                  '16/11/2022',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10,
                                                                      height:
                                                                          12.5 /
                                                                              10,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      color: Color.fromRGBO(
                                                                          74,
                                                                          74,
                                                                          74,
                                                                          1)))),
                                                          Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 30),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          right:
                                                                              4),
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/img/Group 9129.png')),
                                                                  Text('22k',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              10,
                                                                          height: 12.5 /
                                                                              10,
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color: Color.fromRGBO(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              1)))
                                                                ],
                                                              ))
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      color: Color.fromRGBO(
                                                          228, 228, 228, 1),
                                                    )
                                                  ],
                                                ),
                                              );
                                            })
                                      ]))))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

class DescriptionWidget extends StatefulWidget {
  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  bool isReadMore = true;
  String description =
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.';
  final img = [
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
    'assets/img/Group 9093.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(235, 235, 235, 1),
                      width: 1,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Mo ta',
                      style: TextStyle(
                          fontSize: 16,
                          height: 20 / 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(235, 235, 235, 1),
                      width: 1,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Cac tap',
                      style: TextStyle(
                          fontSize: 16,
                          height: 20 / 16,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(255, 255, 255, 1),
                padding: EdgeInsets.only(top: 36, left: 30),
                child: Text(
                  'Bau troi xanh',
                  style: TextStyle(
                      fontSize: 13,
                      height: 16.25 / 13,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                )),
            Container(
              height: 40,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(255, 255, 255, 1),
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Tac gia: Ngoc Anh',
                  style: TextStyle(
                      fontSize: 13,
                      height: 16.25 / 13,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(255, 255, 255, 1),
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  '',
                  style: TextStyle(
                      fontSize: 13,
                      height: 16.25 / 13,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                )),
            Container(
              color: Color.fromRGBO(255, 255, 255, 1),
              padding: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(child: Text(description)),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Xem them'),
                  ),
                  Container(
                      // width: MediaQuery.of(context).size.width,
                      child: Text(
                    'Nha phat hanh: Raise',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 13,
                        height: 16.25 / 13,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ))
                ],
              ),
            ),
            Container(
              height: 5,
              color: Color.fromRGBO(244, 244, 244, 1),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 16),
                    child: Text('Goi y',
                        style: TextStyle(
                            fontSize: 13,
                            height: 16.25 / 13,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 0, 0, 1))),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Wrap(
                            spacing: 30,
                            runSpacing: 48,
                            children: <Widget>[
                              for (var i = 0; i < img.length; i++)
                                if (img[i] != null)
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.1),
                                            // spreadRadius: 5,
                                            blurRadius: 20,
                                            offset: Offset(0,
                                                0.75), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                    onTap: (() {}),
                                                    child: Image.asset(img[i],
                                                        width: (MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width -
                                                                120) /
                                                            3)),
                                                Text('Ten Comic',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10,
                                                        height: 13 / 10,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 1))),
                                                Text('Ten tac gia',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 10,
                                                        height: 12.5 / 10,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 1)))
                                              ])))
                            ],
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
// Widget buildButton() => ElevatedButton(
//     onPressed: () => setState(() => isReadMore = !isReadMore),
//     child: Text(isReadMore ? 'Read More' : 'ReadLess'));
}

class ChapterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: SingleChildScrollView(
            child: Column(children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(235, 235, 235, 1),
                    width: 1,
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Mo ta',
                    style: TextStyle(
                        fontSize: 16,
                        height: 20 / 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(235, 235, 235, 1)),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    width: 1,
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Cac tap',
                    style: TextStyle(
                        fontSize: 16,
                        height: 20 / 16,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ),
            ],
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text('Bau troi do',
                            style: TextStyle(
                                fontSize: 13,
                                height: 16.25 / 13,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 0, 0, 1))),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 12),
                        child: Row(
                          children: [
                            Container(
                                child: Text('16/11/2022',
                                    style: TextStyle(
                                        fontSize: 10,
                                        height: 12.5 / 10,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(74, 74, 74, 1)))),
                            Container(
                                padding: EdgeInsets.only(left: 30),
                                child: Row(
                                  children: [
                                    Container(
                                        padding: EdgeInsets.only(right: 4),
                                        child: Image.asset(
                                            'assets/img/Group 9129.png')),
                                    Text('22k',
                                        style: TextStyle(
                                            fontSize: 10,
                                            height: 12.5 / 10,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(0, 0, 0, 1)))
                                  ],
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color.fromRGBO(228, 228, 228, 1),
                      )
                    ],
                  ),
                );
              })
        ])));
  }
}
