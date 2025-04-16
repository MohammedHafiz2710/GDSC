import 'package:day_1/models/champions_model.dart';
import 'package:flutter/material.dart';

class ChampionCardContent extends StatelessWidget {
  final TextOverflow? overflow;
  final ChampionsModel? championsModel;
  const ChampionCardContent({
    super.key,
    required this.championsModel,
    required this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        CircleAvatar(
          backgroundImage: AssetImage(championsModel!.imagePath),
          radius: 50,
        ),
        Text(championsModel!.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        Text(championsModel!.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
        Text("Role: ${championsModel!.role}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
        Text("Lore: ${championsModel!.lore}",
            overflow: overflow,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )),
      ],
    );
  }
}
