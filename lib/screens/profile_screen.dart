import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/widgets/profile_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 55,
              color: Colors.white,
            ),
          )
        ],
        centerTitle: false,
        title: const Text(
          "Account",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Govinddashetti Puneeth Kumar",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.notifications_none_rounded,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width / 0.02,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(48, 64, 86, 1),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            const SizedBox(height: 40,),
            const ProfileTile(text: "Account"),
            const ProfileTile(text: "Funds",icon: Icons.currency_rupee,),
            const ProfileTile(text: "App Code",icon: Icons.lock_open_outlined,),
            const ProfileTile(text: "Settings",icon: Icons.settings,),
            const ProfileTile(text: "Connected apps", icon: Icons.check_box_outline_blank_rounded,),
            const ProfileTile(text: 'Logout',icon: Icons.logout,)
          ],
        ),
      ),
    );
  }
}
