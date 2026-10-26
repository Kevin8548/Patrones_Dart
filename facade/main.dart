import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {
  final proyector = Proyector();
  final audio = SistemaAudio();
  final reproductor = Reproductor();

  // Iniciar la película
  proyector.encender();
  audio.encender();
  audio.ajustarVolumen(25);
  reproductor.reproducir('Coraline');
  // Sin fancade, se llaman a cada clase y metodo necesarios
  // para lograr reproducir la pelicula

  // Detener la película
  reproductor.detener();
  audio.apagar();
  proyector.apagar();
}
