import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff0E0734),
        body: SafeArea(
          child: Dice(),
        ),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> with SingleTickerProviderStateMixin {
  int diceFaceNumber = 1;
  bool isDiceRolling = false;

  AnimationController _animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..addListener(
        () {
          if (_animationController.status == AnimationStatus.completed) {
            setState(
              () {
                diceFaceNumber = Random().nextInt(6) + 1;
              },
            );
            isDiceRolling = false;
          }
        },
      );

    animation =
        CurvedAnimation(parent: _animationController, curve: Curves.elasticIn);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Preloading images for smooth, real-time transition between images
    precacheImage(Image.asset('images/face1.png').image, context);
    precacheImage(Image.asset('images/face2.png').image, context);
    precacheImage(Image.asset('images/face3.png').image, context);
    precacheImage(Image.asset('images/face4.png').image, context);
    precacheImage(Image.asset('images/face5.png').image, context);
    precacheImage(Image.asset('images/face6.png').image, context);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void changeDiceFace() {
    // Start the animation and change dice face once animation is completed.
    _animationController.forward(from: 0.0);

    // play the audio file
    final player = AudioCache();
    player.play('sound_dice_roll.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: RotationTransition(
            alignment: Alignment.center,
            turns: animation,
            child: FractionallySizedBox(
              widthFactor: 0.35,
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  if (isDiceRolling == false) {
                    isDiceRolling = true;
                    changeDiceFace();
                  }
                },
                child: Image.asset('images/face$diceFaceNumber.png'),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              '#FutureGrit',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[850],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
