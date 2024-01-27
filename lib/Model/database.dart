import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';

Future<List<List<dynamic>>> readCsv(String filePath) async {
  String content = await File(filePath).readAsString();
  List<List<dynamic>> csvTable = CsvToListConverter().convert(content);
  return csvTable;
}

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<void> insertDataFromCsv(List<List<dynamic>> csvData) async {
  Database database = await openDatabase('mydatabase.db', version: 1, onCreate: (db, version) {
    // 테이블 생성 등의 초기화 작업 수행
    db.execute('''
      CREATE TABLE IF NOT EXISTS mytable (
        id INTEGER PRIMARY KEY,
        column1 TEXT,
        column2 TEXT,
        column3 INTEGER
      )
    ''');
  });

  Batch batch = database.batch();

  for (List<dynamic> row in csvData) {
    batch.insert('mytable', {
      'column1': row[0],
      'column2': row[1],
      'column3': row[2],
    });
  }

  await batch.commit();
}
