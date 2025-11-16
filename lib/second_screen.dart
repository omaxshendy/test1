import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task1/text_provider.dart';

class SecondScreen extends ConsumerWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final padding = MediaQuery.of(context).padding;
    final text = ref.watch(textProvider);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.square(100),
        child: AppBar(
          title: Column(
            children: [
              SizedBox(height: padding.top),
              Text(
                "second screen",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlue, Colors.red],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              text == "" ? "no text" : text,
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.w800,
                fontSize: 70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
