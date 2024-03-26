import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

ElevatedButton signInWithGoogleButton({required void Function() onPressed}) {
  return ElevatedButton.icon(
    onPressed: () {},
    icon: Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Brand(
        Brands.google,
        size: 25,
      ),
    ),
    label: const Text("Sign in with Google"),
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all(const Color.fromRGBO(66, 133, 244, 1)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      padding: MaterialStateProperty.all(
        const EdgeInsets.only(
          top: 4,
          bottom: 4,
          left: 4,
          right: 10,
        ),
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          foreground: Paint()
            ..style = PaintingStyle.fill
            ..strokeCap = StrokeCap.round
            ..strokeWidth = 2
            ..color = Colors.white,
        ),
      ),
    ),
  );
}
