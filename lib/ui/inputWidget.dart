import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';

class InputWidget extends StatelessWidget {
  final double circularSize;
  final String hint;

  InputWidget(this.circularSize, this.hint);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: NeuomorphicContainer(
        child: TextField (

        ),
        height: 60,
        borderRadius: BorderRadius.circular(30),
        intensity: 0.1,
        offset: Offset(2, 20),
        color: Colors.white,
        blur: 16,
        style: NeuomorphicStyle.Concave,
      ),
    );
  }
}
