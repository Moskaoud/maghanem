import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  // Helper method to create styled section titles
  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 8.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
      ),
    );
  }

  // Helper method to create list items for skills/experience points
  Widget _buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        // If this page is part of a navigation flow with a drawer,
        // the leading menu icon will appear automatically.
        // If it's pushed on top and needs a back button, it will also appear.
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 50,
              // You can add an image here later
              // backgroundImage: NetworkImage('YOUR_IMAGE_URL_HERE'),
              backgroundColor: Colors.grey[300],
              child: const Icon(Icons.person, size: 50, color: Colors.white),
            ),
          ),
          const SizedBox(height: 16.0),
          Center(
            child: Text(
              'Mostafa Ghanem', // Placeholder name
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Center(
            child: Text(
              'Mobile Application Developer', // Placeholder title
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          _buildSectionTitle(context, 'Education'),
          _buildListItem("Bachelor's in Computer Science, Cairo University"),

          _buildSectionTitle(context, 'React Native Experience'),
          _buildListItem('Proficient in React Native and Redux.'),
          _buildListItem('Proven ability to build, debug, and enhance mobile applications for iOS and Android.'),
          _buildListItem('Successful deployments to both Google Play and the Apple App Store.'),

          _buildSectionTitle(context, 'Flutter Experience'),
          _buildListItem('Proficient in Flutter and Bloc.'),
          _buildListItem('Proven ability to build, debug, and enhance mobile applications for iOS and Android.'),
          _buildListItem('Successful deployments to both Google Play and the Apple App Store.'),

          const SizedBox(height: 24.0), // Extra space at the bottom
        ],
      ),
    );
  }
}
