import 'package:flutter/material.dart';
import 'package:food_order_app/model/history_model.dart';
import 'package:food_order_app/view/page/account.dart';
import 'package:food_order_app/view/widget/card_history.dart';
import 'package:food_order_app/view/page/home.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {

  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Get.to(() => const HomePage());
        break;
      case 1:
        Get.to(() => const HistoryPage());
        break;
      case 2:
        Get.to(() => const AccPage());
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Order History",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const Gap(30),
            Expanded(
              child: ListView.builder(
                itemCount: itemHistory.length,
                itemBuilder: (BuildContext context, int index) {
                  return HistoryCard(
                    tanggal: itemHistory[index].tanggal, 
                    harga: itemHistory[index].harga,
                  );
                },
              ),
            ),
          ],
        ),
      ),
          
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.amber,  
        unselectedItemColor: Colors.grey, 
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
