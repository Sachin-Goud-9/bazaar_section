import 'package:bazzarapp/ui/offer_list_ui_page.dart';
import 'package:bazzarapp/ui/startPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current_tab = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showDialog<bool>(
        context: context,
        builder: (c) => AlertDialog(
          title: Text('Warning'),
          content: Text('Do you really want to exit'),
          actions: <Widget>[
            FlatButton(
              child: Text('Yes'),
              onPressed: () => Navigator.pop(c,true),
            ),
            FlatButton(
              child: Text('Np'),
              onPressed: () => Navigator.pop(c,false),
            ),
          ],
        )
        ),
          child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueAccent,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              current_tab = index;
            });
          },
          currentIndex: current_tab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              title: Text("Bazzar"),
            ),
          ],
          selectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          selectedItemColor: Colors.white,
          unselectedIconTheme: IconThemeData(
            color: Colors.black87
          ),
          unselectedItemColor: Colors.grey[700],
        ),
        body: IndexedStack(
          children: <Widget>[
            StartPage(),
            OfferListPage(),
          ],
          index: current_tab,
        ),
      ),
    );
  }
}