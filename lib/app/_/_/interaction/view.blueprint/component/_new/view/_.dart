import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Text("NewView")
          .textStyle(Theme.of(context).textTheme.displaySmall!)
          .fontWeight(FontWeight.bold)
          .textAlignment(TextAlign.center)
          .center(),
    ).height(300).width(1.sw);
  }
}

main() async {
  return buildApp(appHome: NewView());
}