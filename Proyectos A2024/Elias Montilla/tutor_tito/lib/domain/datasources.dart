import 'dart:io';

import 'package:path/path.dart' as p;

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tutor_tito/domain/entities/puntaje_dia.dart';

class DBProvider {
  static Database? _database;
  static final DBProvider db = DBProvider._();
  DBProvider._();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDB();

    return _database!;
  }

  Future<Database> initDB() async {
    Directory documDirect = await getApplicationDocumentsDirectory();
    final path = p.join(documDirect.path, 'TutorTitoDatosGuardados.db');
    print(path);
    return await openDatabase(path, version: 8,
        onCreate: (Database db, int version) async {
      await db.execute('''
      CREATE TABLE NivelUsuario(
        codigo integer primary key,
        nivelPerm integer,
        nivelVari integer,
        nivelComb integer
      )
    ''');
      await db.execute('''
      CREATE TABLE PuntajeDia(
        codigo integer primary key,
        fecha TEXT,
        puntaje TEXT, 
        ejercicio integer,
        tema TEXT
      )
    ''');
      await db.execute('''
      CREATE TABLE Permutaciones(
        codigo integer primary key,
        desbloquedo integer
      )
    ''');
    });
  }

Future<void> deleteDB() async {
  Directory documDirect = await getApplicationDocumentsDirectory();
  final path = p.join(documDirect.path, 'TutorTitoDatosGuardados.db');
  _database=null;
  await deleteDatabase(path);
}

  Future<int> nuevaPuntaje(PuntajeDia puntaje) async {
    final db = await database;
    final res = await db.insert('PuntajeDia', puntaje.toJson());
    return res;
  }

  Future<List<PuntajeDia>> getTodosPuntajes() async {
    final db = await database;
    final res = await db.query('PuntajeDia');
    final List<PuntajeDia> registro = [];
    for (var element in res) {
      PuntajeDia obt = PuntajeDia.fromJson(element);
      registro.add(obt);
    }
    return registro;
  }

  Future<void> insertPermutacion(Map<String, dynamic> permutacion) async {
    final db = await database;
    await db.insert(
      'Permutaciones',
      permutacion,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> updatePermutacion(int id, Map<String, dynamic> newValues) async {
    final db = await database;
    await db.update(
      'Permutaciones',
      newValues,
      where: 'codigo = ?',
      whereArgs: [id],
    );
  }

  Future<bool> codigoPermutacionExiste(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'Permutaciones',
      where: 'codigo = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  Future<Map<String, dynamic>> getPermutacion(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'Permutaciones',
      where: 'codigo = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return maps.first;
    } else {
      return {};
    }
  }
}
