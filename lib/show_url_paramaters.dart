import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShowUrl extends StatefulWidget {
  const ShowUrl(
      {super.key,
      required this.baseUrl,
      required this.para1,
      required this.para2});
  final String baseUrl;
  final String para1;
  final String para2;

  @override
  State<ShowUrl> createState() => _ShowUrlState();
}

class _ShowUrlState extends State<ShowUrl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Paramaters of url "),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Base URL :- ${widget.baseUrl}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "Paramater1 :- ${widget.para1}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "Paramater2 :- ${widget.para2}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}
