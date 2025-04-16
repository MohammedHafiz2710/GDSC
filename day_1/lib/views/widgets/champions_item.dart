import 'package:day_1/constanst.dart';
import 'package:day_1/models/champions_model.dart';
import 'package:day_1/views/champion_details.dart';
import 'package:day_1/views/widgets/champion_card_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChampionsItem extends StatelessWidget {
  final ChampionsModel? championsModel;
  const ChampionsItem({
    super.key,
    required this.championsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 650,
        child: GestureDetector(
          onTap: () {
            Get.to(
              () => ChampionDetails(
                championsModel: championsModel!,
              ),
              transition: Transition.fadeIn,
              duration: const Duration(milliseconds: 500),
            );
          },
          child: Card(
            shadowColor: Colors.white,
            color: kSecondaryColor,
            elevation: 4,
            child: Hero(
              tag: championsModel!.name,
              child: Material(
                type: MaterialType.transparency,
                child: ChampionCardContent(
                  championsModel: championsModel,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
