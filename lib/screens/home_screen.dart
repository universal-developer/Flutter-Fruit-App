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
              icon: const Icon(CupertinoIcons.text_alignleft)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.bag)),
              const SizedBox(width: 20),
              CircleAvatar(
                backgroundImage: AssetImage('assets/Profile.png'),
              )
            ],
          )),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: Container(
                child: Center(
                  child: Text(
                    'This is a Container',
                    textScaleFactor: 2,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: greyColor),
                height: 250,
                width: 350),
          ),
        ],
      ),
    );
  }
}
