import 'figura_geometrica.dart';
import 'triangulo.dart';

void main() {
  //No se puede instanciar(crear un objeto) de una clase absrtacta
  //FiguraGeometrica unaFigura = FiguraGeometrica();

  Triangulo unTriangulo = Triangulo();

  unTriangulo.obtenerArea();
  print('Area de triangulo: (unTriangulo.area)');
}
