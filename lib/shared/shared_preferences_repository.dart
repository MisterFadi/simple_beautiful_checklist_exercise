import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_beautiful_checklist_exercise/shared/database_repository.dart';

class SharedPreferencesRepository implements DatabaseRepository {
  final SharedPreferencesAsync prefs = SharedPreferencesAsync();

  List<String> _items = [];

  @override
  Future<void> addItem(String item) async {
    _items.add(item);
    await _saveItems();
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
  Future<List<String>> getItems() async {
    _items = await prefs.getStringList("Hallo") ?? [];
    return _items;
  }

  @override
  Future<int> get itemCount => throw UnimplementedError();

  Future<void> _saveItems() async {
    await prefs.setStringList("Hallo", _items);
  }
}
