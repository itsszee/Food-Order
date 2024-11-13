import 'package:flutter/material.dart';
import 'package:food_order_app/config/app_asset.dart';
import 'package:food_order_app/view/page/home.dart';
import 'package:food_order_app/view/page/history.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';

class AccPage extends StatefulWidget {
  const AccPage({super.key});

  @override
  State<AccPage> createState() => _AccPageState();
}

class _AccPageState extends State<AccPage> {
  String name = 'Your Name';
  String email = 'your.email@example.com';
  String address = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolor.';

  int _selectedIndex = 2;


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
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            const Text(
              "Account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(30),
            Center(
              child: ClipOval(
                child: Image.asset(
                  AppAsset.food1,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(50),
            InfoField(
              icon: Icons.person,
              text: name,
            ),
            const Gap(10),
            InfoField(
              icon: Icons.email,
              text: email,
            ),
            const Gap(10),
            InfoField(
              icon: Icons.home,
              text: address,
            ),
            const Spacer(),
            ButtonPrimary(
              buttonText: "Logout",
              onPressedAction: () {
                print('Logout button pressed');
              },
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

class ButtonPrimary extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressedAction;

  const ButtonPrimary({
    super.key,
    required this.buttonText,
    required this.onPressedAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressedAction,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 243, 33, 33),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class InfoField extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoField({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 114, 113, 113).withOpacity(0.15),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[700]),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
