import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:subhash_chandra_s_application3/core/app_extensions.dart';

class ProgressUtil {
  static OverlayEntry? loader;

  static void showProgress({required BuildContext context}) async {
    await showProgressLoading(context);
  }

  static void hideProgress() async {
    hideProgressLoading();
  }

  static void hideProgressLoading() {
    if (loader != null) {
      loader?.remove();
      loader = null;
    }
  }

  static Future<void> showProgressLoading(BuildContext context) async {
    if (loader != null) {
      // Loader is already running
      hideProgressLoading();
    }
    OverlayState? overlayState = Overlay.of(context);
    loader = OverlayEntry(
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0.0, 4.00), //(x,y)
                      blurRadius: 5.00,
                      color: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.25),
                      spreadRadius: 1.00),
                ],
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    LoadingAnimationWidget.fourRotatingDots(
                      color:
                      context.isDarkTheme ? Colors.white : Colors.white70,
                      size: 40,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
    overlayState.insert(loader!);
  }

}