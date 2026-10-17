import 'documento.dart';

class DocumentoExcel implements Documento{

    @override
    String generar (List<int> calificaciones){
        //Aqui debe de estar el proceso pare crear el archivo de excel
        return 'Calificaciones en formato excel: ${calificaciones.join(", ")}';
    }
}