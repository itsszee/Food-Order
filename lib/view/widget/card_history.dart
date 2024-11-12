import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  final String tanggal;
  final String harga;

  const HistoryCard({Key? key, required this.tanggal, required this.harga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tanggal,
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 5),
              Text(
                harga,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}