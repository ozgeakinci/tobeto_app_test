import 'package:flutter/material.dart';
import 'package:tobeto_app_1/theme/tobeto_theme_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'TOBETO\'',
                      style: TextStyle(
                        color: TobetoAppColor.colorSchemeLight.primary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'ya hoş geldin\n ',
                      style: TextStyle(
                        color: TobetoAppColor.colorSchemeLight.onSurface,
                        fontSize: 24,
                      ),
                    ),
                    const WidgetSpan(
                      child: SizedBox(
                        height: 30,
                      ),
                    ),
                    TextSpan(
                      text: 'özge',
                      style: TextStyle(
                        color: TobetoAppColor.textColorBlack,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Yeni nesil öğrenme deneyimi ile Tobeto kariyer yolculuğunda senin yanında!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TobetoAppColor.textColorBlack,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 4 / 1,
                      child: Image.asset(
                        'assets/images/istanbul_kodluyor_light.png',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Ücretsiz eğitimlerle, geleceğin mesleklerinde sen de yerini al.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: TobetoAppColor.textColorBlack,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 10),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Aradığın ',
                            style: TextStyle(
                              color: TobetoAppColor.colorSchemeLight.onSurface,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                              text: '"" ',
                              style: TextStyle(
                                color:
                                    TobetoAppColor.colorSchemeLight.secondary,
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(
                            text: 'İş ',
                            style: TextStyle(
                              color: TobetoAppColor.colorSchemeLight.onSurface,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: '""',
                            style: TextStyle(
                              color: TobetoAppColor.colorSchemeLight.secondary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ' Burada!',
                            style: TextStyle(
                              color: TobetoAppColor.colorSchemeLight.onSurface,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Başvurularım",
                              style: TextStyle(
                                  color:
                                      TobetoAppColor.colorSchemeLight.onSurface,
                                  fontSize: 16),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Eğitimlerim",
                              style: TextStyle(
                                  color:
                                      TobetoAppColor.colorSchemeLight.onSurface,
                                  fontSize: 16),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Duyuru ve Haberlerim",
                              style: TextStyle(
                                  color:
                                      TobetoAppColor.colorSchemeLight.onSurface,
                                  fontSize: 16),
                            )),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Anketlerim",
                            style: TextStyle(
                              color: TobetoAppColor.colorSchemeLight.onSurface,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 250,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Sınavlarım",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 150,
                                  height: 200,
                                  child: const Card(
                                    elevation: 1,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 8,
                                          right: 8,
                                          child: Icon(
                                            Icons.check_box,
                                            color: Colors.black,
                                            size: 18,
                                          ),
                                        ),
                                        Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "Herkes için Kodlama 1D Değerlendirme Sınavı",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                "Herkes için kodlama - 1D",
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    "45 Dakika",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 600,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 190,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                gradient: LinearGradient(
                                  //#914BF1 #1F268D #B39AF6 #9A4FFD #1E258C
                                  colors: [
                                    Color.fromARGB(255, 103, 255, 174),
                                    Colors.purple,
                                    Colors.blue
                                  ],
                                  transform: GradientRotation(15),
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Profilini oluştur",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Başla"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 190,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF102894).withOpacity(0.999),
                                    Color(0xFF102894).withOpacity(0.1),
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Kendini değerlendir",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Başla"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 190,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                gradient: LinearGradient(
                                  colors: [
                                    // #522C99
                                    Color(0xFF522C99).withOpacity(0.999),
                                    Color(0xFF522C99).withOpacity(0.1),
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Ögrenmeye başla",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Başla"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(50.0),
                      color: Color(0xFF9332F7), // #9332F7
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  constraints: const BoxConstraints(
                                    maxWidth: 100.0,
                                    maxHeight: 100.0,
                                  ),
                                  child: ColorFiltered(
                                    colorFilter: const ColorFilter.mode(
                                      Colors.white, // Yazı rengi
                                      BlendMode.srcIn,
                                    ),
                                    child: Image.asset(
                                      'assets/images/tobeto-logo.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Container(
                                  constraints: BoxConstraints(maxWidth: 150.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Colors.white, // Arka plan rengi
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "Bize Ulaşın",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "'2022 Tobeto",
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
