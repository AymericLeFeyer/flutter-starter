import 'package:flutter/material.dart';
import 'package:starter/utils/constants.dart';

extension Title on Text {
  Text get title => Text(
        data!,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: MyColors.primary,
        ),
      );

  Text get h1 => Text(
        data!,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      );

  Text get h2 => Text(
        data!,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      );
}
