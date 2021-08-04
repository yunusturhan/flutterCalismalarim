import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(
        index + 1, "Ogrenci adı ${index + 1}", "Ogrenci soyadı ${index + 1}"),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Listesi"),
      ),
      body: buildListviewSeperatedKullanimi(),
    );
  }

  ListView buildListviewSeperatedKullanimi() {
    return ListView.separated(
      itemBuilder: (BuildContext conext, int index) {
        var oAnkiOgr = tumOgrenciler[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade200 : Colors.purple.shade200,
          child: ListTile(
            onTap: () {
              print("$oAnkiOgr numaralı öğrenciye tıklandı.");
              EasyLoading.showToast("Eleman tıklandı.",
                  duration: Duration(seconds: 3),
                  dismissOnTap: true,
                  toastPosition: EasyLoadingToastPosition.bottom);
            },
            onLongPress: () {
              _alertDialogIslemleri(conext, oAnkiOgr);
            },
            title: Text(oAnkiOgr.isim),
            subtitle: Text(oAnkiOgr.soyisim),
            leading: CircleAvatar(
              child: Text(oAnkiOgr.id.toString()),
            ),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
      separatorBuilder: (context, index) {
        int newIndex = index + 1;
        // if (newIndex % 4 == 0) {
        //   return Divider(
        //     thickness: 2,
        //     color: Colors.grey,
        //     endIndent: 60,
        //     indent: 60,
        //   );
        // }

        if (newIndex % 10 == 0) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.warning,
                  size: 32,
                ),
                Text(
                  "Buraya reklam gelecek.",
                  style: TextStyle(fontSize: 32),
                )
              ],
            ),
          );
        }
        return SizedBox();
      },
    );
  }

  ListView klasikListViewKullanimi() {
    return ListView(
      children: tumOgrenciler
          .map(
            (Ogrenci ogr) => ListTile(
              title: Text(ogr.isim),
              subtitle: Text(ogr.soyisim),
              leading: CircleAvatar(
                child: Text(ogr.id.toString()),
              ),
            ),
          )
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilenOgrenci) {
    showDialog(
        barrierDismissible: false,
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilenOgrenci.toString()),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("data" * 200),
                  Text("data1" * 200),
                  Text("data2" * 200),
                ],
              ),
            ),
            actions: [
              ButtonBar(
                children: [
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("KAPAT")),
                  OutlinedButton(onPressed: () {}, child: Text("TAMAM")),
                ],
              ),
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
  @override
  String toString() {
    // TODO: implement toString
    return "Isim : $isim Soyism : $soyisim id :$id";
  }
}
