class Configuracion {
  // Esto es un constructor privado
  Configuracion._();

  //Lo que es static: vive durante todo el ciclo de la app
  //Final: no se puede cambiar la referencia de la variable
  static final Configuracion _instancia = Configuracion._();

  //Es un constructor de fabrica que devuelve la misma instancia
  factory Configuracion() => _instancia;
  String idioma = 'es';
}
