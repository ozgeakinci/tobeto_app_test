import 'package:flutter/material.dart';
import 'package:tobeto_app_1/datas/menu_data.dart';
import 'package:tobeto_app_1/theme/tobeto_theme_color.dart';

import 'package:tobeto_app_1/widget/login_page.dart';

import 'package:tobeto_app_1/widget/swiper_page.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key, required this.selectedMenuItem})
      : super(key: key);

  final void Function(String selectedMenuName) selectedMenuItem;

  @override
  Widget build(BuildContext context) {
    String getCurrentDate() {
      DateTime now = DateTime.now();
      return "${now.year}";
    }

    return Drawer(
      elevation: 1,
      child: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/tobeto-logo.png',
                width: 170,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          for (final menuItem in menus)
            InkWell(
              onTap: () {
                Navigator.pop(context);
                selectedMenuItem(menuItem.name);
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, bottom: 20, right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(menuItem.name),
                    menuItem.menuIcon,
                  ],
                ),
              ),
            ),
          const SizedBox(height: 20),
          const Divider(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const SwiperPage()));
              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.home_outlined),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Tobeto',
                    style: TextStyle(
                        color: TobetoAppColor.textColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              title: Text(
                "Kullanıcı Adı",
                style: TextStyle(color: TobetoAppColor.textColor),
              ),
              trailing: const CircleAvatar(
                child: Icon(Icons.person_2_outlined),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                'Çıkış Yap',
                style: TextStyle(
                    color: TobetoAppColor.textColor,
                    fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.logout_outlined),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const LoginPage()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 38.0,
              left: 8,
            ),
            child: Text(
              ' © ${getCurrentDate()} Tobeto',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          )
        ],
      ),
    );
  }
}
