import 'package:realm/realm.dart';

part 'sample_model.g.dart';

@RealmModel()
class _SampleModel {
  @PrimaryKey()
  late String id;
  late String name;
}
