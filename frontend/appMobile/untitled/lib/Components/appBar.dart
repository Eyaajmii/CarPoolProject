import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool new_offer; // The condition to check for the new offer

  // Constructor that requires the new_offer parameter
  CustomAppBar({required this.new_offer});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // Change the icon based on the value of new_offer
              Icon(
                new_offer ? Icons.notifications_active : Icons.notifications, // If new_offer is true, use a different icon
                color: Colors.deepPurple,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'profil');
                },
                child: CircleAvatar(
                  child: Image.asset('images/default_profile.jpg'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
