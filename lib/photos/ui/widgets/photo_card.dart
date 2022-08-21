// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  final String url;
  final String title;
  final String article;
  final IconData icon;
  final MaterialColor iconColor;
  const PhotoCard(
      {Key? key,
      required this.url,
      required this.title,
      required this.article,
      required this.iconColor,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 70.0),
      child: Stack(
        alignment: Alignment(0.0, 2.8),
        children: [
          Container(
            height: 200.0,
            margin: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            decoration: BoxDecoration(
                //color: Colors.red,

                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(url))),
          ),
          Stack(
            alignment: Alignment(0.5, 1.4),
            children: [
              Container(
                  height: 150.0,
                  width: 250,
                  margin: EdgeInsets.only(right: 60.0, left: 60.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400, //color of shadow
                        spreadRadius: 3, //spread radius
                        blurRadius: 10, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Text(
                          title,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Text(
                          article,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  )),
              FloatingActionButton(
                onPressed: () {},
                mini: true,
                backgroundColor: iconColor,
                child: Icon(icon),
              )
            ],
          )
        ],
      ),
    );
  }
}
