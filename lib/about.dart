//import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sig_project/home.dart';
import 'package:url_launcher/url_launcher.dart';

class aboutPage extends StatelessWidget {
  const aboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        drawer: Drawer(
          elevation: 50,
          backgroundColor: Colors.black54,
          child: ListView(
            children: [
              DrawerHeader(
                  child: Text('© Fulgor_Aurora',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.deepOrange,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(5, 5),
                            blurRadius: 2.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ))),
              ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return homePage();
                    }));
                  },
                  title: Text('Wallpapers',
                      style: TextStyle(color: Colors.white70, fontSize: 18))),
              ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return aboutPage();
                    }));
                  },
                  title: Text('About',
                      style: TextStyle(color: Colors.white70, fontSize: 18))),
            ],
          ),
        ),
        appBar: AppBar(
            title: const Text("Fulgor Aurora",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Montserrat')),
            backgroundColor: Colors.deepOrangeAccent,
            elevation: 50,
            //centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
            )),
        body: Center(
            //physics: BouncingScrollPhysics(),
            child: SingleChildScrollView(
          child: Column(children: [
            Container(
                //padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Image.asset('lib/assets/background.jpg',
                    fit: BoxFit.fitWidth)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Siddhee Pimparkar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(3, 3),
                            blurRadius: 1.5,
                            color: Colors.deepOrange,
                          ),
                        ]))
              ],
            ),
            //Image.network('https://picsum.photos/250?image=9'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Photographer | Travelling Japan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ))
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: FloatingActionButton(
                    backgroundColor: Colors.deepOrange,
                    child: Icon(Icons.facebook),
                    onPressed: () async {
                      const url =
                          'https://wallpaperimages-b80d5.web.app/wall_2.jpeg';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: FloatingActionButton(
                    backgroundColor: Colors.deepOrange,
                    child: Icon(Icons.square_rounded),
                    onPressed: () async {
                      const url =
                          'https://wallpaperimages-b80d5.web.app/wall_2.jpeg';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: FloatingActionButton(
                    backgroundColor: Colors.deepOrange,
                    child: Icon(Icons.mail),
                    onPressed: () async {
                      const url =
                          'https://wallpaperimages-b80d5.web.app/wall_2.jpeg';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
              ],
            )
          ]),
        )));
  }
}
