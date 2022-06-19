import 'package:flutter/material.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    Key? key,
    required this.title,
    required this.route,
    required this.imagePath,
  }) : super(key: key);

  final String title;
  final String route;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      margin: const EdgeInsets.all(30),
      child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(route);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Text(
              textAlign: TextAlign.center,
              title,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.white, fontSize: 30, fontFamily: 'Righteous'),
            ),
          )),
    );
  }
}
