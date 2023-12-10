import 'package:flutter/material.dart';
import 'package:iffen_quizz/components/3d_button.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? width;
  final StyleOf3dButton? styleOf3dButton;
  final Function() onTap;
  final Widget? leadingIcon;

  const CustomButton({
    Key? key,
    required this.title,
    this.styleOf3dButton,
    this.width,
    required this.onTap,
    this.leadingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Button3D(
      width: width ?? double.infinity,
      onPressed: onTap,
      style: styleOf3dButton ?? StyleOf3dButton.defaultValue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leadingIcon ?? const SizedBox.shrink(),
          if (leadingIcon != null)
            const SizedBox(
              width: 10,
            ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
