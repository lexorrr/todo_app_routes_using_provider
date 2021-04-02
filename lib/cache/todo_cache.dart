import 'dart:collection';

import 'package:todo_app_routes_using_provider/model/todo.dart';

class TodoCache {
  var _index = -1;

  final List<Todo> _todos = const [
    Todo(title: 'Item 1', description: 'First to-do of the list'),
    Todo(title: 'Item 2', description: 'Second to-do of the list'),
    Todo(title: 'Item 3', description: 'Third to-do of the list'),
  ];

  void addItem(String title, String description) {
    _todos.add(Todo(title: title, description: description));
  }

  int get index => _index;
  set index(int value) {
    if ((value >= 0) && (value < _todos.length)) {
      _index = value;
    } else {
      _index = -1;
    }
  }

  UnmodifiableListView<Todo> get list =>
      UnmodifiableListView<Todo>(_todos);
}