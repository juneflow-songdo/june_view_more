import 'package:flutter/material.dart';
import 'package:june_view_more/app/_/_/interaction/view.blueprint.keybord/keyboard_attachable/_new/keyboard_widget/view.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../../../../../../main.dart';
import '_/view.dart';

// main() async {
//   return await startApp(
//     home: FooterLayout(
//         footer: NewView(
//           params: NewParams(),
//         ),
//         child: Container().backgroundColor(Colors.transparent)),
//   );
// }

main() async {
  MyAppHome = FooterLayout(
      footer: KeyboardWidgetView(),
      child: NewView());
  return await buildApp();
}
