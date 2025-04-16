import 'package:day_1/champions_list.dart';

import 'package:day_1/views/widgets/champions_item.dart';
import 'package:flutter/material.dart';

class ItemListViewBuilder extends StatelessWidget {
  const ItemListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 150,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ChampionsItem(
            championsModel: championsList[index],
          );
        },
        itemCount: championsList.length,
      ),
    );
  }
}
