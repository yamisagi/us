import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// When you want to use a widget in main views, you can use this  [ScrollableViewItem] .
/// 

class ScrollableViewItem extends StatelessWidget {
  const ScrollableViewItem({
    Key? key,
    required this.alertTitle,
    required this.alertMessage,
    required this.imagePath,
  }) : super(key: key);

  final String alertTitle;
  final String alertMessage;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Transform.translate(
          //original 50,-50
          offset: const Offset(50, -50),
          child: Container(
            //orginal 65,65
            margin: const EdgeInsets.symmetric(horizontal: 65, vertical: 65),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: IconButton(
              icon: const Icon(
                Icons.favorite,
                // 20
                size: 15,
              ),
              onPressed: () {
                // I prefer to use CupertinoAlertDialog it looks like good for this project.
                showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text(
                          alertTitle,
                          style: const TextStyle(color: Colors.red),
                        ),
                        content: Text(alertMessage,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            )),
                        actions: [
                          CupertinoDialogAction(
                            child: const Icon(
                              Icons.favorite,
                              size: 20,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                    });
              },
            ),
          ),
        ),
      ),
    );
  }
}
