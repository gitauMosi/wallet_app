import 'package:flutter/material.dart';
import 'package:wallet_app/widgets/custom_chip.dart';

import '../../widgets/custom_list.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({super.key});

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
              const Text("Current Balance"),
              const Text(
                "\$2168.74",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customBox("Transfer", Icons.forward),
                  customBox("Deposit", Icons.account_balance_wallet_rounded),
                  customBox("Send", Icons.reply),
                  customBox("Request", Icons.arrow_downward_rounded),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Transaction",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customChipB("D", Colors.blue),
                  customChipB("W", Theme.of(context).cardColor),
                  customChipB("M", Theme.of(context).cardColor),
                  customChipB("Y", Theme.of(context).cardColor)
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Today",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              customListTileWidget(context, "Amazon Prime", "Subscription",
                  "assets/icons/amazon.png", "9.99"),
              const SizedBox(
                height: 10,
              ),
              customListTileWidget(context, "Apple", "Refund",
                  "assets/icons/apple.png", "142.82"),
              const SizedBox(
                height: 10,
              ),
              customListTileWidget(context, "Vegan Panty", "Restaurant",
                  "assets/icons/cart.png", "32.16"),
              const SizedBox(
                height: 10,
              ),
              customListTileWidget(context, "Eventbrite", "Current Ticket",
                  "assets/icons/card2.png", "82.49"),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Current Spending: "),
                  Text(
                    "\$325.18",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customContainerButton("Checking ", Colors.blue),
                  customContainerButton("Savings", Theme.of(context).cardColor)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container customContainerButton(String name, Color? color) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }

  Column customBox(String name, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          child: Icon(icon),
        ),
        Text(name)
      ],
    );
  }
}
