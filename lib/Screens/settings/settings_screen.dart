import 'package:flutter/material.dart';
import 'package:videoplayer_miniproject/screens/settings/about.dart';
import 'package:videoplayer_miniproject/screens/settings/terms_condition.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const About(),
                      ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.info_outline_rounded,
                          color: Colors.white, size: 33),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'About',
                        style: TextStyle(color: Colors.white, fontSize: 21),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TermsConditon()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.sticky_note_2_outlined,
                          color: Colors.white, size: 33),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Terms & Condition',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          // overflow: TextOverflow.clip
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.restart_alt_outlined,
                        color: Colors.white, size: 33),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Reset Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout, color: Colors.white, size: 33),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Exit',
                      style: TextStyle(color: Colors.white, fontSize: 21),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
