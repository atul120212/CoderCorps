import 'package:flutter_web/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/tests1.jpg',
    'assets/images/tests2.jpg',
    'assets/images/tests3.jpg',
  ];

  final List<String> title = ['Poster Corps - Create your poster', 'Hack Eater -a mini Hackathon', 'Intro to HacktoberFest'];

  @override
  Widget build(BuildContext context) {
    return 
    /*ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width / 15),
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenSize.width / 2.5,
                              width: screenSize.width / 1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.asset(
                                  assets[pageIndex],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height / 70,
                              ),
                              child: Text(
                                title[pageIndex],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenSize.width / 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        :*/ 
      screenSize.width<800?Padding(
        padding: EdgeInsets.only(
          top:screenSize.height/50
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(

            //children: [
            //  SizedBox(width: screenSize.width/15,),
              //...Iterable<int>.generate(assets.length).map(
              //      (int pageIndex) => Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                        left: screenSize.width/10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                  height: screenSize.width/2.5,
                                  width: screenSize.width/1.5,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.asset(
                                      'assets/images/tests1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                      
                                  ),
                                ),

                            Padding(
                              padding: EdgeInsets.only(
                              top: screenSize.height/70,
                              left: screenSize.width/7.7
                            ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 80),
                          textStyle: TextStyle(fontSize: 10),
                          primary: Color.fromARGB(255, 144, 19, 217),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Text(
                          'Poster Corps',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: ()
                        async {
                          final Uri _url =Uri.parse('https://linktr.ee/codercorps');
                          if (!await launchUrl(_url)) {
                            await launchUrl(_url);
                          }

                        },
                      ),
                              
                            ),
                          ],
                        ),
                      ),

//-----------------------------------------------------

                      Padding(
                          padding: EdgeInsets.only(
                          left: screenSize.width/20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                  height: screenSize.width/2.5,
                                  width: screenSize.width/1.5,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.asset(
                                      'assets/images/tests2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                      
                                  ),
                                ),

                            Padding(
                              padding: EdgeInsets.only(
                              top: screenSize.height/70,
                              left: screenSize.width/7.7
                            ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 80),
                          textStyle: TextStyle(fontSize: 10),
                          primary: Color.fromARGB(255, 144, 19, 217),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Text(
                          'Hack Eater',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: ()
                        async {
                          final Uri _url =Uri.parse('https://linktr.ee/codercorps');
                          if (!await launchUrl(_url)) {
                            await launchUrl(_url);
                          }

                        },
                      ),
                              
                            ),
                          ],
                        ),
                      ),

// --------------------------------------------------------------------

                        Padding(
                          padding: EdgeInsets.only(
                          left: screenSize.width/20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                  height: screenSize.width/2.5,
                                  width: screenSize.width/1.5,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.asset(
                                      'assets/images/tests3.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                      
                                  ),
                                ),

                            Padding(
                              padding: EdgeInsets.only(
                              top: screenSize.height/70,
                              left: screenSize.width/7.7
                            ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 80),
                          textStyle: TextStyle(fontSize: 10),
                          primary: Color.fromARGB(255, 144, 19, 217),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Text(
                          'HacktoberFest',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () => Fluttertoast.showToast(
                        msg: 'Registeration Closed',
                       )

                      ),
                            ),
                          ],
                        ),
                      ),



                      SizedBox(width: screenSize.width/15,)
                    ],
                  )
                ),
            
            ):
//---------------------- Desktop /PC/ TAB-------------------------------
        Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //...Iterable<int>.generate(assets.length).map(
                  //(int pageIndex) => 
                  Column(
                    children: [
                      SizedBox(
                        height: screenSize.width / 4,
                        width: screenSize.width / 3.8,
                        child: Container(
                          decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/tests1.jpg',
                             // fit: BoxFit.cover,
                            ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 20,
                                spreadRadius: 5,
                                color:Colors.grey.withOpacity(0.3),
                              )
                            ]
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                        top: screenSize.height / 70,
                        ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 80),
                          textStyle: TextStyle(fontSize: 10),
                          primary: Color.fromARGB(255, 144, 19, 217),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Text(
                          'Poster Corps',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: ()
                        async {
                          final Uri _url =Uri.parse('https://linktr.ee/codercorps');
                          if (!await launchUrl(_url)) {
                            await launchUrl(_url);
                          }

                        },
                      ),
                      ),
                    ],
                  ),
// ---------------------------------------------------------------
                  Column(
                    children: [
                      SizedBox(
                        height: screenSize.width / 4,
                        width: screenSize.width / 3.8,
                        child: Container(
                          decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/tests2.jpg',
                             // fit: BoxFit.cover,
                            ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 20,
                                spreadRadius: 5,
                                color:Colors.grey.withOpacity(0.3),
                              )
                            ]
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 70,
                        ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 80),
                          textStyle: TextStyle(fontSize: 10),
                          primary: Color.fromARGB(255, 144, 19, 217),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Text(
                          'Hackt Eater',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () async {
                          final Uri _url =Uri.parse('https://linktr.ee/codercorps');
                          if (!await launchUrl(_url)) {
                            await launchUrl(_url);
                          }

                        },
                      ),
                      ),
                    ],
                  ),

// ---------------------------------------------------
                Column(
                  children: [
                      SizedBox(
                        height: screenSize.width / 4,
                        width: screenSize.width / 3.8,
                          child: Container(
                            decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/tests3.jpg',
                               // fit: BoxFit.cover,
                              ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 20,
                                  spreadRadius: 5,
                                  color:Colors.grey.withOpacity(0.3),
                                )
                              ]
                            ),
                          ),
                        
                      ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: screenSize.height / 70,
                      ),

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 80),
                          textStyle: TextStyle(fontSize: 10),
                          primary: Color.fromARGB(255, 144, 19, 217),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),

                        ),
                        child: Text(
                          'HacktoberFest',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () => Fluttertoast.showToast(
                          msg: 'Registeration Closed',

                        )

                          
                          
                        
                          
                      ),
                      ),
                  ],
                ),

              ],
            ),
          );
  }

}


