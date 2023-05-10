import 'package:flutter/material.dart';

class FlutterMapSearchButton extends StatelessWidget {
  final bool mini;
  final double paddingTop;
  final double padding;
  final Alignment alignment;

  const FlutterMapSearchButton({
    super.key,
    this.mini = true,
    this.paddingTop = 120,
    this.padding = 20,
    this.alignment = Alignment.topRight,
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
                EdgeInsets.only(left: padding, right: padding, top: paddingTop, bottom: paddingTop),
            child: FloatingActionButton(
              heroTag: 'searchButton',
              mini: mini,
              backgroundColor: Colors.white,
              onPressed: () {
                debugPrint("search");
              },
              child: Icon(Icons.search,
                  color: IconTheme.of(context).color),
            ),
          ),
        ],
      ),
    );
  }
}
