import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import '../Model/database.dart';
import '../Model/wine.dart';

// SQLite 데이터베이스와의 상호작용을 담당하는 클래스.
// 예를 들어 특정 카테고리에 속하는 와인을 검색하는 메소드를 제공하는 클래스
// + 와인 랜덤 추천 메소드 제공

// SQLite 데이터베이스에서 특정 카테고리에 맞는 와인 리스트를 검색하여 반환 기랜
class WineRepository {


  //#전체 와인 데이터(CSV)->DB
  Future<List<List<dynamic>>> readCsv(String filePath) async {
    String content = await File(filePath).readAsString();
    List<List<dynamic>> csvTable = CsvToListConverter().convert(content);

    return csvTable;
  }

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

  //#입력값을 AI모델->DB-> wine 객체로 산출
  void runModel(List<String> list) {
    // 모델 초기화
    TFLiteModelInterpreter.runModelOnBinary(_convertInputToBinary(input));
    // 결과 처리

    }
  //1.입력받은 카테고리를 레포지토리로 보내는 것  ==> List<String>
    2.와인 객체를 화면에 출력하기 위해.  -==> Wine wine

  // 입력값을 이진 데이터로 변환하는 함수
  Uint8List _convertInputToBinary(List<String> input) {
  // 예시: 텍스트를 바이트로 변환
    String id= Uint8List.fromList(utf8.encode(input));
    getData(database, id);
  //
  }
  Wine getData(String id) async {
    //1.DB에서 값 가져와서 MAP형태로 변환하기. 
    //2.Wine객체로 변환하기. 
    Database database;
    database=wholeDatabase;

    List<Map<String, dynamic>> result = await database.query('id');
     //여기서 'wines'가 뭘 의미하느지 수정 필요.
    x
    Wine wine;
    wine=mapToWine(result);

  }

  Wine mapToWine(Map<String, dynamic> map){

    Wine wine;
    wine['id']=map['id'];
    wine['name']=map['name'];
    wine['mood']=map['mood'];
    wine['taste']=map['snack'];
    wine['alcohol']=map['alcohol'];
    wine['price']=map['price'];

  }

}