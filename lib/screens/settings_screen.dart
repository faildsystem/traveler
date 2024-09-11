import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:traveler/components/app_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key});
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color(0xFFFFFFFF),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: ListView(
          children: [
            SettingsGroup(
              settingsGroupTitle: "Theme",
              settingsGroupTitleStyle: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              items: [
                SettingsItem(
                  onTap: () {},
                  icons: Icons.dark_mode_rounded,
                  iconStyle: IconStyle(
                    iconsColor: Colors.white,
                    withBackground: true,
                    backgroundColor: Colors.blue,
                  ),
                  title: 'Change Theme',
                ),
              ],
            ),
            SettingsGroup(
              settingsGroupTitle: 'info ',
              settingsGroupTitleStyle: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              items: [
                SettingsItem(
                  onTap: () {},
                  icons: FontAwesomeIcons.whatsapp,
                  iconStyle: IconStyle(
                    backgroundColor: Colors.green,
                  ),
                  title: 'Contact Us',
                ),
                SettingsItem(
                  onTap: () {},
                  icons: FontAwesomeIcons.whatsapp,
                  iconStyle: IconStyle(
                    backgroundColor: Colors.green,
                  ),
                  title: 'Share The App',
                ),
                SettingsItem(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Center(child: Text('About The App')),
                          content: const Text(
                            textAlign: TextAlign.center,
                            'This is a travel app that helps you to find the best places to visit in the world.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          actions: [
                            Center(
                              child: AppButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                text: 'Close',
                                borderRadius: 10,
                                enabled: true,
                                
                                
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icons: Icons.info_outline,
                  iconStyle: IconStyle(
                    backgroundColor: Colors.amber,
                  ),
                  title: 'About The App',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
