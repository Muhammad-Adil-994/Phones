import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});
  List items = [
    {
      'title': 'Galaxy Z fold 12 gb',
      'price': 'Rs 230,000',
      'image':'assets/images/SamsungGalaxyZFold412GB-b.jpg'
    },
    {
      'title': 'Galaxy s22 ultra 16 gb',
      'price': 'Rs 430,000',
      'image':'SamsungGalaxyS21Plus-b.jpg'
    },
    {
      'title': 'Galaxy s22 16 gb',
      'price': 'Rs 230,000',
      'image':'assets/images/SamsungGalaxyS21Plus-b.jpg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
            height: height * 0.35,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: items.length,
              itemBuilder: (context, index){
                return Container(
                  height: 100,
                  width: width * 0.4,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 2,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(0,0),
                        ),

                      ]
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage(items[index]['image']), height: height * 0.35, width: width * 0.35,  fit: BoxFit.fitHeight,),
                      Text(items[index]['title']),
                      Text(items[index]['price'])
                    ],
                  ),
                );
              },
            ),
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
