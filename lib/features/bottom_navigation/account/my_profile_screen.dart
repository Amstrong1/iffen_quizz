import 'package:flutter/material.dart';
import 'package:iffen_quizz/components/back_button.dart';
import 'package:iffen_quizz/components/custom_button.dart';
import 'package:iffen_quizz/components/entry_field.dart';
import 'package:iffen_quizz/generated/l10n.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: const AppBarBackButton(),
        title: Text(
          s.my_profile,
          style: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height -
                      MediaQuery.of(context).padding.vertical,
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 42,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            alignment: Alignment.bottomCenter,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            margin: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                              borderRadius: BorderRadius.circular(35),
                              color: const Color(0xffffd471),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                'assets/avatars/me.jpg',
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              child: CircleAvatar(
                                radius: 13,
                                backgroundColor:
                                    Theme.of(context).scaffoldBackgroundColor,
                                child: Icon(
                                  Icons.edit,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Text(
                        s.change_avatar,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 14,
                            ),
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      const EntryField(
                        initialValue: 'Sam Smith',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const EntryField(
                        initialValue: '+1 987 654 3210',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const EntryField(
                        initialValue: 'samsmith@email.com',
                      ),
                      const SizedBox(
                        height: 65,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 32,
                  left: 30,
                  right: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: BuyThisApp.button(
                      //     'quizon_flutter',
                      //     'https://dashboard.vtlabs.dev/projects/envato-referral-buy-link?project_slug=quizon_flutter',
                      //     color: Theme.of(context).primaryColor,
                      //   ),
                      // ),
                      // BuyThisApp.developerRow(
                      //     Colors.transparent, Theme.of(context).primaryColor),
                      CustomButton(
                        title: s.update,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
