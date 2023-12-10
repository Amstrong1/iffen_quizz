import 'package:flutter/material.dart';
import 'package:iffen_quizz/features/auth/login_navigator.dart';

import 'registration_interactor.dart';
import 'registration_ui.dart';

class RegisterPage extends StatelessWidget {
  final String? phoneNumber;

  const RegisterPage(this.phoneNumber, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RegistrationBody(phoneNumber);
  }
}

class RegistrationBody extends StatefulWidget {
  final String? phoneNumber;

  const RegistrationBody(this.phoneNumber, {Key? key}) : super(key: key);

  @override
  RegistrationBodyState createState() => RegistrationBodyState();
}

class RegistrationBodyState extends State<RegistrationBody>
    implements RegistrationInteractor {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController companyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return RegistrationUI(this, widget.phoneNumber, nameController,
        emailController, companyController);
  }

  @override
  void register(String name, String email, String company) async {
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, LoginRoutes.verification);
  }
}
