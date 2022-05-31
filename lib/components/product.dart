import 'package:flutter/material.dart';
import 'package:fruit_app/colors.dart';
import 'package:flutter/cupertino.dart';

class ProductComponent extends StatelessWidget {
  String rate;
  String category;
  String name;
  String price;

  ProductComponent({
    required this.rate,
    required this.category,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
          color: Colors.black),
      height: 270,
      width: 150,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: productOrangeColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100),
              ),
            ),
            height: 150,
            width: 170,
          ),
          Container(
            child: Positioned(
              bottom: 100,
              child: Image(
                image: AssetImage('assets/pineapples.png'),
              ),
            ),
          ),
          Container(
            child: Positioned(
              top: 155,
              right: 15,
              child: Row(
                children: [
                  const Icon(CupertinoIcons.star_fill,
                      color: orangeColor, size: 15),
                  const SizedBox(width: 5),
                  Text('5.0',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13))
                ],
              ),
            ),
          ),
          Container(
            child: Positioned(
              top: 170,
              left: 15,
              child: Text(
                'F R U I T',
                style: TextStyle(
                  fontSize: 15,
                  color: orangeColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: Positioned(
              top: 195,
              left: 15,
              child: Text(
                'Pineapple',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
          ),
          Container(
            child: Positioned(
              top: 225,
              left: 15,
              child: Text(
                'Rp. 80.000',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: lightOrangeColor,
                ),
              ),
            ),
          ),
          Container(
            child: Positioned(
              top: 233,
              right: 5,
              child: Text(
                'per kg',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
