import 'package:flutter/material.dart';
import 'package:yoko_app/utils/ext/ext.dart';

abstract class Button extends StatelessWidget {
  final String text;
  final Icon? icon;
  final void Function()? onTap;
  final bool onPrimary;

  const Button({
    super.key,
    required this.text,
    this.icon,
    this.onTap,
    this.onPrimary = false,
  });

  const factory Button.primary({
    Key? key,
    required String text,
    Icon? icon,
    void Function()? onTap,
    bool onPrimary,
  }) = PrimaryButton;

  const factory Button.outlined({
    Key? key,
    required String text,
    Icon? icon,
    void Function()? onTap,
  }) = OutlinedButton;

  const factory Button.link({
    Key? key,
    required String text,
    Icon? icon,
    void Function()? onTap,
    bool onPrimary,
  }) = LinkButton;
}

class PrimaryButton extends Button {
  const PrimaryButton({
    super.key,
    required super.text,
    super.icon,
    super.onTap,
    super.onPrimary = false,
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
              color: onPrimary
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (icon != null) icon!,
                Text(
                  text,
                  style: Theme.of(context).textTheme.body?.copyWith(
                        color: onPrimary
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OutlinedButton extends Button {
  const OutlinedButton({
    super.key,
    required super.text,
    super.icon,
    super.onTap,
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
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (icon != null) icon!,
                Text(
                  text,
                  style: Theme.of(context).textTheme.body?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LinkButton extends Button {
  const LinkButton({
    super.key,
    required super.text,
    super.icon,
    super.onTap,
    super.onPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null) icon!,
            Text(
              text,
              style: Theme.of(context).textTheme.body?.copyWith(
                    color: onPrimary
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: onPrimary
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.primary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
