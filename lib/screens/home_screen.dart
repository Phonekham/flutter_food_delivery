import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/data/data.dart';
import 'package:flutter_food_delivery/widgets/recent_orders.dart';

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
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                  decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(width: 0.8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                      width: 0.8, color: Theme.of(context).primaryColor),
                ),
                hintText: 'Search Food',
                prefixIcon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                suffixIcon:
                    IconButton(icon: Icon(Icons.clear), onPressed: () {}),
              ))),
          RecentOrders()
        ],
      ),
    );
  }
}
