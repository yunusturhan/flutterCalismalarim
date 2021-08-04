import 'package:flutter/material.dart';

final Color sfcRenk = Colors.black;

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card ve list tile"),
      ),
      body: Center(
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
              ],
            ),
            Text("Selam baby"),
            OutlinedButton(
              onPressed: () {},
              child: Text("ben bir butonum"),
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade200,
          shadowColor: Colors.grey,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
            ),
            title: Text("başlık"),
            subtitle: Text("alt başlık"),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 2,
          height: 10,
          indent: 60,
          endIndent: 60,
        ),
      ],
    );
  }
}
