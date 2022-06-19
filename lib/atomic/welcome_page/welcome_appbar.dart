import 'package:flutter/material.dart';
import 'welcome_button_dialog.dart';

class WelcomePageAppBar extends StatelessWidget {
  const WelcomePageAppBar({
    Key? key,
    required this.localizations,
  }) : super(key: key);

  final String localizations;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // Temporary color for tracking. Default will be transparent.
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        centerTitle: true,
        background: Image.asset(
          //* You can change the image here. Temporarily I use this image.
          'assets/widget/ss.jpg',
          fit: BoxFit.cover,
        ),
        titlePadding: const EdgeInsets.only(bottom: 190),
        title: Text(localizations,
            style: Theme.of(context).textTheme.headline4),
      ),
      expandedHeight: 250,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      actions: [
        IconButton(
          icon: Icon(
            Icons.favorite_border_outlined,
            color: Theme.of(context).iconTheme.color,
            size: Theme.of(context).iconTheme.size,
          ),
          onPressed: () => showLoveDialog(context),
        ),
      ],
    );
  }
}
