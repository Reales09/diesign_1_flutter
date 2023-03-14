import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //landscape
          Image(image: AssetImage('assets/big-one.jpg')),
          //titulo
          Title(),
          // Button Section
          ButtonSection(),
          //Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
                'Aliquip cupidatat culpa do deserunt dolore labore consequat mollit nulla commodo. Consequat amet commodo eiusmod ullamco consectetur eiusmod labore id magna ea reprehenderit cupidatat non minim. Labore anim excepteur pariatur et amet tempor est duis eu voluptate nisi anim. Laboris sint magna quis exercitation. Ea dolor laborum elit sint ex aliquip aute adipisicing Lorem labore duis anim. Ad dolor et officia sunt reprehenderit. Do do magna ipsum ipsum mollit enim laboris enim elit irure aute ea deserunt tempor.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(
            text: 'CALL',
            icon: Icons.phone,
          ),
          CustomButton(text: 'ROUTE', icon: Icons.route),
          CustomButton(
            text: 'SHARE',
            icon: Icons.share,
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
