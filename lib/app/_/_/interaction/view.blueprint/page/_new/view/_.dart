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
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Text("NewView")
          .textStyle(Theme.of(context).textTheme.displaySmall!)
          .fontWeight(FontWeight.bold)
          .textAlignment(TextAlign.center)
          .center(),
      floatingActionButton: FloatingActionButtonKit(),
    );
  }
}


main() async {
  return buildApp(appHome: NewView());
}