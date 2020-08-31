import 'dart:ui';
import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
    border: OutlineInputBorder(
    borderRadius: const BorderRadius.all(
    const Radius.circular(30),
        ),
    ),
    filled: true,
    labelStyle: TextStyle(color: Colors.grey),
    fillColor: Colors.white);