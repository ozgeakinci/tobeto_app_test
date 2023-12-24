import 'package:flutter/material.dart';
import 'package:tobeto_app_1/menu/menu_screen.dart';
import 'package:tobeto_app_1/theme/tobeto_theme.dart';
import 'package:tobeto_app_1/theme/tobeto_theme_color.dart';
import 'package:tobeto_app_1/widget/calender.dart';
import 'package:tobeto_app_1/widget/catalog.dart';
import 'package:tobeto_app_1/widget/home_page.dart';
import 'package:tobeto_app_1/widget/profile.dart';
import 'package:tobeto_app_1/widget/reviews.dart';

class SwiperPage extends StatefulWidget {
  const SwiperPage({Key? key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  var activeScreenName = "Ana Sayfa";

  void changeScreen(String selectedMenuName) {
    setState(() {
      activeScreenName = selectedMenuName;
    });
  }

  @override
  Widget build(BuildContext context) {
    final menuWidgets = {
      "Ana Sayfa": HomePage(),
      "Değerlendirmeler": Reviews(),
      "Profilim": Profile(),
      "Katalog": Catalog(),
      "Takvim": Calender(),
    };

    final selectedWidget = menuWidgets[activeScreenName];

    return Scaffold(
        appBar:
            AppBar(backgroundColor: TobetoAppColor.colorSchemeLight.primary),
        drawer: MenuScreen(
          selectedMenuItem: ((menuName) => changeScreen(menuName)),
        ),
        body: selectedWidget);
  }
}
