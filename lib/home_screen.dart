import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Icon(Icons.person_outline, size: 32, color: Colors.black),
              ],
            ),
            SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    BuildCustomCard(
                      title: 'My Projects',
                      subtitle: '5 ongoing projects',
                      icon: Icons.folder_open,
                      onTap: () {
                        // Navigate to projects screen
                      },
                    ),
                    SizedBox(height: 16),
                    BuildCustomCard(
                      title: 'Followers',
                      subtitle: '1200 followers',
                      icon: Icons.group,
                      onTap: () {
                        // Navigate to followers screen
                      },
                    ),
                    SizedBox(height: 16),
                    BuildCustomCard(
                      title: 'Followers',
                      subtitle: '1200 followers',
                      icon: Icons.group,
                      onTap: () {
                        // Navigate to followers screen
                      },
                    ),
                    SizedBox(height: 16),
                    BuildCustomCard(
                      title: 'Followers',
                      subtitle: '1200 followers',
                      icon: Icons.group,
                      onTap: () {
                        // Navigate to followers screen
                      },
                    ),
                    SizedBox(height: 16),
                    BuildCustomCard(
                      title: 'Settings',
                      subtitle: 'Account settings',
                      icon: Icons.settings,
                      onTap: () {
                        // Navigate to settings screen
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildCustomCard extends StatelessWidget {
  const BuildCustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });
  final String title;
  final String subtitle;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(subtitle),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, size: 38, color: Colors.blue),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
