import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_radio/flutter_radio.dart';
import './you1.dart';
import './fb.dart';
import './yt.dart';
import './contact.dart';
import 'package:share/share.dart';
import './privacy.dart';
import './location.dart';
import './yt3.dart';
import './yt4.dart';


// import './home.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const streamUrl = "http://stream.zeno.fm/m6txq7vqp7zuv";

  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    audioStart();
    playingStatus();
  }

  Future<void> audioStart() async {
    await FlutterRadio.audioStart();
    print('Audio Start OK');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: new AppBar(
      //   title: const Text('Audio Plugin Android'),
      // ),
      body: Center(
          child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(70),
                ),

                image: DecorationImage(fit: BoxFit.fill,
              image: AssetImage('assets/images/bgs.jpg'),
            ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Container(
                  //   margin: EdgeInsets.only(top: 30, left: 20),
                  //   //  height: 200,

                  //   child: ListTile(
                  //     leading: Container(
                  //       decoration: BoxDecoration(
                  //           borderRadius:
                  //               BorderRadius.all(Radius.circular(50))),
                  //       child: Image(
                  //         image: AssetImage('assets/images/wow.gif'),
                  //         height: 230,
                  //       ),
                  //     ),
                  //     title: Text(
                  //       "JESUS IS THE ANSWER",
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //     subtitle: Text("online",
                  //         style: TextStyle(color: Colors.greenAccent)),
                  //   ),
                  // ),
                  Container(
                    width: 260,
                    height: 50,
                    margin: EdgeInsets.only(top: 20),
                    child: RaisedButton.icon(
                      onPressed: () {
                        FlutterRadio.playOrPause(url: streamUrl);
                        if (isPlaying) {
                          setState(() {
                            isPlaying = false;
                          });
                          print(isPlaying);
                        } else {
                          setState(() {
                            isPlaying = true;
                          });

                          print(isPlaying);
                        }
                      },
                      
                      shape: RoundedRectangleBorder(
                        
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      label: Text(
                        isPlaying ? "STOP" : "PLAY",
                        style: TextStyle(color: Colors.black),
                      ),
                      icon: Icon(
                        isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.red,
                      ),
                      textColor: Colors.white,
                      // splashColor: Colors.red,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton.icon(
                          onPressed: () {
                            Share.share("http://stream.zeno.fm/m6txq7vqp7zuv",
                                subject: 'Listen to Road To salvation radio');
                            // final RenderBox box = context.findRenderObject();
                            // Share.share("dollar",
                            //     subject: "dollar",
                            //     sharePositionOrigin:
                            //         box.localToGlobal(Offset.zero) &
                            //             box.size);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          label: Text(
                            'Share',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          // splashColor: Colors.red,
                          color: Colors.lightBlue,
                        ),
                        RaisedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Contact();
                              }),
                            );
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          label: Text(
                            'Contact',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          // splashColor: Colors.red,
                          color: Colors.lightBlue,
                        ),
                        RaisedButton.icon(
                          onPressed: () {
                            print('Button Clicked.');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          label: Text(
                            'Notification',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          // splashColor: Colors.red,
                          color: Colors.lightBlue,
                        ),
                      ],
                      // SizedBox(height: 5,)
                    ),
                    // SizedBox(height: 5,),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 10, left: 10),
              child: ListView(
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border(bottom: BorderSide(width: 1)
                    // ),

                    child: Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Facebook();
                            }),
                          );
                        },
                        leading: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Image(
                            image: AssetImage('assets/images/fbb.png'),
                            height: 100,
                          ),
                        ),
                        title: Text("Facebook "),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border(bottom: BorderSide(width: 1)
                    // ),

                    child: Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return WebViewClass();
                            }),
                          );
                        },
                        leading: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Image(
                            image: AssetImage('assets/images/yt.png'),
                            height: 100,
                          ),
                        ),
                        title: Text("EVANGELIST NTIAMOAH TV "),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border(bottom: BorderSide(width: 1)
                    // ),

                    child: Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Yt();
                            }),
                          );
                        },
                        leading: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Image(
                            image: AssetImage('assets/images/yt.png'),
                            height: 100,
                          ),
                        ),
                        title: Text("ALBERTA KUMI TV"),
                      ),
                    ),
                  ),

                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border(bottom: BorderSide(width: 1)
                    // ),

                    child: Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Yt3();
                            }),
                          );
                        },
                        leading: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Image(
                            image: AssetImage('assets/images/yt.png'),
                            height: 100,
                          ),
                        ),
                        title: Text("SETH  EKOW  TV"),
                      ),
                    ),
                  ),


                  // Container(
                  //   // decoration: BoxDecoration(
                  //   //   border: Border(bottom: BorderSide(width: 1)
                  //   // ),

                  //   child: Card(
                  //     child: ListTile(
                  //       onTap: () {
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(builder: (context) {
                  //             return Yt4();
                  //           }),
                  //         );
                  //       },
                  //       leading: Container(
                  //         decoration: BoxDecoration(
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(50))),
                  //         child: Image(
                  //           image: AssetImage('assets/images/yt.png'),
                  //           height: 100,
                  //         ),
                  //       ),
                  //       title: Text("ALBERTA KUMI TV"),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      )),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.white,
        // iconSize: 10,

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.radio,
              color: Colors.blue,
            ),
            title: Text(
              "Radio",
              style: TextStyle(color: Colors.blue),
            ),
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              color: Colors.blue,
            ),
            title: Text(
              "Location",
              style: TextStyle(color: Colors.blue),
            ),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.security,
              color: Colors.blue,
            ),
            title: Text(
              "Privacy",
              style: TextStyle(color: Colors.blue),
            ),
            backgroundColor: Colors.blue,
          ),
        ],
        onTap: (index) {
          print(index);
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Location();
            }));
          }

          else if(index==2){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Privacy();
            }));
          }

          else {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Home();
            }));
          }
        },
      ),
    );
  }

  Future playingStatus() async {
    bool isP = await FlutterRadio.isPlaying();
    setState(() {
      isPlaying = isP;
    });
    print(isPlaying);
  }
}
