import 'package:flutter/material.dart';

import 'container_animations.dart';

class HomePage2 extends StatefulWidget {
  HomePage2({Key? key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late ContainerAnimations containerAnimations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
      reverseDuration: const Duration(milliseconds: 1000),
    );

    containerAnimations = ContainerAnimations(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (_controller.isDismissed) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
              },
              child: Text('Pinchame'),
            ),
            AnimatedBuilder(
              animation: containerAnimations.controller,
              builder: (context, child) => Container(
                alignment: Alignment.center,
                color: containerAnimations.colorAnimation.value,
                height: containerAnimations.heightAnimation.value,
                width: containerAnimations.widthAnimation.value,
                child: Opacity(
                  opacity: containerAnimations.opacityAnimation.value,
                  child: Text(
                    'Hola',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
