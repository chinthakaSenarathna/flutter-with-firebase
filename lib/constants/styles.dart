import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/constants/colors.dart';

const TextStyle signInDescription = TextStyle(
  color: textLight,
  fontSize: 13,
  fontWeight: FontWeight.w300
);

const InputDecoration textInputDecoration = InputDecoration(
  hintText: "email",
  hintStyle: TextStyle(
    color: textLight,
    fontSize: 15
  ),
  fillColor: bgBlack,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: mainBlue, width: 1),
    borderRadius: BorderRadius.all(
      Radius.circular(100)
    )
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: mainBlue, width: 2),
    borderRadius: BorderRadius.all(
      Radius.circular(100)
    )
  )
);