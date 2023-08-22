import 'package:flutter/material.dart';

class MatchesScreen extends StatelessWidget {
  final List<String> photos = [
    'assets/images/model.jpg',
    'assets/images/model.jpg',
    'assets/images/model.jpg',
    'assets/images/model.jpg',
    'assets/images/model.jpg',
    'assets/images/model.jpg',
  ];

   MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Matches',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black45,
                      child: Icon(Icons.compare, color: Colors.white,),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'This is a list of people who have liked you and you matches.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                  child: const Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.8,
                  physics: const NeverScrollableScrollPhysics(),
                  children: photos.map((photo) {
                    return Stack(
                      children: [
                        Image.asset(
                          photo,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.black45,
                                child: Icon(Icons.close,color: Colors.white,),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.black45,
                                child: Icon(Icons.favorite,color: Colors.white,),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

