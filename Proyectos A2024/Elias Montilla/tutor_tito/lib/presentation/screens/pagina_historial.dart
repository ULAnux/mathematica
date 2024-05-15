import 'package:flutter/material.dart';
import 'package:tutor_tito/domain/datasources.dart';

class HistoriaoScreen extends StatelessWidget {
  const HistoriaoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DBProvider.db.getTodosPuntajes(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text('${snapshot.data![index].tema} #${snapshot.data![index].ejercicio} | Puntaje: ${snapshot.data![index].puntaje} '),
            subtitle: Text('${snapshot.data![index].fecha}')
          );
        },);
        
        }
        return Center(child: CircularProgressIndicator(),);
      }
    );
  }
}