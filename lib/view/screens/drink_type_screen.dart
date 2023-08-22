import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicly_task/view/screens/home_screen.dart';
import 'package:musicly_task/view/screens/model_screen.dart';

class DrinkTypeScreen extends StatelessWidget {
  final List<String> drinks = [
    'Caffeine',
    'Decaf',
    'Tea',
    'Matcha',
    'Espresso',
  ];

   DrinkTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Drink Type',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Select a few of your interests and let everyone know what you\'re passionate about.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 2.8,
              children: drinks
                  .map((drink) => DrinkItem(drink: drink))
                  .toList(),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.to(HomeScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Container(
                width: double.infinity,
                child: const Text(
                  'Continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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

class DrinkItem extends StatefulWidget {
  final String drink;

  const DrinkItem({
    Key? key,
    required this.drink,
  }) : super(key: key);

  @override
  _DrinkItemState createState() => _DrinkItemState();
}

class _DrinkItemState extends State<DrinkItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey),
        ),
        padding: const EdgeInsets.all(8),
        child: Text(
          widget.drink,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

