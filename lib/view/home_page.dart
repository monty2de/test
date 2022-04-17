import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:jsonse/modal/data.dart';
import 'package:jsonse/remote_api.dart';
import 'package:jsonse/view/index_data.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _pageSize = 1;

  final PagingController<int, Data> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await RemoteApi.getCharacterList(pageKey, _pageSize);
     
      final isLastPage = newItems.length < _pageSize;
      
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
        
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {

      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PagedListView<int, Data>(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<Data>(
            itemBuilder: (context, item, index) => IndexData(
              character: item,
            ),
          ),
        ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}