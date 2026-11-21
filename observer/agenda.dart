import 'observador.dart';

class Agenda {
  final List<Observador> _observadores = [];

  void suscribir(Observador observador) {
    _observadores.add(observador);
  }

  void desuscribir(Observador observador) {
    _observadores.remove(observador);
  }

  // final PanelAlumno panel = PanelAlumno();
  // final Notificador notificador = Notificador();

  void publicarTarea(String tarea) {
    print('Publicando: $tarea');

    for (final observador in _observadores) {
      observador.actualizar(tarea);
    }

    // panel.mostrar(tarea);
    // notificador.notificar(tarea);

    //Aqui la agenda se ocupa de 3 tareas
    //Viola el principio de división de responsabilidades
    //La agenda se encarga de publicar tareas como de coordinar con la UI
    // y las notificaciones
  }
}
