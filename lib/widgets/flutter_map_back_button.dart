import 'package:flutter/material.dart';

class FlutterMapBackButton extends StatelessWidget {
  final bool mini;
  final double padding;
  final Alignment alignment;

  const FlutterMapBackButton({
    super.key,
    this.mini = true,
    this.padding = 20,
    this.alignment = Alignment.topLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.all(padding),
            child: FloatingActionButton(
              heroTag: 'backButton',
              mini: mini,
              backgroundColor: Colors.white,
              onPressed: () {
                debugPrint("back");
              },
              child: Icon(Icons.arrow_back,
                  color: IconTheme.of(context).color),
            ),
          ),
        ],
      ),
    );
  }
}
