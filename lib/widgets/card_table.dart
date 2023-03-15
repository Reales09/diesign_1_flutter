import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              text: 'General',
              icon: Icons.border_all,
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              text: 'Transport',
              icon: Icons.car_rental,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.amber,
              text: 'Shopping',
              icon: Icons.shop,
            ),
            _SingleCard(
              color: Colors.indigo,
              text: 'Profile',
              icon: Icons.person,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blueGrey,
              text: 'Cloud',
              icon: Icons.cloud,
            ),
            _SingleCard(
              color: Colors.cyan,
              text: 'Bill',
              icon: Icons.wallet,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.deepOrange,
              text: 'Share',
              icon: Icons.share,
            ),
            _SingleCard(
              color: Colors.green,
              text: 'Play',
              icon: Icons.gamepad_outlined,
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 35,
          ),
          radius: 25,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 18),
        )
      ]),
    );
  }
}
