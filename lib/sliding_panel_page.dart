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
          // 전체 배경
          body: Container(
            child: Image.network('https://picsum.photos/250?image=9'),
          ),
        ),
        SlidingUpPanelWidget(
            // ignore: sort_child_properties_last
            child: Container(
              color: Colors.amber,
              child: Column(
                children: [
                  // 최상단 가로줄 바
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // 회색으로 정중앙에 맞춰서 만들어서 넣기
                        Container(
                          width: 30,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0))),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  // 리스트뷰를 빌드로 넣어줄 곳
                  Container(
                    child: Flexible(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Text('$index');
                        },
                        itemCount: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            controlHeight: 50.0,
            panelController: slidingUpController),
      ],
    );
  }
}
