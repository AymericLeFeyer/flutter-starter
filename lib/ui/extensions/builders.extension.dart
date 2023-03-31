import 'package:flutter/material.dart';
import 'package:starter/ui/components/loader.dart';

extension Builders on FutureBuilder {
  FutureBuilder get loader => FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return builder.call(context, snapshot);
          } else {
            return const Center(child: Loader());
          }
        },
      );
}
