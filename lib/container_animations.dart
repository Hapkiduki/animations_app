import 'package:flutter/material.dart';

class ContainerAnimations {
  final AnimationController controller;

  ContainerAnimations(this.controller)
      : opacityAnimation = Tween<double>(
          begin: 0,
          end: 1,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Curves.bounceIn,
          ),
        ),
        heightAnimation = Tween<double>(
          begin: 70,
          end: 150,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, .2),
          ),
        ),
        widthAnimation = Tween<double>(
          begin: 100,
          end: 150,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.2, .4),
          ),
        ),
        colorAnimation = ColorTween(
          begin: Colors.red,
          end: Colors.blue,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.4, 1),
          ),
        );

  final Animation<double> opacityAnimation;
  final Animation<double> heightAnimation;
  final Animation<double> widthAnimation;
  final Animation<Color?> colorAnimation;
}
