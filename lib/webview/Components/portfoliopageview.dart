import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/travel.png'))),
        const Gap(10),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '<p>',
              style: textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w300, color: Colors.grey.shade700),
            ),
            Text(
              'Travel App',
              style: textTheme.titleLarge!.copyWith(
                  fontSize: MediaQuery.of(context).size.aspectRatio * 20,
                  color: Color(0xff00ff96)),
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
              style: textTheme.bodyLarge,
            ),
            Text(
              '<p>',
              style: textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w300, color: Colors.grey.shade700),
            ),
          ],
        )),
      ],
    );
  }
}
