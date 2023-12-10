import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/3d_button.dart';
import 'package:iffen_quizz/components/back_button.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/models/add_coin_item.dart';

class CoinManagementScreen extends StatelessWidget {
  const CoinManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: const AppBarBackButton(),
          centerTitle: true,
          title: Text(
            s.coin_management,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Column(
          children: [
            Image.asset(
              'assets/coin.png',
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              s.coin_balance,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              '0',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Theme.of(context).primaryColor,
                ),
                tabs: [
                  Tab(text: s.add_coin),
                  Tab(text: s.redeem),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  AddCoinTab(),
                  RedeemTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddCoinTab extends StatelessWidget {
  AddCoinTab({Key? key}) : super(key: key);

  final List<AddCoinItem> addCoinList = [
    AddCoinItem('100', '\$2.00', 'Budget Deal', '0%'),
    AddCoinItem('300', '\$5.00', 'Trending Deal', '10%'),
    AddCoinItem('800', '\$10.00', 'Economical Deal', '20%'),
    AddCoinItem('1000', '\$12.00', 'Trending Deal', '30%'),
    AddCoinItem('100', '\$2.00', 'Budget Deal', '0%'),
    AddCoinItem('300', '\$5.00', 'Trending Deal', '10%'),
    AddCoinItem('800', '\$10.00', 'Economical Deal', '20%'),
    AddCoinItem('1000', '\$12.00', 'Trending Deal', '30%'),
  ];

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 25.0,
      ),
      itemBuilder: (context, index) => GestureDetector(
        // onTap: () {
        //   Navigator.pushNamed(
        //     context,
        //     PageRoutes.quizStartScreen,
        //     arguments: QuizType.oneVOne,
        //   );
        // },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset('assets/coin.png'),
                  const SizedBox(
                    width: 14,
                  ),
                  Text(
                    addCoinList[index].coins,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    s.coins,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const Spacer(),
                  Button3D(
                    height: 31,
                    width: 60,
                    style: StyleOf3dButton(
                      topColor: AppTheme.greenButtonTopColor,
                      backColor: const Color(0xff6ab56c),
                      z: 6,
                    ),
                    onPressed: () {},
                    child: Text(
                      addCoinList[index].price,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 14,
                          ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                height: 1,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(18),
                  ),
                  color: Color(0xffeff7fb),
                ),
                padding: const EdgeInsetsDirectional.only(
                  start: 20,
                  end: 16,
                  top: 15,
                  bottom: 15,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: AppTheme.greenButtonTopColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        addCoinList[index].title,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Image.asset(
                      'assets/bxs-offer.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      addCoinList[index].percentage,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: addCoinList.length,
    );
  }
}

class RedeemTab extends StatelessWidget {
  RedeemTab({Key? key}) : super(key: key);

  final List<AddCoinItem> addCoinList = [
    AddCoinItem('NIKE STORE', '100',
        'Get 10% Off on offline purchase above \$99.', '10% OFF'),
    AddCoinItem('McDonalds', '50',
        'Buy 1 Medium Burger & Get 1 Medium Burger Free', 'Buy 1 Get 1'),
    AddCoinItem('AirBnb', '20', 'Economical Deal', '20% OFF'),
    AddCoinItem('NIKE STORE', '100',
        'Get 10% Off on offline purchase above \$99.', '10% OFF'),
    AddCoinItem('McDonalds', '50',
        'Buy 1 Medium Burger & Get 1 Medium Burger Free', 'Buy 1 Get 1'),
    AddCoinItem('AirBnb', '20', 'Economical Deal', '20% OFF'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 25.0,
      ),
      itemBuilder: (context, index) => GestureDetector(
        // onTap: () {
        //   Navigator.pushNamed(
        //     context,
        //     PageRoutes.quizStartScreen,
        //     arguments: QuizType.oneVOne,
        //   );
        // },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 34,
                    width: 34,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Theme.of(context).hintColor.withOpacity(0.3),
                      ),
                    ),
                    child: Image.asset(
                      addCoinList[index].coins == 'NIKE STORE'
                          ? 'assets/redeem/redeem_nike.png'
                          : addCoinList[index].coins == 'McDonalds'
                              ? 'assets/redeem/redeem_mcd.png'
                              : 'assets/redeem/redeem_arbnb.png',
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Text(
                    addCoinList[index].coins,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/bxs-offer.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    addCoinList[index].percentage,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                height: 1,
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  addCoinList[index].title,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                height: 1,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(18),
                  ),
                  color: Color(0xffeff7fb),
                ),
                padding: const EdgeInsetsDirectional.only(
                  start: 20,
                  end: 16,
                  top: 15,
                  bottom: 15,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/coin.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      addCoinList[index].price,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Text(
                      S.of(context).coins,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const Spacer(),
                    Button3D(
                      height: 36,
                      width: 90,
                      style: StyleOf3dButton(
                        topColor: AppTheme.greenButtonTopColor,
                        backColor: const Color(0xff6ab56c),
                      ),
                      onPressed: () {},
                      child: Text(
                        S.of(context).redeem,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 14,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: addCoinList.length,
    );
  }
}
