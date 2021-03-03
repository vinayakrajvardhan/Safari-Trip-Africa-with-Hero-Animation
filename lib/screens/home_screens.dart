import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safari_africa/models/safari_models.dart';
import 'package:safari_africa/screens/details_screens.dart';
import 'package:safari_africa/screens/places_screen.dart';
import 'package:flip_card/flip_card.dart';
import 'package:safari_africa/widgets/build_nav.dart';

class HomeScreens extends StatefulWidget {
  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  List<SafariModel> safariList = SafariModel.list;
  List<SafariModel> navList = SafariModel.navList;
  PageController pageController = PageController(viewportFraction: .8);
  //int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfcff),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            buildAppBar(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Text(
                      "Let's go to Africa",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    back: Text(
                      "a trip to Safari",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            buildTextBar(),
            buildImageHorizontal(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Travel Package",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "see more",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            buildImageHorizontal2(),
            SizedBox(
              height: 10,
            ),
            NavigatorBuildWithFlip(),
          ],
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0),
          child: Container(
            height: 50.0,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
            child: Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Text(
                "Welcome to Africa",
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "Amazonia Basin",
                style: TextStyle(fontSize: 17.0, color: Colors.grey),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Container(
            height: 50.0,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/vinayak.jpg"), fit: BoxFit.cover)
                // color: Colors.amber,
                ),
          ),
        ),
      ],
    );
  }

  Widget buildTextBar() {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 12, right: 20),
      height: 100,
      width: double.infinity,
      //color: Colors.pink,
      child: SizedBox(
        //    height: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.7),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 30.0,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Icon(Icons.add_a_photo),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageHorizontal() {
    return SizedBox(
      height: 200,
      child: PageView.builder(
          itemCount: safariList.length,
          physics: BouncingScrollPhysics(),
          controller: pageController,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreens(
                      data: safariList[index],
                    ),
                  ),
                );
              },
              child: Hero(
                tag: "${safariList[index].imagePath}",
                child: Container(
                  margin: EdgeInsets.all(12.0),
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1.9,
                          offset: Offset(0, 3),
                          color: Colors.grey)
                    ],
                    image: DecorationImage(
                      image:
                          AssetImage("assets/${safariList[index].imagePath}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget buildImageHorizontal2() {
    return SizedBox(
      height: 200,
      width: 70,
      child: Stack(
        children: [
          SizedBox(
            height: 180,
            child: PageView.builder(
                itemCount: navList.length,
                physics: BouncingScrollPhysics(),
                controller: pageController,
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return PlacesScreens(
                            dataPlaces: navList[index],
                          );
                        }),
                      );
                    },
                    child: Hero(
                      tag: "${navList[index].imagePath}",
                      child: Container(
                        margin: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21.0),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1.9,
                                offset: Offset(0, 3),
                                color: Colors.grey)
                          ],
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/${navList[index].imagePath}"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Positioned(
            top: 0,
            right: 70,
            child: Container(
              height: 100,
              width: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34.8),
                  color: Colors.amber),
              child: Icon(
                CupertinoIcons.video_camera_solid,
                size: 44.0,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 70,
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34.8),
                color: Color(0xfff9c087),
              ),
              child: Icon(
                CupertinoIcons.bookmark_solid,
                size: 44.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
