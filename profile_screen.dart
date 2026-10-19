
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // Do NOT add bottomNavigationBar here; it should be in the parent widget
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Cover photo + profile picture + top icons
              Stack(
                clipBehavior: Clip.none,
                children: [
                  // Cover photo
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://via.placeholder.com/600x200.png?text=Cover+Photo',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Top action icons row
                  Positioned(
                    top: 10,
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu, color: Colors.white, size: 28),
                        Row(
                          children: [
                            Icon(Icons.edit, color: Colors.white, size: 28),
                            SizedBox(width: 15),
                            Icon(Icons.search, color: Colors.white, size: 28),
                            SizedBox(width: 15),
                            Icon(Icons.more_vert, color: Colors.white, size: 28),
                            SizedBox(width: 15),
                            Icon(Icons.camera_alt, color: Colors.white, size: 28),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Profile picture overlapping bottom of cover photo
                  Positioned(
                    bottom: -50,
                    left: (screenWidth / 2) - 50,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 46,
                        backgroundImage: NetworkImage(
                          'https://via.placeholder.com/150.png?text=Profile+Pic',
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 60), // Space for profile pic overlap

              // Profile information: Name, posts, location
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '120 Posts',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, size: 18, color: Colors.grey[700]),
                        SizedBox(width: 4),
                        Text(
                          'Iloilo City',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Action buttons: Add to story, Edit profile
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add_circle_outline),
                        label: Text('Add to story'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[700],
                          padding: EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                        label: Text('Edit profile'),
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Privacy notice with Learn more link
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Your profile is private. ',
                    style: TextStyle(color: Colors.grey[700], fontSize: 14),
                    children: [
                      TextSpan(
                        text: 'Learn more',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        // Add gesture recognizer if needed
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Profile tabs: AI, Photos, Reels
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildTabItem('AI', Icons.smart_toy),
                    _buildTabItem('Photos', Icons.photo),
                    _buildTabItem('Reels', Icons.video_library),
                  ],
                ),
              ),

              SizedBox(height: 30),

              // Personal details section header with edit icon
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Personal Details',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              // Personal information list
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    _buildPersonalInfoRow(Icons.location_city, 'Location', 'Iloilo City'),
                    Divider(),
                    _buildPersonalInfoRow(Icons.home, 'Address', '123 Main Street'),
                    Divider(),
                    _buildPersonalInfoRow(Icons.cake, 'Birth Date', 'January 1, 1990'),
                  ],
                ),
              ),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem(String label, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 28, color: Colors.grey[700]),
        SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }

  Widget _buildPersonalInfoRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[700]),
          SizedBox(width: 12),
          Text(
            '$title:',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
