import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30.0,
          onPressed: () => {},
        ),
        title: Text('Food Delivery'),
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20.0, color: Colors.white)),
              onPressed: () => {},
              child: Text('Cart (${currentUser.cart.length})'))
        ],
      ),
    );
  }
}
