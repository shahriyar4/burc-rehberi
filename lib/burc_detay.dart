import 'package:flutter/material.dart';
import 'package:flutter_burcrehberi/burc_liste.dart';

import 'models/burc.dart';

class BurcDetay extends StatelessWidget {
  int gelenIndex;
  Burc secilenBurc;

  BurcDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.butunBurcler[gelenIndex];

    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi + ' Bürcü və özəllikləri', style: TextStyle(color: Colors.black),),
              background: Image.asset('images/'+secilenBurc.burcBoyukShekil, fit: BoxFit.cover,),
              centerTitle: true,
            ),
            backgroundColor: Colors.amberAccent,

          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetayi,
                  style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
