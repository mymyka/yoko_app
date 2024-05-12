import 'package:flutter/material.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class Button extends StatelessWidget {
  final String text;
  final Icon? icon;
  final void Function()? onTap;

  const Button({
    super.key,
    required this.text,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        elevation: 5.0,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 50.0,
            width: 200.0,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (icon != null) icon!,
                Text(
                  text,
                  style: Theme.of(context).textTheme.body,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
