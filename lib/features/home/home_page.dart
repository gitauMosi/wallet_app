import 'package:flutter/material.dart';
import 'package:wallet_app/widgets/card_design.dart';

import '../../widgets/custom_chip.dart';
import '../../widgets/custom_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wallet",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: CircleAvatar(
              radius: 20,
              child: Icon(Icons.person),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardDesign(),
                    CardDesign(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "OTGBNK Accounts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              customListTileWidget(context, "Checking", "028837766",
                  "assets/icons/checking.png", "3477.44"),
              const SizedBox(
                height: 10,
              ),
              customListTileWidget(context, "Savings", "028837766",
                  "assets/icons/savings.png", "8977.00"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "More",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  customCard(context, "Apply For A\nCredit Card\nToday",
                      "assets/icons/card.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  customCard(context, "Add Another\nCard To Your\nWallet",
                      "assets/icons/wallet.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  customCard(context, "Learn How To\nBudget Your\nMoney",
                      "assets/icons/budget.png"),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customChip("Wallet"),
                  customChip("Statistics"),
                  customChip("Budgeting"),
                  customChip("Loans"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container customCard(BuildContext context, String name, urlImg) {
    return Container(
      height: 110,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).cardColor),
      child: Column(
        children: [
          SizedBox(
            child: Image.asset(
              urlImg,
              width: 50,
              height: 50,
            ),
          ),
          Text(name)
        ],
      ),
    );
  }
}
