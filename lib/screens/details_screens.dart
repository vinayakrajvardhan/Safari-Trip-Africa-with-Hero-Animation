import 'package:flutter/material.dart';
import 'package:safari_africa/models/safari_models.dart';
import 'package:safari_africa/widgets/build_nav.dart';

class DetailScreens extends StatefulWidget {
  final SafariModel data;

  const DetailScreens({Key key, this.data}) : super(key: key);
  @override
  _DetailScreensState createState() => _DetailScreensState();
}

class _DetailScreensState extends State<DetailScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(
                tag: "image${widget.data.imagePath}",
                child: Container(
                  margin: EdgeInsets.only(top: 60, left: 10, right: 10),
                  height: 600,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23.0),
                    image: DecorationImage(
                      image: AssetImage("assets/${widget.data.imagePath}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 100,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 40.0,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.data.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "\$${widget.data.price.toString()}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          NavigatorBuildWithFlip(),
        ],
      ),
    );
  }
}
