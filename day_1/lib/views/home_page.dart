import 'package:day_1/views/widgets/item_list_view_builder.dart';
import 'package:day_1/views/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(),
      body: Column(
        children: [
          Text("Champions", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          ItemListViewBuilder()
        ],
      ),
    );
  }


}
