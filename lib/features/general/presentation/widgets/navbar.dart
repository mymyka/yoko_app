import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const Navbar({
    super.key,
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      // actions: <Widget>[Container()],
      surfaceTintColor: Colors.transparent,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Logo(),
                Text(
                  'Yoko',
                  style: Theme.of(context).textTheme.h4,
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () => context.go('/home/collection/create/page'),
                  icon: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
