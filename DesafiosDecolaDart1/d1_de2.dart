// Escreva um programa que converta uma lista temperaturas de celcius para Fahrenheit e Kelvin.

// Tempo do desafio: 10 minutos

// Raios: 0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0
// Saida esperada no console:

// Celcius: 0.00, fahrenheit: 32.00, kelvin: 273.15
// Celcius: 4.20, fahrenheit: 39.56, kelvin: 277.35
// Celcius: 15.00, fahrenheit: 59.00, kelvin: 288.15
// Celcius: 18.10, fahrenheit: 64.58, kelvin: 291.25
// Celcius: 21.70, fahrenheit: 71.06, kelvin: 294.85
// Celcius: 32.00, fahrenheit: 89.60, kelvin: 305.15
// Celcius: 40.00, fahrenheit: 104.00, kelvin: 313.15
// Celcius: 41.00, fahrenheit: 105.80, kelvin: 314.15

//Ínicio: 16:21
void main() {
  final List<double> Celsius = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  for (var temperatura in Celsius) {
    var fahrenheit = converterFahrenheit(temperatura);
    var kelvin = converterKelvin(temperatura);
    print(
        'Celcius: ${temperatura.toStringAsFixed(2)}, fahrenheit: ${fahrenheit.toStringAsFixed(2)}, kelvin: ${kelvin.toStringAsFixed(2)}.');
  }
}

converterFahrenheit(double temperatura) {
  var fahrenheit = temperatura * 1.8 + 32;
  return fahrenheit;
}

converterKelvin(double temperatura) {
  var kelvin = temperatura + 273.15;
  return kelvin;
}
//Fim 16:29

//Tempo estimado: 10 minutos
//Tempo decorrido: 8 minutos