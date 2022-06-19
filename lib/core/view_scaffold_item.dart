import 'package:flutter/material.dart';
import 'package:us_re/atomic/view_widgets/scrollable_view_item.dart';
import 'package:us_re/atomic/view_widgets/view_big_item.dart';

/// This is the main Scaffold item in views.

class BodyItem extends StatelessWidget {
  const BodyItem(
      {Key? key,
      required this.listItem,
      required this.index,
      required this.imageText,
      required this.listWidget,
      required this.backgroundNote})
      : super(key: key);

  /// This is the list item. It is accepts a list of [String]s for images.
  final List<String> listItem;

  /// When you add new item, dont forget to check its index.
  final int index;
  final String imageText;
  final List<ScrollableViewItem> listWidget;
  final String backgroundNote;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ScreenBigItem(
              note: imageText,

              /// I could use just simple image path. But i prefer use lists of indexes.
              assetImage: listItem[index],

              bacgroundNote: backgroundNote,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                addAutomaticKeepAlives: true,
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: listWidget,
              ),
            )
          ],
        ),
      ),
    );
  }
}
