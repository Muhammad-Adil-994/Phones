import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List items = [
      'Some',
      'of ht e',
      'djjjdjdjdjd',
      'ffffff',
      'Some',
      'of ht e',
      'djjjdjdjdjd',
      'ffffff'
    ];
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          searchsection(height: height, width: width),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          categoriesection(width: width, height: height),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: width,
            height: height * 0.3,
            color: Colors.black,
          )
        ]),
      )),
    );
  }
}

class categoriesection extends StatelessWidget {
  const categoriesection({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.06,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(width * 0.04, 0, 10, 0),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26, width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  'Electronics',
                  style: TextStyle(color: Colors.white),
                )),
              )),
          Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26, width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Some', style: TextStyle(color: Colors.black26)),
                ),
              )),
          Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26, width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text('Some thing here',
                        style: TextStyle(color: Colors.black26))),
              )),
          Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26, width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text('Some thing here',
                        style: TextStyle(color: Colors.black26))),
              )),
          Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26, width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text('Some thing here')),
              ))
        ],
      ),
    );
  }
}

class searchsection extends StatelessWidget {
  const searchsection({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.10,
      width: width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: width * 0.13,
              width: width * 0.71,
              child: Material(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: TextField(
                  obscureText: false,
                  onChanged: (String value) {},
                  cursorColor: Colors.greenAccent,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                ),
              ),
            ),
            Container(
              height: width * 0.13,
              width: width * 0.13,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Icon(
                Icons.app_registration,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
