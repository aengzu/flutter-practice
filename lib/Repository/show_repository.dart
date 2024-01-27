import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../Model/wine.dart';
import '../Model/database.dart';


Future<Wine wine> getWinesByName(String name) async {
    Database database = wholeDatabase;

    List<Map<String, dynamic>> result = await database.query('wines');

    int? id;
  String? name;
  String? mood;
  String? snack;
  int? alcohol;
  double? price;
  String? type;
    
    return User(id: map['id'], name: map['name'], mood: map['mood'], 
    snack: map['snack'], alcohol:map['alcohol'], price: map['price'], type: map['type']);
    //검색할 때 쓰는 쿼리. 
    return database.query('users', where: 'name = ?', whereArgs: [name]);

}