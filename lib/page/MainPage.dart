///
/// Created by NieBin on 2019/6/22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
import "package:flutter/material.dart";
import 'package:pvoice/helper/_helper.dart';

class MainPage extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MainPage> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    Strings.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.APP_NAME),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(Strings.HOME_PAGE_),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text(Strings.MINE_),
          ),
        ],
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("This is float button.");
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
