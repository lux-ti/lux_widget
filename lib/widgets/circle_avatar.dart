import 'package:flutter/material.dart';

class XCircleAvatar extends StatelessWidget {
  final String image;
  final String initials;
  final double radius;

  const XCircleAvatar(
      {Key? key, required this.image, required this.initials, this.radius = 16})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Color.fromRGBO(247, 247, 247, 1),
        radius: radius,
        backgroundImage: image == "" ? null : NetworkImage(image),
        child: image == ""
            ? Text(
                initials,
                style: TextStyle(color: Colors.black),
              )
            : null);
  }
}
