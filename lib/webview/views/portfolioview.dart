import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_site/webview/Components/portfoliopageview.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sprung/sprung.dart';

import '../../helper/scrollbehavior.dart';
import '../single_pageview.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final pageController = PageController();

    final List<Widget> _list = [
      PortfolioPage(),
      Center(
          child: Pages(
        text: "Page",
      )),
      Center(
          child: Pages(
        text: "Page",
      )),
      Center(
          child: Pages(
        text: "Page",
      ))
    ];

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 1 / 8),
      decoration: const BoxDecoration(
        color: Color(0xff151621),
      ),
      child: Column(
        children: [
          const Gap(30),
          RichText(
            text: TextSpan(
              text: '<h2>\n',
              style: textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey.shade700,
                  height: 0.8),
              children: [
                TextSpan(
                    text: 'My Portfolio',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio * 30,
                        color: Colors.white)),
                const TextSpan(
                  text: '</h2>',
                ),
              ],
            ),
          ),
          const Gap(30),
          SizedBox(
            height: 400,
            child: PageView(
                scrollBehavior: AppScrollBehavior(),
                controller: pageController,
                children: _list),
          ),
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  pageController.previousPage(
                      duration: Duration(milliseconds: 1500),
                      curve: Sprung.criticallyDamped);
                },
                child: CircleAvatar(
                  radius: 40,
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff00ff96),
                    ),
                  ),
                ),
              ),
              SmoothPageIndicator(
                controller: pageController, // PageController
                count: _list.length,
                effect: const WormEffect(
                  activeDotColor: Color(0xff00ff96),
                ),
              ),
              GestureDetector(
                onTap: () {
                  pageController.nextPage(
                      duration: Duration(milliseconds: 1500),
                      curve: Sprung.criticallyDamped);
                },
                child: CircleAvatar(
                  radius: 40,
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff00ff96),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
