import 'package:flutter/material.dart';
import 'package:vonc/view/login_signup/auth_screen.dart';

class UserSettings extends StatefulWidget {
  const UserSettings({super.key});

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  bool _isDarkMode = false; // For theme toggle
  bool _notificationsEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blueAccent,
            Colors.greenAccent,
            Colors.yellowAccent,
            Colors.grey,
          ],
        )),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            // Profile Section
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'assets/img/vonc_inovation_Icon-rb.png',
                ),
              ),
              title: Text('user:'),
              subtitle: Text('id:'),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Edit profile
                },
              ),
            ),
            Divider(),

            // Dark Mode Toggle
            SwitchListTile(
              title: Text('Dark Mode'),
              value: true, // Replace with your dark mode state
              onChanged: (value) {
                // Toggle dark mode
              },
            ),
            Divider(),

            // Account Section
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Account Settings'),
              onTap: () {
                // Navigate to account settings page
              },
            ),
            Divider(),

            // Notifications Section
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {
                // Navigate to notifications settings page
              },
            ),
            ListTile(
              leading: Icon(Icons.volume_up),
              title: Text('Sound'),
              trailing: Switch(
                value: true, // Replace with your sound state
                onChanged: (value) {
                  // Toggle sound
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.vibration),
              title: Text('Vibration'),
              trailing: Switch(
                value: true, // Replace with your vibration state
                onChanged: (value) {
                  // Toggle vibration
                },
              ),
            ),
            Divider(),

            // Language Section
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              onTap: () {
                // Navigate to language settings page
              },
            ),
            Divider(),

            // Logout Section
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Email_Password_Verifiction_Screen()));
                print('Icon button pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}
