import 'documento.dart';

class DocumentoTexto implements Documento{

    @override
    String generar (List<int> calificaciones){
        //Aqui debe de estar el proceso pare crear el archivo de texto
        return 'Calificaciones en formato texto: ${calificaciones.join(", ")}';
    }
}