import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
    required this.weather,
    required this.degrees,
  });

  final String weather;
  final int degrees;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 138),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                color: Colors.black),
            child: Text(
              DateFormat('EEEE, MMM d').format(DateTime.now()),
              style: const TextStyle(
                fontSize: 20,
                color: Colors.yellow,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(weather, style: const TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 0),
          Text(
            '$degrees°',
            style: const TextStyle(fontSize: 150),
          )
        ],
      ),
    );
  }
}
