import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class LogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const LogoAppBar({
    super.key,
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      automaticallyImplyLeading: false,
      // actions: <Widget>[Container()],
      surfaceTintColor: Theme.of(context).colorScheme.primary,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 40, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                const Logo(),
                Text(
                  'Yoko',
                  style: Theme.of(context).textTheme.h4?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
