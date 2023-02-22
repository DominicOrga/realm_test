import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:realm_test/sample_model.dart';

void main() {
  _setupMainModuleRealmListener();

  runApp(const MyApp());
}

Future<void> _setupMainModuleRealmListener() async {
  final realm = Realm(Configuration.local([SampleModel.schema]));

  // Set up listener for entire SampleModel collection

  realm.all<SampleModel>().changes.listen((events) {
    print(
      'Realm events (Main Module): '
      'inserted = ${events.inserted}, '
      'modified = ${events.modified}, '
      'deleted = ${events.deleted}, '
      'new modified = ${events.newModified},'
      'moved = ${events.moved}',
    );
  });

  // Trigger delete
  // await Future.delayed(const Duration(milliseconds: 20)); // Comment out to print deletion result
  realm.write(() => realm.deleteAll<SampleModel>());


  // Trigger create
  // await Future.delayed(const Duration(milliseconds: 20)); // Comment out to print creation result
  realm.write(() => realm.add(SampleModel('1', 'name 1')));


  // Trigger modified
  // await Future.delayed(const Duration(milliseconds: 20)); // Comment out to print modification result
  realm.write(() => realm.find<SampleModel>('1')?.name = 'name 2');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: Text('See logs'))),
    );
  }
}
