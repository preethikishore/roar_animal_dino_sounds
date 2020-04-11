import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/memory/card_item.dart';

class DinoCardBoard extends StatefulWidget {
  final Function() onWin;

  const DinoCardBoard({Key key, this.onWin}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DinoCardBoardState();
  }
}

class DinoCardBoardState extends State<DinoCardBoard> {
  List<int> openedCards = [];
  List<CardModel> cards;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cards = createCards();
  }

  List<CardModel> createCards() {
    List<String> asset = [];
    List(8).forEach((f) => asset.add('D0${(asset.length + 1)}.png'));
    List(8).forEach((f) => asset.add('D0${(asset.length - 8 + 1)}.png'));
    return List(16).map((f) {
      int index = Random().nextInt(1000) % asset.length;
      String _image =
          'assets/D' + asset[index].substring(asset[index].length - 6);
      asset.removeAt(index);
      return CardModel(
          id: 16 - asset.length - 1, image: _image, key: UniqueKey());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        crossAxisCount: 4,
        childAspectRatio: 322 / 433,
        children: cards
            .map((f) =>
            CardItem(key: f.key, model: f, onFlipCard: handleFlipCard))
            .toList());
  }

  void handleFlipCard(bool isOpened, int id) {
    cards[id].isNeedCloseEffect = false;

    checkOpenedCard(isOpened);

    if (isOpened) {
      setCardOpened(id);
      openedCards.add(id);
    } else {
      setCardNone(id);
      openedCards.remove(id);
    }

    checkWin();
  }

  void checkOpenedCard(bool isOpened) {
    if (openedCards.length == 2 && isOpened) {
      cards[openedCards[0]].isNeedCloseEffect = true;
      setCardNone(openedCards[0]);
      cards[openedCards[1]].isNeedCloseEffect = true;
      setCardNone(openedCards[1]);
      openedCards.clear();
    }
  }

  void checkWin() {
    if (openedCards.length == 2) {
      if (cards[openedCards[0]].image == cards[openedCards[1]].image) {
        setCardWin(openedCards[0]);
        setCardWin(openedCards[1]);
        openedCards.clear();
        widget.onWin();
      }
    }
  }

  void setCardNone(int id) {
    setState(() {
      cards[id].status = ECardStatus.None;
      cards[id].key = UniqueKey();
    });
  }

  void setCardOpened(int id) {
    setState(() {
      cards[id].status = ECardStatus.Opened;
      cards[id].key = UniqueKey();
    });
  }

  void setCardWin(int id) {
    setState(() {
      cards[id].status = ECardStatus.Win;
      cards[id].key = UniqueKey();
    });
  }
}
