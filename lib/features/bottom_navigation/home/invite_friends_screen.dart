import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/back_button.dart';
import 'package:iffen_quizz/components/custom_button.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/models/quiz_type.dart';
import 'package:iffen_quizz/routes/routes.dart';

class Friend {
  String image;
  String title;
  String points;

  Friend(this.image, this.title, this.points);
}

class InviteFriendsScreen extends StatelessWidget {
  InviteFriendsScreen({Key? key}) : super(key: key);

  final List<Friend> friendsList = [
    Friend('assets/avatars/1.jpg', 'Emili Williamson', '875'),
    Friend('assets/avatars/2.jpg', 'Kelin Harward', '285'),
    Friend('assets/avatars/3.jpg', 'James Haydon', '1,875'),
    Friend('assets/avatars/4.jpg', 'Jessica Taylor', '996'),
    Friend('assets/avatars/5.jpg', 'Adams Bravo', '1154'),
    Friend('assets/avatars/1.jpg', 'Emili Williamson', '875'),
    Friend('assets/avatars/2.jpg', 'Kelin Harward', '285'),
    Friend('assets/avatars/3.jpg', 'James Haydon', '1,875'),
    Friend('assets/avatars/4.jpg', 'Jessica Taylor', '996'),
    Friend('assets/avatars/5.jpg', 'Adams Bravo', '1154'),
  ];

  @override
  Widget build(BuildContext context) {
    final QuizType quizType =
        ModalRoute.of(context)?.settings.arguments as QuizType;
    final s = S.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        leading: const AppBarBackButton(),
        title: Text(
          s.invite_friends,
          style: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
            ),
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.symmetric(
              vertical: 9.0,
              horizontal: 10.0,
            ),
            child: Icon(
              Icons.search,
              size: 18,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(18),
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: 28.0),
        margin: const EdgeInsets.only(top: 20.0),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(bottom: 100.0),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, PageRoutes.otherProfileScreen);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: Image.asset(
                      friendsList[index].image,
                      height: 55,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        friendsList[index].title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${friendsList[index].points} pt',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffdbffdc),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      s.invite,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 14,
                            color: AppTheme.greenButtonTopColor,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => const Divider(
            height: 30,
          ),
          itemCount: friendsList.length,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: CustomButton(
          title: s.start_quiz,
          onTap: () {
            Navigator.pushNamed(
              context,
              PageRoutes.quizRoomScreen,
              arguments: quizType,
            );
          },
        ),
      ),
    );
  }
}
