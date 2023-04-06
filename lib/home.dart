import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 25.0, top: 45.0, right: 25.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        "Order Now",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(

                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 40.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildTopChip("Available Foods", true),

                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Expanded(
                  child: ListView(
                    children: <Widget>[
                      buildItem(
                          "Chicken thandoori",
                          "cost = 180rs",
                        "assets/thandoori.jpg" ,

                          4.5),
                      buildItem(
                          "Alfaham mandhi",
                          "cost = 190rs",
                          "assets/mandhi.jpg",
                          4.5),
                      buildItem(
                          "Hyderabadi Biriyani",
                          "cost = 170rs",
                          "assets/biriyani.webp",
                          4.5),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildItem(
      String title, String subTitle, String url, double rating) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12.0),
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: url,
              child: Container(
                height: 200,
             //   width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(url),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(

                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text(
                      rating.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildTopChip(String label, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Chip(
        padding: EdgeInsets.all(8.0),
        label: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        backgroundColor: isActive ? Colors.orange : Colors.grey,
      ),
    );
  }
}