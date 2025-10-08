import 'package:flutter/material.dart';
import 'package:week3/features/home/ui/widget/menu_row_item.dart';

class ProfileMenuList extends StatefulWidget {
  const ProfileMenuList({super.key});

  @override
  State<ProfileMenuList> createState() => _ProfileMenuListState();
}

class _ProfileMenuListState extends State<ProfileMenuList> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuRowItem(
          icon: Icons.dark_mode_outlined,
          title: 'Dark Mode',
          trailing: Switch(
            value: isDarkMode,
            onChanged: (value) {
              setState(() {
                isDarkMode = value;
              });
            },
            activeTrackColor: Colors.black,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.grey.shade300,
          ),
          onTap: () {},
        ),
        MenuRowItem(
          icon: Icons.info_outline,
          title: 'Account Information',
          onTap: () {},
        ),
        MenuRowItem(icon: Icons.lock_outline, title: 'Password', onTap: () {}),
        MenuRowItem(
          icon: Icons.shopping_bag_outlined,
          title: 'Order',
          onTap: () {},
        ),
        MenuRowItem(
          icon: Icons.credit_card_outlined,
          title: 'My Cards',
          onTap: () {},
        ),
        MenuRowItem(
          icon: Icons.favorite_outline,
          title: 'Wishlist',
          onTap: () {},
        ),
        MenuRowItem(
          icon: Icons.settings_outlined,
          title: 'Settings',
          onTap: () {},
        ),
      ],
    );
  }
}
