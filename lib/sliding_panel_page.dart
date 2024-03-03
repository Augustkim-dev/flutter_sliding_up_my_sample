import 'package:flutter/material.dart';
import 'package:flutter_sliding_up_panel/sliding_up_panel_widget.dart';

class SlidingPanelPage extends StatefulWidget {
  const SlidingPanelPage({super.key});

  @override
  State<SlidingPanelPage> createState() => _SlidingPanelPageState();
}

class _SlidingPanelPageState extends State<SlidingPanelPage> {
  SlidingUpPanelController slidingUpController = SlidingUpPanelController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text('Slding Up Panel'),
          ),
          body: Container(
            color: Colors.blue,
          ),
        ),
        SlidingUpPanelWidget(
            child: Container(
              color: Colors.amber,
            ),
            controlHeight: 50.0,
            panelController: slidingUpController),
      ],
    );
  }
}
