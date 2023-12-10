import 'package:flutter/material.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
        ),
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(
          vertical: 9.0,
          horizontal: 10.0,
        ),
        child: Icon(
          Icons.arrow_back,
          size: 18,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
