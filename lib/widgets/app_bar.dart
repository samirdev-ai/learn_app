import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions; // optional: cart icon, profile, etc.
  final bool showBackButton;   // optional: hide back arrow on home

  const CommonAppBar({
    super.key,
    required this.title,
    this.actions,
    this.showBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 2,
      leading: showBackButton
          ? IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      )
          : null,
      actions: actions ??
          [
            IconButton(icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                // Go to cart screen
                Navigator.pushNamed(context, '/cart');
              },
            ),
            IconButton(icon: const Icon(Icons.person),
              onPressed: () {
                // Go to profile
              },
            ),
          ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}