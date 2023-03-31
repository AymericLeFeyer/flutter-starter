import 'package:flutter/material.dart';
import 'package:starter/ui/extensions/page.extension.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Example")).page;
  }
}
