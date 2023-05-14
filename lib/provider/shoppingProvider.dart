import 'package:education_app/modal/dataModal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ShoppingProvider extends ChangeNotifier {
  List<DataModal> infoList = [
    DataModal(
        name: "Quizlet",
        link: "https://quizlet.com/",
        path: "assets/images/1.jpg"),
    DataModal(
        name: "Byjus", link: "https://byjus.com/", path: "assets/images/2.jpg"),
    DataModal(
        name: "scribd",
        link: "https://www.scribd.com/",
        path: "assets/images/3.jpg"),
    DataModal(
        name: "udemy",
        link: "https://www.udemy.com/",
        path: "assets/images/4.jpg"),
    DataModal(
        name: "Duolingo",
        link: "https://www.duolingo.com/",
        path: "assets/images/5.jpg"),
    DataModal(
        name: "Grammarly",
        link: "https://www.grammarly.com/",
        path: "assets/images/6.jpg"),
    DataModal(
        name: "Powerschool",
        link: "https://www.powerschool.com/",
        path: "assets/images/7.jpg"),
    DataModal(
        name: "Chegg",
        link: "https://www.chegg.com/",
        path: "assets/images/8.jpg"),
    DataModal(
        name: "Academia.edu",
        link: "https://www.academia.edu",
        path: "assets/images/9.jpg"),
    DataModal(
        name: "Coursera",
        link: "https://www.coursera.org/",
        path: "assets/images/10.jpg"),
    DataModal(
        name: "Khan academy",
        link: "https://www.khanacademy.org/",
        path: "assets/images/11.jpg"),
    DataModal(
        name: "Brainly",
        link: "https://brainly.in/",
        path: "assets/images/12.jpg"),
    DataModal(
        name: "Vedantu",
        link: "https://www.vedantu.com/",
        path: "assets/images/13.jpg"),
    DataModal(
        name: "Coursehero",
        link: "https://www.coursehero.com/",
        path: "assets/images/14.jpg"),
  ];
}
