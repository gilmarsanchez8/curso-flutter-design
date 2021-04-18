import 'dart:ui';

import 'package:flutter/material.dart';

class CartTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.border_all, text: 'General'),
            _SingleCard(color: Colors.blueAccent, icon: Icons.car_rental, text: 'Transport')
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.purple, icon: Icons.shop, text: 'Shopping'),
            _SingleCard(color: Colors.purpleAccent, icon: Icons.cloud, text: 'Bill')
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.deepPurple, icon: Icons.movie, text: 'Entertainment'),
            _SingleCard(color: Colors.deepPurpleAccent, icon: Icons.food_bank_outlined, text: 'Grocery')
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.red, icon: Icons.chat, text: 'Chat'),
            _SingleCard(color: Colors.redAccent, icon: Icons.dashboard, text: 'Dashboard')
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key, 
    required this.icon,
    required this.color, 
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(
                    this.icon,
                    size: 35,
                    color: Colors.white,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  this.text,
                  style: TextStyle(color: this.color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
