import 'package:flutter/material.dart';

class FlutterMapDetail extends StatelessWidget {
  final bool mini;
  final double padding;
  final Alignment alignment;

  const FlutterMapDetail({
    super.key,
    this.mini = true,
    this.padding = 20,
    this.alignment = Alignment.bottomCenter,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(padding),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 320),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        constraints: const BoxConstraints(maxHeight: 60),
                        child: const Image(
                          image: NetworkImage(
                              "https://www.chula.ac.th/wp-content/uploads/2018/01/chula-faculty-arts-hero-desktop-1024x640.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "Chulalongkorn University",
                                maxLines: 1,
                                style: TextStyle(fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 2),
                                child: Text(
                                  "254 ถนนพญาไท แขวงวังใหม่ เขตปทุมวัน กรุงเทพมหานคร 10330",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 4),
                                child: Text(
                                  "Tel: 0 2215 3555",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: ElevatedButton(
                                  onPressed: () =>
                                      {debugPrint("Make an appointment")},
                                  child: const Text(
                                    "Make An Appointment",
                                    style: TextStyle(fontSize: 11),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
