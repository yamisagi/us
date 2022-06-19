  import 'package:flutter/material.dart';
/// I actually forgot to import this package.
/// And why i create this package?
/// ...

Future<dynamic> showLoveDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            titleTextStyle: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black, fontSize: 15),
           // I 
            title: const Text('Coming soon'),
            content: const Text('This feature is not yet available.'),
            actions: [
              Center(
                child: TextButton(
                  child: const Text('OK'),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          );
        });
  }