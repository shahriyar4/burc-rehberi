class Burc {
  String _burcAdi;
  String _burcTarixi;
  String _burcDetayi;
  String _burcBalacaShekil;
  String _burcBoyukShekil;

  Burc(this._burcAdi, this._burcTarixi, this._burcDetayi, this._burcBalacaShekil,
      this._burcBoyukShekil);

  String get burcBoyukShekil => _burcBoyukShekil;

  set burcBoyukShekil(String value) {
    _burcBoyukShekil = value;
  }

  String get burcBalacaShekil => _burcBalacaShekil;

  set burcBalacaShekil(String value) {
    _burcBalacaShekil = value;
  }

  String get burcDetayi => _burcDetayi;

  set burcDetayi(String value) {
    _burcDetayi = value;
  }

  String get burcTarihi => _burcTarixi;

  set burcTarihi(String value) {
    _burcTarixi = value;
  }

  String get burcAdi => _burcAdi;

  set burcAdi(String value) {
    _burcAdi = value;
  }
}
