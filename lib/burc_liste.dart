import 'package:flutter/material.dart';
import 'package:flutter_burcrehberi/ui/strings.dart';

import 'models/burc.dart';

class BurcListesi extends StatelessWidget {
  static List<Burc> butunBurcler;

  @override
  Widget build(BuildContext context) {
    butunBurcler = veriHazirla();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Bürc Rəhbəri',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: listeyiHazirla());
  }

  List<Burc> veriHazirla() {
    List<Burc> burclar = [];

    for (int i = 0; i < 12; i++) {
      String kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      String buyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';

      Burc eklenecekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIXLERI[i],
          Strings.BURC_XUSUSIYYETLERI[i],
          kucukResim,
          buyukResim);

      burclar.add(eklenecekBurc);
    }
    return burclar;
  }

  Widget listeyiHazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirBurc(context, index);
      },
      itemCount: butunBurcler.length,
    );
  }

  Widget tekSatirBurc(BuildContext context, int index) {
    Burc oankiBurc = butunBurcler[index];

    return Card(
      elevation: 4,
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, '/burcDetay/$index'),
        leading: Image.asset(
          'images/' + oankiBurc.burcBalacaShekil,
          width: 64,
          height: 64,
        ),
        title: Text(
          oankiBurc.burcAdi,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Colors.amber.shade500),
        ),
        subtitle: Text(
          oankiBurc.burcTarihi,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black45),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.amber,
        ),
      ),
    );
  }
}
