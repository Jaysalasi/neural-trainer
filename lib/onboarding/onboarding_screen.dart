import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neural_trainer/constants/colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

List bgImages = [
  "assets/images/onboarding_screens/neuralwel_4.png",
  "assets/images/onboarding_screens/conecta_con_cel.png",
  "assets/images/onboarding_screens/entrena_con_cel.png",
  "assets/images/onboarding_screens/analiza_con_cel.png",
];

List pageOneSmallText = [
  "COMENZÁ A VIVIR TU",
  "",
  "",
  "",
];
List pageOneBigText = [
  "NT EXPERIENCE",
  "",
  "",
  "",
];

List tags = [
  "",
  "#MOVEYOURMIND",
  "#MOVEYOURMIND",
  "#MOVEYOURMIND",
];

List logo = [
  "assets/images/logo/logo.png",
  "",
  "",
  "",
];

List primaryText = [
  "",
  "CONECTA",
  "ENTRENA",
  "ANALIZA",
];

List smallText = [
  "",
  "Conecta tus neuro sensores a la aplicación Neural Trainer y comienza a aumentar tu rendimiento cognitivo.",
  "Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento específico.",
  "Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real",
];

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bgImages.length,
          itemBuilder: (_, index) {
            return Container(
              padding: EdgeInsets.only(
                top: h / 8,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    bgImages[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/onboarding_screens/overlay.png"),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    Text(
                      tags[index],
                      style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: h * 0.28),
                      child: logo[index] != ""
                          ? Image(
                              image: AssetImage(logo[index]),
                            )
                          : Container(),
                    ),

                    //
                    // PRIMARY TEXT
                    //
                    primaryText[index] != ""
                        ? Padding(
                            padding: EdgeInsets.only(
                              top: h * 0.17,
                              left: w * 0.1,
                              right: w * 0.1,
                            ),
                            child: Text(
                              primaryText[index],
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                          )
                        : Container(),
                    //
                    // SMALL TEXT
                    //
                    smallText[index] != ""
                        ? Padding(
                            padding: EdgeInsets.only(
                              top: h * 0.02,
                              left: w * 0.04,
                              right: w * 0.04,
                              bottom: h * 0.063,
                            ),
                            child: Text(
                              smallText[index],
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                  color: whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    //
                    // PAGE ONE SMALL TEXT
                    //
                    pageOneSmallText[index] != ""
                        ? Padding(
                            padding: EdgeInsets.only(
                              top: h * 0.23,
                              left: w * 0.1,
                              right: w * 0.1,
                            ),
                            child: Text(
                              pageOneSmallText[index],
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                    color: whiteColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                          )
                        : Container(),
                    //
                    // PAGE ONE BIG TEXT
                    //
                    pageOneBigText[index] != ""
                        ? Padding(
                            padding: EdgeInsets.only(
                              top: h * 0.01,
                              left: w * 0.1,
                              right: w * 0.1,
                            ),
                            child: Text(
                              pageOneBigText[index],
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 36,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                          )
                        : Container(),

                    //
                    // DOTS
                    //
                    Container(
                      padding: EdgeInsets.only(top: h * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            4,
                            (indexDots) => Container(
                                  margin:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  width: index == indexDots ? 9 : 8,
                                  height: index == indexDots ? 9 : 8,
                                  decoration: BoxDecoration(
                                    color: index == indexDots
                                        ? darkColor
                                        : dotColor,
                                    border: Border.all(
                                      width: 1,
                                      color: index == indexDots
                                          ? primaryColor
                                          : dotColor,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        index == indexDots ? 2 : 2),
                                  ),
                                )),
                      ),
                    ),
                    //
                    // BUTTON
                    //
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.04),
                      child: GestureDetector(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: w * 0.25,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "iniciar sesión".toUpperCase(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.rubik(
                              textStyle: const TextStyle(
                                color: darkColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
