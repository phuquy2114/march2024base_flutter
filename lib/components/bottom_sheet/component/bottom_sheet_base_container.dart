import 'package:bansellin_flutter/resources/app_color.dart';
import 'package:flutter/cupertino.dart';

class BottomSheetBaseContainer extends StatelessWidget {
  const BottomSheetBaseContainer({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height / 2) - 100,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: AppColor.hFFFFFF,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: children,
      ),
    );
  }
}
