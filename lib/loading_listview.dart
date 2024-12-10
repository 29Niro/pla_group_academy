import 'package:flutter/material.dart';

class LoadingListview extends StatefulWidget {
  const LoadingListview({super.key});

  @override
  State<LoadingListview> createState() => _LoadingListviewState();
}

class _LoadingListviewState extends State<LoadingListview> {
  final List<int> _items = [];
  bool _isLoading = false;
  final int _pageSize = 15;

  @override
  void initState() {
    super.initState();
    _loadMoreItems();
  }

  Future<void> _loadMoreItems() async {
    if (_isLoading) return;

    setState(() => _isLoading = true);

    await Future.delayed(const Duration(seconds: 3));

    List<int> newItems =
        List.generate(_pageSize, (index) => _items.length + index + 1);

    setState(() {
      _items.addAll(newItems);
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loading List"),
      ),
      body: ListView.builder(
        itemCount: _items.length + 1,
        itemBuilder: (context, index) {
          if (index == _items.length) {
            return _isLoading
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: CircularProgressIndicator(),
                    ),
                  )
                : const SizedBox.shrink();
          }
          return ListTile(
            title: Text("Item ${_items[index]}"),
          );
        },
        controller: ScrollController()
          ..addListener(() {
            if (_isLoading) return;

            final maxScroll = context.size?.height ?? 0;
            final currentScroll =
                context.findRenderObject()?.paintBounds.bottom ?? 0;

            if (currentScroll >= maxScroll) {
              _loadMoreItems();
            }
          }),
      ),
    );
  }
}
