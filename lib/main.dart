import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(3, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.house),
                  onPressed: () {},
                  color: Colors.orange),
            ),
            GestureDetector(
              child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.solidMessage),
                  onPressed: () {},
                  color: const Color(0xff313131)),
            ),
            GestureDetector(
              child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.listCheck),
                  onPressed: () {},
                  color: const Color(0xff313131)),
            ),
            GestureDetector(
              child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.calendarDays),
                  onPressed: () {},
                  color: const Color(0xff313131)),
            ),
            GestureDetector(
              child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.chartColumn),
                  onPressed: () {},
                  color: const Color(0xff313131)),
            ),
          ],
        ),
      ),
      appBar: AppBar(
          elevation: 4,
          shadowColor: Colors.black,
          toolbarHeight: 70,
          backgroundColor: const Color(0xff043333),
          title: const Text(
            "Mon LEO",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Hero(
              tag: 'avatar',
              child: GestureDetector(
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x29000000),
                        blurRadius: 20,
                        offset: Offset(0, 6),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                  child: AvatarWidget(name: "Pierre Oudin"),
                ),
                onTap: () {},
              ),
            ),
          ),
          titleSpacing: 18,
          actions: <Widget>[
            IconButton(
              constraints: const BoxConstraints(
                maxWidth: 20,
                minHeight: 23.66,
              ),
              alignment: Alignment.centerLeft,
              onPressed: () {},
              iconSize: 24,
              icon: const Icon(FontAwesomeIcons.newspaper, color: Colors.white),
            ),
            const SizedBox(width: 20),
            IconButton(
              constraints: const BoxConstraints(
                maxWidth: 23.66,
                minHeight: 23.66,
              ),
              alignment: Alignment.centerLeft,
              onPressed: () {},
              iconSize: 24,
              icon: const Icon(FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white),
            ),
            const SizedBox(width: 15),
            IconButton(
              constraints: const BoxConstraints(
                maxWidth: 23.66,
                minHeight: 23.66,
              ),
              alignment: Alignment.centerLeft,
              onPressed: () {},
              iconSize: 24,
              icon: const Icon(FontAwesomeIcons.solidBell, color: Colors.white),
            ),
            const SizedBox(width: 15),
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Bonjour, Pierre",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 25),
              Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Tâches",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: EmptyHomeCard(
                                  lottie:
                                      "lib/assets/lotties/Home-Task-theme-light.json",
                                  caption: "Aucune tâche pour le moment",
                                  buttonTitle: "Créer une tâche"),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),

              const SizedBox(height: 15),
              Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Chiffres du jour",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                maxLines: 1,
                              ),
                              GestureDetector(
                                child: const Text(
                                  "Voir plus",
                                  style: TextStyle(
                                    color: Color(0xff043333),
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  maxLines: 1,
                                ),
                                onTap: () {},
                              )
                            ],
                          ),
                          const SizedBox(height: 24),
                          Container(
                            width: double.infinity,
                            color: Colors.transparent,
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    NumberOfTheDayHomeItemWidget(
                                      nom: "Dossier",
                                      valeur: "348",
                                    ),
                                    const SizedBox(width: 40),
                                    NumberOfTheDayHomeItemWidget(
                                      nom: "Chiffres d'affaire HT",
                                      valeur: "2000€",
                                    ),
                                    const SizedBox(width: 40),
                                    NumberOfTheDayHomeItemWidget(
                                      nom: "Utilisateurs connectés",
                                      valeur: "8",
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                  )),
              const SizedBox(height: 10),
              Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15.0.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Flexible(
                                child: Text(
                                  "Evènements et rendez-vous",
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                "Voir plus",
                                maxLines: 1,
                                style: TextStyle(
                                  color: Color(0xff043333),
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NumberOfTheDayHomeItemWidget(
                                nom: "Prévus aujourd'hui",
                                valeur: "5",
                              ),
                              const RdvGareDeLyon()
                            ],
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  )),

              // HomeBaseCard(
              //   title: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Row(
              //         mainAxisSize: MainAxisSize.min,
              //         children: [
              //           Text(
              //             AppLocalizations.of(context)
              //                 .homeMobileStatisticCardTitle,
              //             style: theme.h1TextStyle.copyWith(fontSize: 12),
              //           ),
              //           const SizedBox(width: 10),
              //           DateTimePickerWidget(
              //             hasDate: true,
              //             date: date,
              //             callback: (value) => date = value,
              //           ),
              //         ],
              //       ),
              //       GestureDetector(
              //         child: Text(
              //           AppLocalizations.of(context).homeDetailTitle,
              //           style: TextStyle(
              //             color: theme.homeViewMobileColorScheme.detailTitle,
              //             decoration: TextDecoration.underline,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 12,
              //           ),
              //         ),
              //         onTap: () =>
              //             context.beamToNamed("/statistiques/chiffredujour"),
              //       )
              //     ],
              //   ),
              //   card: const NumberOfTheDayHomeCard(),
              // ),
              // const SizedBox(height: 27),
              // HomeBaseCard(
              //   title: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         AppLocalizations.of(context).homeEventCardTitle,
              //         style: theme.h1TextStyle.copyWith(fontSize: 12),
              //       ),
              //       GestureDetector(
              //         child: Text(
              //           AppLocalizations.of(context).homeDetailTitle,
              //           style: TextStyle(
              //             color: theme.homeViewMobileColorScheme.detailTitle,
              //             decoration: TextDecoration.underline,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 12,
              //           ),
              //         ),
              //         onTap: () {},
              //       )
              //     ],
              //   ),
              //   card: EmptyHomeCard(
              //     lottie: Lotties.homeEventThemeLight,
              //     caption: AppLocalizations.of(context).homeEventCardCaption,
              //     buttonTitle:
              //         AppLocalizations.of(context).homeEventCardButtonTitle,
              //     onPressedFunction: () {},
              //   ),
              // ),
              // const SizedBox(height: 27),
              // HomeBaseCard(
              //   title: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         AppLocalizations.of(context).homeConversationCardTitle,
              //         style: theme.h1TextStyle.copyWith(fontSize: 12),
              //       ),
              //       GestureDetector(
              //         child: Text(
              //           AppLocalizations.of(context).homeDetailTitle,
              //           style: TextStyle(
              //             color: theme.homeViewMobileColorScheme.detailTitle,
              //             decoration: TextDecoration.underline,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 12,
              //           ),
              //         ),
              //         onTap: () => context.beamToNamed("/conversations"),
              //       )
              //     ],
              //   ),
              //   card: const ConversationHomeCard(),
              // ),
              // const SizedBox(height: 27),
              // HomeBaseCard(
              //   title: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         AppLocalizations.of(context).homeIndicatorMobileCardTitle,
              //         style: theme.h1TextStyle.copyWith(fontSize: 12),
              //       ),
              //       GestureDetector(
              //         child: Text(
              //           AppLocalizations.of(context).homeDetailTitle,
              //           style: TextStyle(
              //             color: theme.homeViewMobileColorScheme.detailTitle,
              //             decoration: TextDecoration.underline,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 12,
              //           ),
              //         ),
              //         onTap: () =>
              //             context.beamToNamed("/statistiques/indicateur"),
              //       )
              //     ],
              //   ),
              //   card: const IndicatorHomeCard(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  AvatarWidget({required this.name, radius, fontSize, super.key})
      : radius = radius ?? 25,
        fontSize = 20;

  final String name;
  final List<String> _colors = [
    "d32f2f",
    "c2185b",
    "7b1fa2",
    "512da8",
    "303f9f",
    "1976d2",
    "0288d1",
    "0097a7",
    "00796b",
    "388e3c",
    "689f38",
    "afb42b",
    "fbc02d",
    "ffa000",
    "f57c00",
    "e64a19",
    "5d4037",
    "616161",
    "455a64"
  ];
  final double radius;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: generateBackgroundColor(),
      radius: radius,
      child: Text(
        generateInitials(name),
        style: TextStyle(
          color: Colors.white, // Add to theme ?
          fontSize: fontSize,
        ),
      ),
    );
  }

  String generateInitials(String name) {
    String firstNameLetter = "";
    String surNameLetter = "";
    if (name.isNotEmpty) {
      List<String> nameSplit = name.split(' ');
      if (nameSplit.isNotEmpty) {
        firstNameLetter = nameSplit[0][0].toUpperCase();
      }
      if (nameSplit.length > 1) {
        surNameLetter = nameSplit[1][0].toUpperCase();
      }
    }
    return firstNameLetter + surNameLetter;
  }

  Color generateBackgroundColor() {
    String backgroundColor = "0xFF";
    String initials = generateInitials(name);
    if (initials.isEmpty) {
      backgroundColor = "$backgroundColor${_colors[0]}";
    } else {
      String text = "";
      for (int i = 0; i < initials.length; i++) {
        int num = int.parse(initials[i], radix: 36);
        text = ((text.isEmpty) ? num.toString() : "$text$num");
      }
      var colorCode = _colors[int.parse(text) % _colors.length];
      backgroundColor = "$backgroundColor$colorCode";
    }

    return Color(int.parse(backgroundColor));
  }
}

