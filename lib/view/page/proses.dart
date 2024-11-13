import 'package:flutter/material.dart';
import 'package:food_order_app/view/page/history.dart';
import 'package:gap/gap.dart';

class ProsesPage extends StatelessWidget {
  const ProsesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Proses Pemesanan',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(50),
            Center(
              child: Image.asset(
                'assets/proses.png',
                width: 400,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(30),
            const Text(
              'Status',
              style: TextStyle(
                fontSize: 15, 
                color: Colors.black
              ),
            ),
            const Text(
              'Pesanan diterima',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Divider(thickness: 0.5, color: Colors.grey),
            const Gap(10),
            const Text(
              'Estimasi Waktu',
              style: TextStyle(
                fontSize: 15, 
                color: Colors.black
              ),
            ),
            const Text(
              '15–20 Menit',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Divider(thickness: 0.5, color: Colors.grey),
            const Gap(10),
            const Text(
              'Pengantar',
              style: TextStyle(
                fontSize: 15, 
                color: Colors.black
              ),
            ),
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/driver.png'),
                  radius: 20,
                ),
                Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama Driver',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'F 2124 YO',
                      style: TextStyle(
                        fontSize: 15, 
                        color: Colors.black
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(thickness: 0.2, color: Colors.grey),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HistoryPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'SELESAI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
