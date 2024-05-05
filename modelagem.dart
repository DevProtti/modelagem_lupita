String calculateLupusFlareProbability(int age, double sledai, bool hasNephritis, double sledaiAvgLastTenDays) {
  double nephritisFactor = hasNephritis ? 1.0 : 0.0;

  // Ajustando SLEDAI baseado na média dos últimos 10 dias
  if (sledaiAvgLastTenDays == 0) {
    sledai = 1;
  }

  if (sledai > 20) {
    sledai == 20;
  }   

  // Calculando os valores ajustados conforme a fórmula do quadro branco
  double adjustedAge = age / 100;
  double adjustedSLEDAI = sledai / 20;
  double adjustedNephritis = nephritisFactor / 1; // Como é booleano, não precisa ajustar

  // Coeficientes conforme a imagem
  double coefficientAge = -0.00004275;
  double coefficientSLEDAI = 0.144;
  double coefficientNephritis = 0.0477375;

  // Cálculo da probabilidade baseado nos inputs e coeficientes
  double probability = (coefficientAge * adjustedAge) + (coefficientSLEDAI * adjustedSLEDAI) + (coefficientNephritis * adjustedNephritis);
  
  String probabilityPercentage = "${(probability * 100).toStringAsFixed(2)}%";


  return probabilityPercentage;
}
