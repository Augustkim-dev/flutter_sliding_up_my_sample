import 'package:flutter/material.dart';
import 'package:flutter_sliding_up_my_sample/sliding_panel_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SlidingPanelPage()));
            },
            child: Text('Sliding Panel')),
      ),
    );
  }
}
