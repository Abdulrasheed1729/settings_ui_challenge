import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                    size: 40.0,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'back',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.settings_outlined,
                  size: 35.0,
                  color: Colors.green,
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            _buildList('Name', 'Alex Eo'),
            _buildList('Phone', '+91-1234567890'),
            _buildList('Connected accounts', ''),
            const SizedBox(
              height: 50.0,
            ),
            _buildList('Notifications', 'on'),
            _buildDarkList('Dark Mode', 'on', Icons.switch_left_rounded),
            const SizedBox(
              height: 50.0,
            ),
            _buildList('Privacy', ''),
            _buildList('Language', ''),
            _buildList('Help', ''),
          ],
        ),
      ),
    );
  }

  Widget _buildDarkList(
      String leadingText, String subtitleText, IconData? icon) {
    return SizedBox(
      height: 50.0,
      width: 300.0,
      child: Row(
        children: [
          Text(
            leadingText,
            style: const TextStyle(fontSize: 20.0),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            subtitleText,
            style: const TextStyle(color: Colors.grey, fontSize: 15.0),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Icon(
            icon,
            size: 35,
            color: Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _buildList(
    String leadingText,
    String subtitleText,
  ) {
    return SizedBox(
      height: 50.0,
      width: 300.0,
      child: Row(
        children: [
          Text(
            leadingText,
            style: const TextStyle(fontSize: 20.0),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            subtitleText,
            style: const TextStyle(color: Colors.grey, fontSize: 15.0),
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Icon(
            Icons.chevron_right,
            size: 35,
          ),
        ],
      ),
    );
  }
}
