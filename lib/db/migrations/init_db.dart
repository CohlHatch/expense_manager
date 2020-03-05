// lib\db\migrations\init_db.dart
import 'package:expense_manager/db/migrations/init_db.dart';

class DbMigrator {
  static final Map<int, String> migrations = {
    1: initDbScript,
    2: createExpenseDbScript,
  };
}

const String initDbScript = """
  CREATE TABLE Category (
      id INTEGER PRIMARY KEY,
      title TEXT,
      desc TEXT,
      iconCodePoint INTEGER
    );
  """;

const String createExpenseDbScript = """
  CREATE TABLE EXPENSE (
      id INTEGER PRIMARY KEY,
      categoryId INTEGER, 
      title TEXT,
      notes TEXT,
      amount REAL
      );
    """;

