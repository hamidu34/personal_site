import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class AnimatedButton extends StatefulWidget {
  final String index;
  final String title;
  AnimatedButton({
    required this.index,
    required this.title,
  });

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool hovering = false;

  void onEntered(bool hovering) {
    setState(() {
      this.hovering = hovering;
    });
  }

  void onExited(bool hovering) {
    setState(() {
      this.hovering = hovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    final onHoverTransform = Matrix4.identity()..translate(8, 0, 0);
    final transform = hovering ? onHoverTransform : Matrix4.identity();
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      opaque: false,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onExited(false),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 40.0,
            width: 180,
            child: Center(
              child: AnimatedContainer(
                transform: transform,
                curve: Sprung.overDamped,
                duration: const Duration(milliseconds: 500),
                child: RichText(
                  text: TextSpan(
                    text: '//0${widget.index}. ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: hovering ? const Color(0xff00ff96) : null),
                    children: [
                      TextSpan(
                        text: ' <${widget.title}/>',
                        mouseCursor: MaterialStateMouseCursor.clickable,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          AnimatedContainer(
            transform: transform,
            transformAlignment: Alignment.center,
            curve: Sprung.overDamped,
            duration: const Duration(milliseconds: 700),
            height: 40.0,
            width: hovering ? 180.0 : 0,
            decoration: BoxDecoration(
              color: hovering
                  ? const Color(0xff00ff96).withOpacity(0.1)
                  : Colors.transparent,
              border: Border.all(
                  color:
                      hovering ? const Color(0xff00ff96) : Colors.transparent,
                  width: 2),
            ),
          )
        ],
      ),
    );
  }
}
