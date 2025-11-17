import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task1/second_screen.dart';
import 'text_provider.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final padding = MediaQuery.of(context).padding;
    final text = ref.watch(textProvider);
    return Scaffold(
      // Why not use AppBar Directly ?
      appBar: PreferredSize(
        preferredSize: Size.square(100),
        child: AppBar(
          title: Column(
            children: [
              // why the column widget and the SizedBox ?
              SizedBox(height: padding.top),
              Text(
                // No worries it would do the job XD
                "IDK if this header is considered stylized",
                style: TextStyle(color: Colors.pink, fontSize: 30),
              ),
            ],
          ),
          backgroundColor: Colors.yellow,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      // Perfecto 
                      // Nicely handled
                      ref.read(textProvider.notifier).state = value;
                    },
                  ),
                ),
                // we get confused sometimes it happens XD
                // You can use spacing attribute in the Row widget
                // spacing: 20,
                SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SecondScreen()),
                      );
                    },
                    child: Text("go"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
