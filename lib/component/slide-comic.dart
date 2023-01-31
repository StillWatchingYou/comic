import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:test2/screen/more.dart';
import 'package:test2/screen/details.dart';

class SlideComic extends StatelessWidget {
  final String name;
  final List<dynamic> listslide;

  const SlideComic({Key? key, required this.name, required this.listslide}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 21),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text('${name}',
                  style: TextStyle(
                    color: Color.fromRGBO(74, 74, 74, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    height: 21 / 18,
                  )),
            ),
            InkWell(
              child: Text('...',
                  style: TextStyle(
                    color: Color.fromRGBO(175, 175, 175, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        // do something
                        MoreScreen( name : name)
                        ));
              },
            ),
          ],
        ),
      ),
      Container(
          child: CarouselSlider(
        items: listslide
            .map((e) => ClipRRect(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.only(bottom: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      // do something
                                      DetailScreen()
                                  ));
                            },
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(e)))),
                      Container(
                          padding: EdgeInsets.only(top: 0),
                          child: Column(children: [
                            Text('Ten Comic',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    height: 13 / 10,
                                    color: Color.fromRGBO(0, 0, 0, 1))),
                            Text('Ten tac gia',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    height: 12.5 / 10,
                                    color: Color.fromRGBO(0, 0, 0, 1)))
                          ]))
                    ],
                  ),
                ))
            .toList(),
        options: CarouselOptions(
          viewportFraction: 0.28,
          height: 115,
          enableInfiniteScroll: true,
          autoPlay: true,
        ),
      ))
    ]));
  }
}
