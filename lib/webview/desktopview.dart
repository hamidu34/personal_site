import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_site/webview/Components/animated_button.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 1 / 8),
      decoration: const BoxDecoration(
        color: Color(0xff151621),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(30),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedButton(title: 'Home', index: '1'),
                    AnimatedButton(title: 'Portfolio', index: '2'),
                  ],
                ),
                Expanded(
                    child: SizedBox(
                  child: Center(
                    child: Text(
                      'HM',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedButton(title: 'Projects', index: '3'),
                    AnimatedButton(title: 'Contact Me', index: '4'),
                  ],
                ),
              ],
            ),
            const Gap(50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: '<p>',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey.shade700),
                    children: const [
                      TextSpan(
                        text: 'This is',
                        style: TextStyle(
                          color: Color(0xff00ff96),
                        ),
                      ),
                      TextSpan(
                        text: '</p>',
                      ),
                    ],
                  ),
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '<h1>\n',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey.shade700,
                            ),
                        children: const [
                          TextSpan(
                              text: 'HAMID\nMUSTAFA',
                              style: TextStyle(
                                  fontSize: 100, color: Colors.white)),
                          TextSpan(
                            text: '\n</h1>',
                          ),
                        ],
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      child: const CircleAvatar(
                        radius: 80,
                        child: Text('My Resume'),
                      ),
                    )
                  ],
                ),
                const Gap(30),
                RichText(
                  text: TextSpan(
                    text: '<p>',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey.shade700),
                    children: const [
                      TextSpan(
                        text: 'Full-Stack Mobile Developer',
                        style: TextStyle(
                          color: Color(0xff00ff96),
                        ),
                      ),
                      TextSpan(
                        text: '</p>',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
