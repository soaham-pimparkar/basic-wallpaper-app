import 'dart:io';
import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sig_project/about.dart';
//import 'package:download_manager/download_manager.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sig_project/home.dart';
import 'package:url_launcher/url_launcher_string.dart';

launch_url() async {
  var url = Uri.parse("https://music.youtube.com/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'could not launch the url';
  }
}

class desktopPage extends StatelessWidget {
  const desktopPage({Key? key}) : super(key: key);
  // AssetImage()
  @override
  Widget build(BuildContext context) {
    /*var varImage = Image.asset('lib/assets/wall_1.jpeg',fit: BoxFit.contain);

    convert(){
      varImage
      File("").writeAsBytesSync([]);
    }
    */
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          elevation: 10,
          backgroundColor: Colors.black45,
          fixedColor: Colors.deepOrange,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.phone_android), label: "Mobile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.desktop_mac), label: "Desktop"),
          ],
          onTap: (int indexNum) {
            if (indexNum == 0) {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return homePage();
              }));
            }
            if (indexNum == 1) {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return desktopPage();
              }));
              //launch_url();
            }
          },
        ),
        //extendBodyBehindAppBar: true,
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
        /*floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black45,
            elevation: 10,
            child: Icon(
              Icons.account_circle,
              color: Colors.deepOrange,
              size: 37,
            ),
            onPressed:
                launch_url /*{
          /*Navigator.of(context).push(
            MaterialPageRoute(builder: (_){
              return aboutPage();
            })
          );*/
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              title: Text('Alert Dialog'),
              content: Text('This is a sample text'),
              actions: [
                TextButton(onPressed: (){
                          Navigator.of(context).push(
                  MaterialPageRoute(builder: (_){
                    return aboutPage();
                  })
                );
                }, child: Text('Option 1')),
                TextButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_){
                        return aboutPage();
                      })
                  );
                }, child: Text('Option 2'))

              ],
            );
          }
          );
        },*/
            ),*/
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
            child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
              //mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 15),
                    /*child: SizedBox(
                      height: 300, width: 400,
                    )*/
                    child: Image.asset('lib/assets/wall1.JPG',
                        fit: BoxFit.contain)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 160,
                      child: FloatingActionButton(
                        backgroundColor: Colors.deepOrange,
                        child: Text('Save Image'),
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () async {
                          const url =
                              'https://wallpaperimages-b80d5.web.app/wall1.JPG';
                          await launchUrlString(url,
                              mode: LaunchMode.externalApplication);
                        },
                      ),
                    )
                  ],
                ),
                Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 15),
                    /*child: SizedBox(
                      height: 300, width: 400,
                    )*/
                    child: Image.asset('lib/assets/wall2.JPG',
                        fit: BoxFit.contain)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 160,
                      child: FloatingActionButton(
                        backgroundColor: Colors.deepOrange,
                        child: Text('Save Image'),
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () async {
                          const url =
                              'https://wallpaperimages-b80d5.web.app/wall2.JPG';
                          await launchUrlString(url,
                              mode: LaunchMode.externalApplication);
                        },
                      ),
                    )
                  ],
                ),
                Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 15),
                    /*child: SizedBox(
                      height: 300, width: 400,
                    )*/
                    child: Image.asset('lib/assets/wall3.JPG',
                        fit: BoxFit.contain)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 160,
                      child: FloatingActionButton(
                        backgroundColor: Colors.deepOrange,
                        child: Text('Save Image'),
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () async {
                          const url =
                              'https://wallpaperimages-b80d5.web.app/wall3.JPG';
                          await launchUrlString(url,
                              mode: LaunchMode.externalApplication);
                        },
                      ),
                    )
                  ],
                ),
                Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 15),
                    /*child: SizedBox(
                      height: 300, width: 400,
                    )*/
                    child: Image.asset('lib/assets/wall4.JPG',
                        fit: BoxFit.contain)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 160,
                      child: FloatingActionButton(
                        backgroundColor: Colors.deepOrange,
                        child: Text('Save Image'),
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () async {
                          const url =
                              'https://wallpaperimages-b80d5.web.app/wall4.JPG';
                          await launchUrlString(url,
                              mode: LaunchMode.externalApplication);
                        },
                      ),
                    )
                  ],
                ),
                Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 15),
                    /*child: SizedBox(
                      height: 300, width: 400,
                    )*/
                    child: Image.asset('lib/assets/wall5.jpg',
                        fit: BoxFit.contain)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 160,
                      child: FloatingActionButton(
                        backgroundColor: Colors.deepOrange,
                        child: Text('Save Image'),
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () async {
                          const url =
                              'https://wallpaperimages-b80d5.web.app/wall5.jpg';
                          await launchUrlString(url,
                              mode: LaunchMode.externalApplication);
                        },
                      ),
                    )
                  ],
                ),
                Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 15),
                    /*child: SizedBox(
                      height: 300, width: 400,
                    )*/
                    child: Image.asset('lib/assets/wall6.JPG',
                        fit: BoxFit.contain)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 160,
                      child: FloatingActionButton(
                        backgroundColor: Colors.deepOrange,
                        child: Text('Save Image'),
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () async {
                          const url =
                              'https://wallpaperimages-b80d5.web.app/wall6.JPG';
                          await launchUrlString(url,
                              mode: LaunchMode.externalApplication);
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(height: 75),
              ]),
        )));
  }
}
