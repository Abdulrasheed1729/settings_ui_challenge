import 'package:flutter/material.dart';

import 'settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 55.0),
                  child: Text(
                    'Calendar',
                    style: TextStyle(color: Colors.grey, fontSize: 30.0),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.grey,
                  size: 20.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.settings_outlined,
                  size: 45.0,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 55.0),
                  child: Text(
                    'Log out',
                    style: TextStyle(color: Colors.grey, fontSize: 25),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.logout,
                  color: Colors.grey,
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            IconButton(
              icon: const Icon(
                Icons.fingerprint_outlined,
                size: 60,
              ),
              color: Colors.green,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SettingsPage();
                }));
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Fingerprint verified!',
                style: TextStyle(color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
