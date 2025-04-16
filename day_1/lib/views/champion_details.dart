import 'package:day_1/constanst.dart';
import 'package:day_1/models/champions_model.dart';
import 'package:day_1/views/widgets/champion_card_content.dart';
import 'package:day_1/views/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class ChampionDetails extends StatefulWidget {
  final ChampionsModel championsModel;
  const ChampionDetails({super.key, required this.championsModel});

  @override
  State<ChampionDetails> createState() => _ChampionDetailsState();
}

class _ChampionDetailsState extends State<ChampionDetails> {
  late TextOverflow overflow;
  @override
  void initState() {
    overflow = TextOverflow.ellipsis;
    super.initState();

    Future.delayed(const Duration(milliseconds: 50), () {
      setState(() {
        overflow = TextOverflow.visible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 500,
            child: Hero(
              tag: widget.championsModel.name,
              child: Card(
                color: kSecondaryColor,
                elevation: 4,
                child: ChampionCardContent(
                  championsModel: widget.championsModel,
                  overflow: overflow,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kSecondaryColor,
                fixedSize: Size(150, 50),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back", style: TextStyle(color: Colors.white, fontSize: 20))),
        ],
      ),
    );
  }
}
