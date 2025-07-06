import 'package:flutter/material.dart';

class ContactListItemModel {
  final String name;
  final String job;
  final String image;
  List<String>? keywords;
  VoidCallback? ontap;

  ContactListItemModel(
      {required this.name,
      this.keywords,
      required this.job,
      required this.image,
      this.ontap});
}
