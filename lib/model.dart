// destination_model.dart
import 'package:flutter/material.dart';

class Destination {
  final String name;
  final double rating;
  final String location;
  final List<String> images;
  final double price;
  final String about;
  final String date;

  Destination({
    required this.name,
    required this.rating,
    required this.location,
    required this.images,
    required this.price,
    required this.about,
    required this.date,
  });
}

class Message {
  final String image;
  final Color colors;
  final String name;
  final String message;
  final String date;
  final Icon icon;
  final String active;
  final TextStyle textStyle;

  Message(
      {required this.image,
      required this.colors,
      required this.name,
      required this.message,
      required this.date,
      required this.icon,
      required this.active,
      required this.textStyle,

      });
}
class Profile{
  final Icon icon;
  final String name;

  Profile({required this.icon, required this.name});
}
