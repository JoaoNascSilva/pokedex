import 'package:flutter/material.dart';

mixin Loader<T extends StatefulWidget> on State<T> {
  bool isOpen = false;

  void showLoader() {
    if (!isOpen) {
      isOpen = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return const Dialog(
            backgroundColor: Colors.transparent,
            child: Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
              ),
            ),
          );
        },
      );
    }
  }

  void hideLoader() {
    if (isOpen) {
      isOpen = false;
      Navigator.of(context).pop();
    }
  }
}
