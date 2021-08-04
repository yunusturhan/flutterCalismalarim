import 'package:flutter/material.dart';

class ListViewLayoutProblemleri extends StatelessWidget {
  const ListViewLayoutProblemleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview layout problemleri."),
      ),
      body: Container(
        height: 200,
        child: Row(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                //shrinkWrap: true, listview sınırlama
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade500,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade700,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade900,
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
          width: 4,
          color: Colors.red,
        )),
      ),
    );
  }

  Column columIcindeListe() {
    return Column(
      children: [
        //Text("başlangıç"),
        Expanded(
          child: ListView(
            //shrinkWrap: true, listview sınırlama
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade300,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade500,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade700,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade900,
              ),
            ],
          ),
        ),
        //Text("bitiş"),
      ],
    );
  }
}
