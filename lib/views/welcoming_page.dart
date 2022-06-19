import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:us_re/atomic/dumb/stack_blur_item.dart';
import 'package:us_re/atomic/welcome_page/welcome_card.dart';
import 'package:us_re/atomic/welcome_page/welcome_appbar.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: [
          WelcomePageAppBar(localizations: localizations.title),
          SliverGrid.count(
            crossAxisCount: 1,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            children: [
              ListView(
                physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                addAutomaticKeepAlives: false,
                scrollDirection: Axis.horizontal,
                children: [
                  WelcomeCard(
                    imagePath: 'assets/widget/ss.jpg',
                    title: localizations.beforeView,
                    route: '/before',
                  ),
                  WelcomeCard(
                    imagePath: 'assets/widget/ss.jpg',
                    title: localizations.engagement,
                    route: '/engagement',
                  ),
                  WelcomeCard(
                      title: localizations.marriage,
                      route: '/marriage',
                      imagePath: 'assets/widget/ss.jpg'),
                ],
              ),
              SizedBox(
                child: Column(
                  children: [
                    AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        WavyAnimatedText(localizations.mainmessage,
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(
                                    color: Colors.red[300],
                                    fontSize: 30,
                                    fontFamily: 'Righteous')),
                      ],
                    ),
                    const SizedBox(height: 75),
                    const StackBlurItem(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
