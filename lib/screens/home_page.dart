import 'package:flutter_web/widgets/bottom_bar.dart';
import 'package:flutter_web/widgets/carousel.dart';
import 'package:flutter_web/widgets/featured_heading.dart';
import 'package:flutter_web/widgets/featured_heading2.dart';
import 'package:flutter_web/widgets/featured_tiles.dart';
import 'package:flutter_web/widgets/featured_tiles_r2.dart';
import 'package:flutter_web/widgets/floating_quick_access_bar.dart';
import 'package:flutter_web/widgets/main_heading.dart';
import 'package:flutter_web/widgets/menu_drawer.dart';
import 'package:flutter_web/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: screenSize.width<800?AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 252, 77)),
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 79, 229, 249).withOpacity(_opacity),
       
        title:  Container(
          margin: const EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Center(
            child:
            Image.asset(
              'assets/images/Coder.png',
            fit: BoxFit.contain,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            ZoomDrawer.of(context)!.toggle();
          },
        ),
        ): 
      PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: TopBarContents(_opacity),
        ),

        //drawer: MenuDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: SizedBox(
                      height: screenSize.height * 0.63,
                      width: screenSize.width,
                      child: Image.asset(
                        'assets/images/back.gif',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      FloatingQuickAccessBar(screenSize: screenSize),
                      FeaturedHeading(screenSize: screenSize),
                      FeaturedTiles(screenSize: screenSize),
                      FeaturedHeading2(screenSize: screenSize),
                      FeaturedTilesR2(screenSize: screenSize),
                      MainHeading(screenSize: screenSize),
                      MainCarousel(),
                      SizedBox(height: screenSize.height/10),
                      //MenuDrawer(),
                      BottomBar()
      
                    ],
                  )
      
                ],
              ),
      
            ],
          ),
      ),

    );
  }
}
