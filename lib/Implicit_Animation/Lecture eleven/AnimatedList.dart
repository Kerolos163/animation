import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedListScreen extends StatefulWidget {
  const AnimatedListScreen({super.key});

  @override
  State<AnimatedListScreen> createState() => _AnimatedListScreenState();
}

class _AnimatedListScreenState extends State<AnimatedListScreen> {
  final GlobalKey<AnimatedListState> _Listkey = GlobalKey<AnimatedListState>();
  List<String> _List = [];
  void _addItem() {
    setState(() {
      _List.insert(0, "New Item ${_List.length}");
      _Listkey.currentState?.insertItem(0);
    });
  }

  void _RemoveItem(index) {
    setState(() {
      String removedItem = _List[index];
      _List.removeAt(index);
      _Listkey.currentState?.removeItem(index,
          duration: const Duration(milliseconds: 500), (context, animation) {
        return ListTile(
          title: Text(removedItem),
          textColor: Colors.red,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated List"),
      ),
      body: AnimatedList(
        key: _Listkey,
        itemBuilder: (context, index, animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: Container(
              color: Colors.green,
              child: ListTile(
                title: Text(
                  _List[index],
                  style: const TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                  onPressed: () {
                    _RemoveItem(index);
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
