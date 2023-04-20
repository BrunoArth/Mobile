import 'package:flutter/material.dart';
import 'package:flutter_start/counter_display.dart';
import 'package:flutter_start/my_button.dart';

class TutorialHome extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const TutorialHome({Key? key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example Tutorial Title'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CounterD()))
            },
          ),
        ],
      ),
      // body is the majority of the screen.
      body: const Center(
        child: Text('Hello, world!'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyButton()))
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
