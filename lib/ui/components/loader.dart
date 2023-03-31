import 'package:flutter/material.dart';
import 'package:starter/utils/constants.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.039,
          width: MediaQuery.of(context).size.width * 0.0831,
          child: CircularProgressIndicator(
            color: MyColors.accent,
            value: null,
          ),
        ),
      ],
    );
  }
}
