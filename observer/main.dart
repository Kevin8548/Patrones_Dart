import 'agenda.dart';
import 'historial.dart';
import 'notificador.dart';
import 'panel-alumno.dart';

void main() {
  final agenda = Agenda();
  final PanelAlumno panel = PanelAlumno();
  final notificador = Notificador();
  final historial = Historial();

  //Suscripcion a cada servicio de observador
  agenda.suscribir(panel);
  agenda.suscribir(notificador);
  agenda.suscribir(historial);

  //Ambos observadores reciben el aviso
  agenda.publicarTarea('Investigación de patrones de diseño');

  //El usuario ya no quiere recibir notificaciones
  agenda.desuscribir(notificador);

  //Se genera otra tarea
  agenda.publicarTarea('Investigar el patron Facade');
  //Solo el panel recibe el aviso de la nueva tarea
}

// Cuando conviene: cuando varios componentes
// necestian reaccionar al mismo cambio
// y sus suscripciones pueden variar.
// Pero no implica ejecución asincrona o paralela
