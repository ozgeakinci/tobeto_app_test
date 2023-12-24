import 'package:flutter/material.dart';
import 'package:tobeto_app_1/theme/tobeto_theme_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white, // Container rengi beyaz
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.2), // Gölge rengi beyaz ve opaklık
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
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
                    DefaultTabController(
                        length: 4,
                        child: Scaffold(
                          appBar: AppBar(
                            bottom: TabBar(tabs: [
                              Tab(
                                text: 'Başvurularım',
                              )
                            ]),
                          ),
                        ))
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