class EmptyHomeCard extends StatefulWidget {
  const EmptyHomeCard(
      {super.key,
      this.title,
      required this.lottie,
      required this.caption,
      required this.buttonTitle});

  final String? title;
  final String lottie;
  final String caption;
  final String buttonTitle;

  @override
  State<StatefulWidget> createState() => _EmptyHomeCardState();
}

class _EmptyHomeCardState extends State<EmptyHomeCard>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        height: 70,
        width: 124,
        child: Transform.scale(
          alignment: Alignment.center,
          origin: const Offset(0, 0),
          scale: 2,
          child: Lottie.asset(
            widget.lottie,
            repeat: true,
            fit: BoxFit.contain,
            controller: _controller,
            onLoaded: (composition) {
              _controller
                ..duration = composition.duration
                ..animateTo(0.5);
            },
          ),
        ),
      ),
      const SizedBox(height: 10),
      Text(widget.caption,
          maxLines: 1,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Color(0xff707070),
              fontSize: 16,
              fontStyle: FontStyle.italic)),
      const SizedBox(height: 20),
      ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0),
              fixedSize: MaterialStateProperty.all<Size>(const Size(160, 41)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xffE6F4D7)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23)))),
          child: Text(widget.buttonTitle,
              maxLines: 1,
              style: const TextStyle(color: Color(0xff135D5D), fontSize: 16)))
    ]);
  }
}

class NumberOfTheDayHomeItemWidget extends StatelessWidget {
  NumberOfTheDayHomeItemWidget(
      {Key? key, required this.valeur, required this.nom})
      : super(key: key);

  String valeur;
  String nom;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Expanded(
      child: Column(
        children: [
          Text(
            valeur,
            maxLines: 1,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            nom,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}

class RdvGareDeLyon extends StatelessWidget {
  const RdvGareDeLyon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: const [
            Text(
              "9H40",
              maxLines: 1,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              "TROD ANGINE",
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              "Prochain",
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            )
          ],
        ),
        IconButton(
          iconSize: 30,
          padding: EdgeInsets.zero,
          color: Colors.black,
          icon: const Icon(Icons.chevron_right),
          onPressed: () {},
        )
      ],
    ));
  }
}
