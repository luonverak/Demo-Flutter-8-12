import 'package:demo2/model/function_app.dart';
import 'package:demo2/model/score.dart';
import 'package:flutter/material.dart';

import '../widget/icon_item.dart';
import '../widget/item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text(
            'User Setting',
            style: TextStyle(
              fontSize: 45,
              fontFamily: 'myFont',
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('asset/image/user.jpeg'),
                    ),
                    title: Text(
                      'Luon Verak',
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'myFont',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Flutter Developer'),
                  ),
                  const Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (Map map in list)
                          Column(
                            children: [
                              Text(
                                '${map['point']}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '${map['option']}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IConItemWidget(
                iconData: Icons.attach_money,
                text: 'Wallet',
              ),
              IConItemWidget(
                iconData: Icons.wallet_giftcard_outlined,
                text: 'Delivery',
              ),
              IConItemWidget(
                iconData: Icons.message,
                text: 'Message',
              ),
              IConItemWidget(
                iconData: Icons.currency_bitcoin,
                text: 'Service',
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: listItem.length,
                itemBuilder: (context, index) => itemData(
                  listItem[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
