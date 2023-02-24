import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_site/webview/views/portfolioview.dart';
import 'package:personal_site/webview/views/homeview.dart';
import 'package:sprung/sprung.dart';

class SinglePageView extends StatelessWidget {
  int _index = 0;

  final pageController = PageController();

  final _animationDuration = const Duration(milliseconds: 1500);

  final _curve = Sprung.criticallyDamped;

  // final _animationDuration = const Duration(milliseconds: 500);
  final List<Widget> _list = [
    const HomeView(),
    const PortfolioView(),
    Center(
        child: Pages(
      text: "Page 3",
    )),
    Center(
        child: Pages(
      text: "Page 4",
    ))
  ];

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (pointerSignal) {
        if (pointerSignal is PointerScrollEvent) {
          if (pointerSignal.scrollDelta.dy > 0) {
            pageController.nextPage(
                curve: _curve, duration: _animationDuration);
          } else {
            pageController.previousPage(
                duration: _animationDuration, curve: _curve);
          }
        }
      },
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        onPageChanged: (index) {
          _index = index;
        },
        children: _list,
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final text;
  Pages({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }
}
