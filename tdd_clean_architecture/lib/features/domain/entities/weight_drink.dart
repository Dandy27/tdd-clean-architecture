class WeightDrink {
  double quantDoses;
  double pesoBruto;
  double tara;
  double pesoGrfAberta;

  WeightDrink({
    required this.quantDoses,
    required this.pesoBruto,
    required this.tara,
    required this.pesoGrfAberta,
  });

  calculate() {
    var total = (pesoGrfAberta - tara) * quantDoses / (pesoBruto - tara);
    return total;
  }
}
