import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> tapped = ValueNotifier(false);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                tapped.value = !tapped.value;
              },
              child: Text('Pinchame'),
            ),
            ValueListenableBuilder<bool>(
              valueListenable: tapped,
              builder: (context, value, child) => AnimatedOpacity(
                opacity: value ? 1.0 : 0,
                duration: Duration(milliseconds: 3000),
                curve: Curves.bounceIn,
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: 150,
                  alignment: Alignment.center,
                  child: Text(
                    'ola ke axe',
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
