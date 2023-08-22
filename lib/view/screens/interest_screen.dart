import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicly_task/view/screens/get_notification_screen.dart';

class InterestsScreen extends StatelessWidget {
  final List<Interest> interests = [
    Interest(
      icon: Icons.camera_alt,
      title: 'Photography',
    ),
    Interest(
      icon: Icons.shopping_cart,
      title: 'Shopping',
    ),
    Interest(
      icon: Icons.mic,
      title: 'Karaoke',
    ),
    Interest(
      icon: Icons.spa,
      title: 'Yoga',
    ),
    Interest(
      icon: Icons.restaurant,
      title: 'Cooking',
    ),
    Interest(
      icon: Icons.sports_tennis,
      title: 'Tennis',
    ),
    Interest(
      icon: Icons.directions_run,
      title: 'Running',
    ),
    Interest(
      icon: Icons.pool,
      title: 'Swimming',
    ),
    Interest(
      icon: Icons.palette,
      title: 'Art',
    ),
    Interest(
      icon: Icons.airplanemode_active,
      title: 'Traveling',
    ),
    Interest(
      icon: Icons.sports_esports,
      title: 'Extreme Sports',
    ),
    Interest(
      icon: Icons.music_note,
      title: 'Music',
    ),
    Interest(
      icon: Icons.local_drink,
      title: 'Drinking',
    ),
    Interest(
      icon: Icons.videogame_asset,
      title: 'Video Games',
    ),
  ];

   InterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.arrow_back),
        ),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Your Interests',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Select a few of your interests and let everyone know what you\'re passionate about.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 1.8,
                children: interests
                    .map((interest) => InterestItem(
                  interest: interest,
                ))
                    .toList(),
              ),
            ),
            const SizedBox(height: 6),
            ElevatedButton(
              onPressed: () {
                Get.to(const NotificationScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Interest {
  final IconData icon;
  final String title;

  Interest({
    required this.icon,
    required this.title,
  });
}

class InterestItem extends StatefulWidget {
  final Interest interest;

  const InterestItem({
    Key? key,
    required this.interest,
  }) : super(key: key);

  @override
  _InterestItemState createState() => _InterestItemState();
}

class _InterestItemState extends State<InterestItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.green : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(
                widget.interest.icon,
                color: isSelected ? Colors.white : Colors.black,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  widget.interest.title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
