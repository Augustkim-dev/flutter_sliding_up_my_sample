import 'package:flutter/material.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';

class SlidingPanelOri extends StatefulWidget {
  const SlidingPanelOri({super.key});

  @override
  State<SlidingPanelOri> createState() => _SlidingPanelOriState();
}

class _SlidingPanelOriState extends State<SlidingPanelOri> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliding Panel'),
      ),
      body: SlidingUpPanel(
        body: const Center(child: Text('This is Center Widget of Main Back')),
        scrollController: scrollController,
        panelBuilder: () {
          return scrollingListView();
        },
      ),
    );
  }

  Widget scrollingListView() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Text('$index');
      },
      itemCount: 50,
      controller: scrollController,
    );
  }
}
