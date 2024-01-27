import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '


class Database{

    Database wholeDatabase;
    Database favoritedDatabase
    Database recordedDatabase

    //1.CSV 파일 읽기
    Future<List<List<dynamic>>> readCsv(String filePath) async {
    String content = await File(filePath).readAsString();
    List<List<dynamic>> csvTable = CsvToListConverter().convert(content);
    return csvTable;
    }

    //2.CSV데이터를 SQLite 데이터베이스에 저장. 
    Future<void> insertDataFromCsv(List<List<dynamic>> csvData) async {
    Database database = await openDatabase('mydatabase.db', version: 1, onCreate: (db, version) {
        // 테이블 생성 등의 초기화 작업 수행
        db.execute('''
            CREATE TABLE IF NOT EXISTS mytable (
            id INTEGER PRIMARY KEY,
            name TEXT,
            mood TEXT,
            snack TEXT,
            alcohol TEXT,
            price TEXT
        )
        ''');
    });

    Batch batch = database.batch();

    for (List<dynamic> row in csvData) {
     batch.insert('mytable', {
      'name': row[0],
      'mood': row[1],
      'snack': row[2],
      'alcohol': row[3],      
      'price': row[4]
     });
    }

     await batch.commit();
}

class DatabaseHelper {
  Future<Database> openDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'mydatabase.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE IF NOT EXISTS users (
            id INTEGER PRIMARY KEY,
            datetime Datetime,
             )
        ''');
      },
    );
  }
  Future<void> insertFavoritedWine(int id, DateTime favoritedDate) async {
    Database favoritedDatabase = await openDatabase();

    await database.insert(
      'wines',
      {'id': id, 'datetime':favoritedDate }
    );
  }
   Future<void> insertRecordedWine(int id, DateTime recordedDate) async {
    Database recordedDatabase = await openDatabase();

    await database.insert(
      'wines',
      {'id': id, 'datetime':recordedDate }
    );
  }
}    
