import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview Kullanimi"),
      ),
      body: GridView.builder(
          itemCount: 100,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Container(
                alignment: Alignment.bottomCenter,
                //color: Colors.teal[100 * (index % 9)],
                child: Text(
                  "Merhaba Yunuzbaba $index",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.orange.shade700,
                      width: 5,
                      style: BorderStyle.solid),
                  //color: Colors.amber[100 * (index % 9)],
                  gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.red.shade400],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),

                  //borderRadius: BorderRadius.all(Radius.circular(48)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(5, 5),
                      blurRadius: 10,
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/turk_bayrak.jpeg",
                      ),
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter),
                ),
              ),
              onTap: () => debugPrint("$index bir defa tıklandı."),
              onDoubleTap: () => debugPrint("$index çift tıklandı."),
              onLongPress: () => debugPrint("$index uzun süre."),
              onHorizontalDragStart: (e) => debugPrint("$index sürüklendi. $e"),
              onVerticalDragUpdate: (e) => debugPrint("Yer değişiyor $e"),
            );
          }),
    );
  }

  GridView GridViewExtent() {
    return GridView.extent(
      maxCrossAxisExtent: 400,
      primary: false,
      //scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
      ],
    );
  }

  GridView gridViewCount() {
    return GridView.count(
      crossAxisCount: 4,
      primary: false,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
        Container(
          color: Colors.teal.shade300,
          child: Text("Merhaba Yunus"),
        ),
      ],
    );
  }
}
