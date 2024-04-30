import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LayoutWidgetPage extends StatelessWidget {
  const LayoutWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Layout Page'),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Widget 1'),
              Text('Widget 2'),
              Container(
                color: Colors.amber,
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height,
              )
              // Flexible(
              //   child: Row(
              //     children: [
              //       Expanded(
              //         flex: 2,
              //         child: Column(
              //           children: [
              //             Flexible(
              //               child: Container(
              //                 color: Colors.red,
              //               ),
              //             ),
              //             Flexible(
              //               child: Container(
              //                 color: Colors.yellow,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       Expanded(
              //         child: Container(
              //           color: Colors.blue,
              //         ),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
