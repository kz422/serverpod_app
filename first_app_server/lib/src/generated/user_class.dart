/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class User extends _i1.TableRow {
  User({
    int? id,
    required this.name,
    required this.image,
  }) : super(id);

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      image:
          serializationManager.deserialize<String>(jsonSerialization['image']),
    );
  }

  static final t = UserTable();

  String name;

  String image;

  @override
  String get tableName => 'users';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'image':
        image = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<User>> find(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<User?> findSingleRow(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<User>(
      where: where != null ? where(User.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<User?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<User>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required UserExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef UserExpressionBuilder = _i1.Expression Function(UserTable);

class UserTable extends _i1.Table {
  UserTable() : super(tableName: 'users');

  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final image = _i1.ColumnString('image');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        image,
      ];
}

@Deprecated('Use UserTable.t instead.')
UserTable tUser = UserTable();
