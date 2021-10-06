import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: ShapeDecoration(
        color: Colors.orange,
        shadows: [
          BoxShadow(
              blurRadius: 5.0,
              spreadRadius: 2.0,
              color: const Color(0x11000000))
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.keyboard_arrow_up,
                  size: 40,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            height: 50.0,
          ),
          Divider(
            height: 0.5,
            color: Colors.grey[300],
          ),
          Flexible(
            child: Container(
              height: 280,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('images/gx.jpg'),
                    Image.asset('images/middle.jpg'),
                    Image.asset('images/witcher.jpg'),
                    Image.asset('images/gx.jpg'),
                  ],
                ),
              ),
              color: Colors.white,
            ),
          ),
        ],
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }
}