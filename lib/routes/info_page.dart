import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_routes_using_provider/cache/todo_cache.dart';

class InfoPage extends StatelessWidget {
  const InfoPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<TodoCache>(
              builder: (context, cache, _) {
                final item = cache.list[cache.index];
                return Text('${item.description}');
              },
            ),
            ElevatedButton(onPressed: () => Navigator.of(context)?.pop(), child: Text('Back')),
          ],
        ),
      ),
    );
  }
}
