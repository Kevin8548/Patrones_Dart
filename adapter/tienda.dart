import 'servicio-pago.dart';
import 'terminal-externa.dart';

class Tienda{
  //Problema 1: La tienda tiene 2 servicios de pago
  final ServicioPago servicioPago;
  final TerminalExterna terminalExterna;

  Tienda(this.servicioPago, this.terminalExterna);

  void finlizarCompra(double total, String metodo){
    if(metodo == 'servicio'){
      servicioPago.pagar(total);
    } else if (metodo == 'terminal'){
      //La tienda debe convertir pesos a dolares
      //NO ES SU RESPONSABILIDAD
      terminalExterna.cobrar(total / 18);
    } else {
      throw ArgumentError('Metdo de pago no valido');
    }
  }
}