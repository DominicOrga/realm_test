// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class SampleModel extends _SampleModel
    with RealmEntity, RealmObjectBase, RealmObject {
  SampleModel(
    String id,
    String name,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
  }

  SampleModel._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<SampleModel>> get changes =>
      RealmObjectBase.getChanges<SampleModel>(this);

  @override
  SampleModel freeze() => RealmObjectBase.freezeObject<SampleModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(SampleModel._);
    return const SchemaObject(
        ObjectType.realmObject, SampleModel, 'SampleModel', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }
}
