import 'package:animation_wrappers/animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:iffen_quizz/components/custom_button.dart';
import 'package:iffen_quizz/components/entry_field.dart';
import 'package:iffen_quizz/generated/l10n.dart';

import 'verification_interactor.dart';

class VerificationUI extends StatefulWidget {
  final VerificationInteractor verificationInteractor;

  const VerificationUI(this.verificationInteractor, {Key? key})
      : super(key: key);

  @override
  VerificationUIState createState() => VerificationUIState();
}

class VerificationUIState extends State<VerificationUI> {
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          s.verification,
          style: theme.textTheme.bodyLarge!
              .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: FadedSlideAnimation(
        fadeDuration: const Duration(milliseconds: 300),
        slideDuration: const Duration(milliseconds: 150),
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.vertical,
            padding: const EdgeInsets.symmetric(horizontal: 38.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Text(
                  s.enter_otp_shared,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 30,
                ),
                EntryField(
                  hintText: s.enter_verification_code,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onTap: () => widget.verificationInteractor.verify(),
                  title: s.submit,
                ),
                const SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    Text(
                      '02:12',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const Spacer(),
                    Text(
                      s.resend,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 9,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
