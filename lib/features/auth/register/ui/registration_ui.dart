import 'dart:math';

import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iffen_quizz/components/custom_button.dart';
import 'package:iffen_quizz/components/entry_field.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/helpers/app_pref.dart';

import 'registration_interactor.dart';

class RegistrationUI extends StatefulWidget {
  final RegistrationInteractor registrationInteractor;
  final String? phoneNumber;
  final String? name;
  final String? email;
  final String? company;

  const RegistrationUI(
      this.registrationInteractor,
      this.phoneNumber,
      TextEditingController nameController,
      TextEditingController emailController,
      TextEditingController companyController,
      {Key? key,
      this.name,
      this.email,
      this.company})
      : super(key: key);

  @override
  RegistrationUIState createState() => RegistrationUIState();
}

class RegistrationUIState extends State<RegistrationUI> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  int selectedCharacter = 0;
  int selectedColor = 0;

  final List<String> characters = [
    'assets/avatars/transparent/personaj_16.png',
    'assets/avatars/transparent/personaj_20.png',
    'assets/avatars/transparent/personaj_53.png',
    'assets/avatars/transparent/personaj_57.png',
    'assets/avatars/transparent/personaj_59.png',
    'assets/avatars/transparent/personaj_60.png',
  ];

  final List<Color> colors = [
    const Color(0xffC0BBFE),
    const Color(0xffFECE84),
    const Color(0xff7EE981),
    const Color(0xffFFBEBF),
    const Color(0xffABD1FD),
    const Color(0xffE9BBFF),
    const Color(0xffFEE284),
  ];

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var s = S.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          s.create_account,
          style: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
            ),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(
              vertical: 9.0,
              horizontal: 10.0,
            ),
            child: Icon(
              Icons.arrow_back,
              size: 18,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
      body: FadedSlideAnimation(
        fadeDuration: const Duration(milliseconds: 300),
        slideDuration: const Duration(milliseconds: 150),
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.42,
              color: Theme.of(context).primaryColor,
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height -
                    AppBar().preferredSize.height -
                    MediaQuery.of(context).padding.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    CarouselSlider.builder(
                      itemCount: characters.length,
                      itemBuilder: (context, index, realIndex) => Stack(
                        children: [
                          AnimatedContainer(
                            alignment: Alignment.bottomCenter,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            margin: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color: index == selectedCharacter
                                    ? Theme.of(context).scaffoldBackgroundColor
                                    : Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(35),
                              color: index == selectedCharacter
                                  ? colors[selectedColor]
                                  : null,
                            ),
                            duration: const Duration(milliseconds: 300),
                            child: Image.asset(
                              characters[index],
                            ),
                          ),
                          if (index == selectedCharacter)
                            Positioned(
                              right: 0,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    getRandomColor();
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: colors[selectedColor],
                                    child: Icon(
                                      Icons.palette,
                                      size: 18,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      options: CarouselOptions(
                          viewportFraction: 0.4,
                          enlargeCenterPage: true,
                          aspectRatio: 2.5,
                          onPageChanged: (val, reason) {
                            setState(() {
                              selectedCharacter = val;
                            });
                          }),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          height: 600,
                          padding: const EdgeInsets.symmetric(horizontal: 38),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                s.select_your_character,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                              ),
                              const Spacer(
                                flex: 22,
                              ),
                              EntryField(
                                hintText: s.enter_full_name,
                                // fillColor: Colo,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              EntryField(
                                hintText: s.enter_phone_number,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              EntryField(
                                hintText: s.enter_email_address,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const EntryField(
                                hintText: 'Entreprise',
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              CustomButton(
                                onTap: () {
                                  widget.registrationInteractor
                                      .register('name', 'email', 'company');
                                  PreferenceHelper.setBool('firstlaunch', false);
                                },
                                title: s.continuee,
                              ),
                              const Spacer(
                                flex: 22,
                              ),
                              Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: s.already_have_an_account,
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                      TextSpan(
                                        text: "\n\n${s.sign_in_now}",
                                        style: theme.textTheme.bodyLarge!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .primaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(
                                flex: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getRandomColor() {
    // ignore: no_leading_underscores_for_local_identifiers
    final _random = Random();
    selectedColor = _random.nextInt(colors.length);
  }
}
