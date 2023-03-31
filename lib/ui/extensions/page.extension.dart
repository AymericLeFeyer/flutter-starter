import 'package:flutter/material.dart';

extension Page on Scaffold {
  Scaffold get page => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: body!,
          ),
        ),
      );
}
