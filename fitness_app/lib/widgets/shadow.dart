import 'package:flutter/material.dart';

final bigPicShadow = BoxShadow(
  color: const Color.fromRGBO(0, 0, 0, 0.25).withOpacity(0.25),
  spreadRadius: 0,
  blurRadius: 20,
  offset: const Offset(
    4,
    10,
  ), // changes position of shadow
);
