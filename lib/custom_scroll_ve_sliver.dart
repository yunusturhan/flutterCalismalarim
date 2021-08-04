import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollapsableToolbarOrnek extends StatelessWidget {
  const CollapsableToolbarOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 300,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "TÜRKİYEDE KORUNAMAYAN BAZI ŞEYLER",
              style: TextStyle(fontSize: 20, color: Colors.white, shadows: [
                BoxShadow(
                    offset: Offset(3, 3), blurRadius: 5, color: Colors.black)
              ]),
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
            background: Image.asset(
              "assets/images/turk_bayrak.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        /*SliverList(
          delegate: SliverChildListDelegate(sabitListeElemanlari),
        ),*/
        SliverList(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonk,
              childCount: 10),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
          ),
        ),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ),
            itemExtent: 200),
        SliverGrid(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
        SliverGrid(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonk,
                childCount: 6),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        child: Text(
          "HAKLARIMIZ ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.amber,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "ÖZGÜRLÜĞÜMÜZ ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.teal,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "ÇOCUKLARIMIZ ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "KADINLARIMIZ ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "HAYVANLARIMIZ ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "ORMANLARIMIZ ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.cyan,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "FABRİKALARIMIZ ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.grey,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "PARA BİRİMİ DEĞERİMİZ ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.pink,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "EBEMİZ ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.indigo,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget? _dinamikElemanUretenFonk(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(5)),
          CircleAvatar(
            child: Icon(
              Icons.female,
              color: Colors.white,
            ),
            backgroundColor: Colors.pink,
          ),
          Text(
            "ÖZGÜRLÜĞÜMÜZ ",
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      color: randomColorCreate(),
      alignment: Alignment.center,
    );
  }

  Color randomColorCreate() {
    return Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
  }
}
