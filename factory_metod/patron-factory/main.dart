import 'generador-excel.dart';
import 'generador-json.dart';
import 'generador-reportes.dart';
import 'generador-texto.dart';

void main() {

  final generadores = <GeneradorReportes>[
    GeneradorExcel(),
    GeneradorTexto(),
    GeneradorJson()
  ];

  for (final generador in generadores){
    generador.generarReporte([10, 8, 8, 9, 8, 10]);
  }
}