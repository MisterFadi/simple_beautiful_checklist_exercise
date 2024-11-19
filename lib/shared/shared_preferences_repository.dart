import 'package:simple_beautiful_checklist_exercise/shared/database_repository.dart';

class SharedPreferencesRepository implements DatabaseRepository {
  @override
  Future<void> addItem(String item) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteItem(int index) {
    throw UnimplementedError();
  }

  @override
  Future<void> editItem(int index, String newItem) {
    throw UnimplementedError();
  }

  @override
  Future<List<String>> getItems() {
    throw UnimplementedError();
  }

  @override
  Future<int> get itemCount => throw UnimplementedError();
}
