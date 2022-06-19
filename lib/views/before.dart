import 'package:flutter/material.dart';
import 'package:us_re/atomic/view_widgets/scrollable_view_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:us_re/core/view_scaffold_item.dart';

class BeforeView extends StatefulWidget {
  const BeforeView({Key? key}) : super(key: key);

  @override
  State<BeforeView> createState() => _BeforeViewState();
}

class _BeforeViewState extends State<BeforeView> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    List<String> listItem = [
      /// Insert your image path here.
      'assets/widget/ss.jpg',

      'assets/widget/ss.jpg',

      'assets/widget/ss.jpg',

      'assets/widget/ss.jpg',

      'assets/widget/ss.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Title',
          style: Theme.of(context)
              .appBarTheme
              .titleTextStyle
              ?.copyWith(color: Colors.red),
        ),
        actions: [
          imageChanger(listItem),
        ],
      ),
      body: BodyItem(
        backgroundNote: localizations.viewmessage,
        listWidget: [
           /// When you add new item, dont forget to check its index.
          ScrollableViewItem(
              alertTitle: 'Time',
              alertMessage: localizations.generalmessage,
              imagePath: listItem[0]),
          ScrollableViewItem(
              alertTitle: 'Time',
              alertMessage: localizations.generalmessage,
              imagePath: listItem[0]),
          ScrollableViewItem(
              alertTitle: 'Time',
              alertMessage: localizations.generalmessage,
              imagePath: listItem[0]),
          ScrollableViewItem(
              alertTitle: 'Time',
              alertMessage: localizations.generalmessage,
              imagePath: listItem[0]),
          ScrollableViewItem(
              alertTitle: 'Time',
              alertMessage: localizations.generalmessage,
              imagePath: listItem[0]),
          ScrollableViewItem(
              alertTitle: 'Time',
              alertMessage: localizations.generalmessage,
              imagePath: listItem[0]),
          ScrollableViewItem(
              alertTitle: 'Time',
              alertMessage: localizations.generalmessage,
              imagePath: listItem[0]),
          ScrollableViewItem(
              alertTitle: 'Time',
              alertMessage: localizations.generalmessage,
              imagePath: listItem[0]),
          ScrollableViewItem(
              alertTitle: 'Time',
              alertMessage: localizations.generalmessage,
              imagePath: listItem[0]),
        ],
        listItem: listItem,
        index: index,
        imageText: 'Wavy Message',
      ),
    );
  }

  IconButton imageChanger(List<String> listItem) {
    return IconButton(
      icon: const Icon(Icons.favorite),
      onPressed: () {
        setState(() {
          if (index < listItem.length - 1) {
            index++;
          } else {
            index = 0;
          }
        });
      },
    );
  }
}
