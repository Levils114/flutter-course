class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcon;

  CurrencyModel({this.name, this.real, this.dolar, this.euro, this.bitcon});

  static List<CurrencyModel> getCurrency() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcon: 0.000016),
      CurrencyModel(
          name: 'Dolar', real: 5.65, dolar: 1.0, euro: 0.05, bitcon: 0.000088),
      CurrencyModel(
          name: 'Euro', real: 6.62, dolar: 1.17, euro: 1.0, bitcon: 0.000010),
      CurrencyModel(
          name: 'Bitcoin',
          real: 64116.51,
          dolar: 11351.30,
          euro: 9689.54,
          bitcon: 1.0),
    ];
  }
}
