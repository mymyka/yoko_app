import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ShellWrapper extends StatefulWidget {
  const ShellWrapper({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<ShellWrapper> createState() => _ShellWrapperState();
}

class _ShellWrapperState extends State<ShellWrapper> {
  int selectedIndex = 1;

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: widget.navigationShell,
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            tabBackgroundColor: Theme.of(context).colorScheme.surface,
            gap: 8,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.store, text: 'Store'),
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.settings, text: 'Settings'),
            ],
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;
              });
              _goBranch(selectedIndex);
            },
            iconSize: 30,
            activeColor: Theme.of(context).colorScheme.primary,
            selectedIndex: selectedIndex,
          ),
        ),
      ),
    );
  }
}
