import 'package:education_app/provider/shoppingProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ShoppingProvider? providerF;
  ShoppingProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<ShoppingProvider>(context, listen: false);
    providerT = Provider.of<ShoppingProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black12,
            leading: Icon(Icons.menu, color: Colors.black54, size: 22),
            actions: [
              Icon(Icons.share, color: Colors.black54, size: 22),
              SizedBox(width: 15),
              Icon(Icons.local_fire_department,
                  color: Colors.black54, size: 22),
              SizedBox(width: 10),
            ],
            title: Text(
              "All in one Education",
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          backgroundColor: Colors.white,
          body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) => print(index),
            itemCount: providerF!.infoList.length,
          )),
    );
  }

  Widget print(int index) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'visit', arguments: index);
        },
        child: Container(
          color: Colors.black12,
          height: 250,
          width: 250,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    topLeft: Radius.circular(25)),
                child: Image.asset(
                  "${providerF!.infoList[index].path}",
                  height: 120,
                  width: 120,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "${providerF!.infoList[index].name}",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
        ));
  }
}
