import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../../main.dart';
import 'in_app_notification.dart';

var openWidget = (BuildContext context) async {
  NewNotification(context);
};

class Usage extends StatefulWidget {
  const Usage({super.key});

  @override
  State<Usage> createState() => _UsageState();
}

class _UsageState extends State<Usage> with AfterLayoutMixin<Usage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const Gap(20),
                const Text("In App Notification")
                    .textStyle(Theme.of(context).textTheme.displaySmall!)
                    .fontWeight(FontWeight.bold)
                    .center(),
                const Gap(20),
                _button(context, "open", () {
                  openWidget(context);
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _button(BuildContext context, String label, VoidCallback onTap) =>
      OutlinedButton(
        onPressed: () {
          onTap();
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(
              color: Theme.of(context).textTheme.bodyMedium!.color!,
              width: 2), // 테두리 색상과 두께 설정
        ),
        child: Text(label)
            .fontWeight(FontWeight.bold)
            .textColor(Theme.of(context).textTheme.bodyMedium!.color!)
            .padding(vertical: 15, horizontal: 20),
      ).padding(
        horizontal: 20,
        vertical: 7,
      );

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 700), () {
      openWidget(context);
    });
  }
}

main() async {
  MyAppHome = Usage();

  return await buildApp();
}
