import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import '../resources/app_color.dart';
import '../utils/styles.dart';

class ErrorPopup extends StatelessWidget {
  static const router = 'error_popup';

  final String message;

  const ErrorPopup(this.message, {super.key});

  static Future show(BuildContext context, String message) {
    return showDialog(
      context: context,
      routeSettings: const RouteSettings(name: ErrorPopup.router),
      barrierDismissible: true,
      builder: (_) => ErrorPopup(message),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        child: SizedBox(
          height: 170,
          child: Stack(
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 50),
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: 165,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.0, color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            message,
                            style: Styles.n14.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColor.h444444,
                                letterSpacing: 2,
                                wordSpacing: 2),
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                          InkResponse(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 44,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: AppColor.hE0E0E0,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "홈",
                                style: Styles.n14.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.h444444,
                                ),
                              ),
                            ),
                          )
                        ]),
                  )),
              Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Assets.icons.icInforErrorPng.image(width: 60,height: 60))
            ],
          ),
        ));
  }
}
