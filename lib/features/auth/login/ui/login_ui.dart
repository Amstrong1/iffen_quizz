import 'package:animation_wrappers/animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/3d_button.dart';
import 'package:iffen_quizz/components/custom_button.dart';
import 'package:iffen_quizz/components/entry_field.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/helpers/app_pref.dart';

import 'login_interactor.dart';

class LoginUI extends StatefulWidget {
  final LoginInteractor loginInteractor;

  const LoginUI(this.loginInteractor, {Key? key}) : super(key: key);

  @override
  LoginUIState createState() => LoginUIState();
}

class LoginUIState extends State<LoginUI> {
  final TextEditingController _numberController = TextEditingController();

  String isoCode = '';

  @override
  void initState() {
    super.initState();
    // Future.delayed(
    //   const Duration(seconds: 4),
    //   () => BuyThisApp.showSubscribeDialog(context),
    // );
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return Scaffold(
      body: FadedSlideAnimation(
        fadeDuration: const Duration(milliseconds: 300),
        slideDuration: const Duration(milliseconds: 150),
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 75,
                      child: Container(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const Spacer(
                      flex: 88,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: Column(
                    children: [
                      const Spacer(
                        flex: 18,
                      ),
                      Image.asset(
                        'assets/sign_in_icon.png',
                      ),
                      const Spacer(
                        flex: 14,
                      ),
                      Text(
                        s.sign_in_now,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const Spacer(
                        flex: 6,
                      ),
                      EntryField(
                        hintText: s.enter_phone_number,
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      CustomButton(
                        title: s.continuee,
                        onTap: () {
                          widget.loginInteractor
                              .loginWithMobile('isoCode', 'mobileNumber');
                          PreferenceHelper.setBool('firstlaunch', false);
                        },
                      ),
                      const Spacer(
                        flex: 7,
                      ),
                      Text(
                        s.or_continue_with,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 24,
                            ),
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              title: s.facebook,
                              styleOf3dButton: const StyleOf3dButton(
                                topColor: Color(0xff3961ba),
                                backColor: Color(0xff273a64),
                              ),
                              onTap: () {
                                widget.loginInteractor
                                    .loginWithMobile('isoCode', 'mobileNumber');
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: CustomButton(
                              title: s.google,
                              styleOf3dButton: const StyleOf3dButton(
                                topColor: Color(0xffff7171),
                                backColor: Color(0xffc94e4e),
                              ),
                              onTap: () {
                                widget.loginInteractor
                                    .loginWithMobile('isoCode', 'mobileNumber');
                              },
                            ),
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () => widget.loginInteractor.skipLogin(),
                          child: Text(
                            s.skip_login,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 5,
                      ),
                      Text(
                        s.not_registered_yet,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 24,
                            ),
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      CustomButton(
                        title: s.create_account,
                        styleOf3dButton: StyleOf3dButton(
                          topColor: AppTheme.greenButtonTopColor,
                          backColor: const Color(0xff6ab56c),
                        ),
                        onTap: () {
                          widget.loginInteractor
                              .loginWithMobile('isoCode', 'mobileNumber');
                        },
                      ),
                      const Spacer(
                        flex: 7,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
