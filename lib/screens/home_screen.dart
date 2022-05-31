import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fruit_app/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: backgroundColor,
          leading: IconButton(
              onPressed: () {},
              splashRadius: 20,
              icon: const Icon(CupertinoIcons.text_alignleft)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.bag)),
              const SizedBox(width: 20),
              InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'),
                  ))
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Center(
                child: _saleCard(),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended Fruits',
                    style: TextStyle(
                      fontSize: 18,
                      color: lightGreyColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      Text('View All',
                          style: TextStyle(
                            color: lightOrangeColor,
                            fontWeight: FontWeight.w900,
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.arrow_right),
                        color: lightOrangeColor,
                        splashRadius: 10,
                      )
                    ],
                  ),
                ],
              ),
              _product()
            ],
          ),
        ),
      ),
    );
  }
}

Widget _saleCard() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50), color: greyColor),
    width: 350,
    child: Stack(
      children: [
        Positioned(
          //<-- SEE HERE
          left: 80,
          bottom: 0,
          child: Container(
            child: Image(
              image: AssetImage('assets/fruits.png'),
            ),
          ),
        ),
        Container(
          width: 270,
          height: 300,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'O F F E R',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffDBA683),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Discount up to 40% Off',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'In honor of World Health Day We’d like to give you this amazing offers.',
                    style: TextStyle(
                      fontSize: 15,
                      color: lightGreyColor,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  width: 270,
                  height: 100,
                  child: ElevatedButton(
                    child: const Text(
                      'View Offers',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffF9A94A),
                      onPrimary: Colors.black,
                      textStyle: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _product() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50), color: greyColor),
    width: 350,
    child: Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Image(image: AssetImage("assets/pineapple.png"))),
      ],
    ),
  );
}
