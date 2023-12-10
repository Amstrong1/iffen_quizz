import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/back_button.dart';
import 'package:iffen_quizz/generated/l10n.dart';

class FollowerItem {
  String image;
  String name;
  String points;

  FollowerItem(this.image, this.name, this.points);
}

class FollowersScreen extends StatelessWidget {
  FollowersScreen({Key? key}) : super(key: key);

  final List<FollowerItem> followers = [
    FollowerItem('assets/avatars/1.jpg', 'Emili Williamson', '875'),
    FollowerItem('assets/avatars/2.jpg', 'Kelin Harward', '285'),
    FollowerItem('assets/avatars/3.jpg', 'James Haydon', '1,875'),
    FollowerItem('assets/avatars/4.jpg', 'Jessica Taylor', '336'),
    FollowerItem('assets/avatars/5.jpg', 'Adams Bravo', '996'),
    FollowerItem('assets/avatars/1.jpg', 'Emili Williamson', '875'),
    FollowerItem('assets/avatars/2.jpg', 'Kelin Harward', '285'),
    FollowerItem('assets/avatars/3.jpg', 'James Haydon', '1,875'),
    FollowerItem('assets/avatars/4.jpg', 'Jessica Taylor', '336'),
    FollowerItem('assets/avatars/5.jpg', 'Adams Bravo', '996'),
  ];

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: const AppBarBackButton(),
        centerTitle: true,
        title: Text(
          s.followers,
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
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(
              vertical: 9.0,
              horizontal: 10.0,
            ),
            child: Icon(
              Icons.search,
              size: 18,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 30.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          itemBuilder: (context, index) => Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  followers[index].image,
                  height: 55,
                  width: 55,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      followers[index].name,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 14,
                          ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '${followers[index].points} pt',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: AppTheme.greenButtonTopColor.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Text(
                  s.following,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 14,
                        color: AppTheme.greenButtonTopColor,
                      ),
                ),
              ),
              const SizedBox(
                width: 28,
              ),
            ],
          ),
          separatorBuilder: (context, index) => const Divider(
            height: 30,
          ),
          itemCount: followers.length,
        ),
      ),
    );
  }
}
