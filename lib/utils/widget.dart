import 'dart:math';

import 'package:flutter/material.dart';

Widget Background1()
{
  return Stack(
    children: [
      Positioned(
        top: -200,
        left: -4,
        child: Container(
          width: 500,
          height: 500,
          decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          height: 800,
          width: double.infinity,
          alignment: Alignment.bottomRight,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          height: 600,
          width: double.infinity,
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 5,
                    blurRadius: 5)
              ]),
        ),
      ),
      Positioned(
          top: 340,
          left: 165,
          child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                width: 215,
                height: 450,
                color: Colors.white,
              ))),
      Positioned(
          top: 195,
          left: 18,
          child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                height: 450,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(
                            color: Colors.white, width: 10))),
                child: Container(
                  width: 195,
                  height: 435,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 5)
                      ]),
                ),
              ))),
      Container(
        margin: EdgeInsets.only(top: 300),
        height: 350,
        width: 25,
        color: Colors.white,
      ),
      Container(
        margin: EdgeInsets.only(top: 300, left: 25),
        height: 330,
        width: 5,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12, spreadRadius: 5, blurRadius: 5)
        ]),
      ),
      Container(
        margin: EdgeInsets.only(top: 260, left: 25),
        height: 373,
        width: 17,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)),
      ),
      Container(
        margin: EdgeInsets.only(top: 75, left: 35),
        height: 350,
        width: 200,
        color: Colors.white,
      ),
      Container(
        margin: EdgeInsets.only(top: 75, left: 135),
        height: 260,
        width: 200,
        color: Colors.white,
      ),
      Positioned(
          top: 340,
          left: 165,
          child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                width: 215,
                height: 450,
                color: Colors.white,
              ))),
      Positioned(
          top: 550,
          left: 145,
          child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                height: 450,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(
                            color: Colors.white, width: 10))),
                child: Container(
                  width: 195,
                  height: 435,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 5)
                      ]),
                ),
              ))),
      Positioned(top: 500,right: 0,child: Container(width: 25,height: 230,color: Colors.white)),
      Positioned(top: 558,right: 19,child: Container(width: 10,height: 255,decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 5,spreadRadius: 5)],color: Colors.white,borderRadius: BorderRadius.circular(20)),)),
      Positioned(top: 555,right: 19,child: Container(width: 20,height: 255,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),)),
    ],
  );
}
