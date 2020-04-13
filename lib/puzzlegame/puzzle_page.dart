import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';
import 'package:roar_animal_dino_sounds/puzzlegame/Puzzlepiece.dart';

class PuzzlePage extends StatefulWidget {

  final String title;
  final int rows = 4;
  final int cols = 4;

  PuzzlePage({Key key, this.title}) : super(key: key);

  @override
  _PuzzlePageState createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  PlaySound p = new PlaySound();
  Image  _image;
  List<Widget> pieces = [];
  List<Image> images = [Image.asset('assets/puzzle/P01.jpg'),
                        Image.asset('assets/puzzle/P02.jpg'),
    Image.asset('assets/A03.png'),
    Image.asset('assets/A04.png'),
    Image.asset('assets/A05.png'),


  ];
  int count = 0;
  int i = 0;
  var image;
  int time = 0;

  void runTimer() {
    Timer(Duration(seconds: 1), () {
      setState(() {
        this.time += 1;
        runTimer();
        if (this.time==4) {
          p.SoundClick("PSoundbreak.mp3");
        }
      });
    });
  }

  void increment(){
    time = 0;
//    if(i >= images.length - 1)
//    {
//      AlertDialog(
//        title: new Text("Alert Dialog title"),
//        content: new Text("Alert Dialog body"),
//        actions: <Widget>[
//          // usually buttons at the bottom of the dialog
//          new FlatButton(
//            child: new Text("Close"),
//            onPressed: () {
//              Navigator.of(context).pop();
//            },
//          ),
//        ],
//      );
//    }
//    else {
//
//      i ++;
//
//    }

    var rng = new Random();
    i=rng.nextInt(images.length - 1 );

  }

  void initState() {

    super.initState();
    Timer(Duration(seconds: 1), runTimer);

    setState(() {
      getImage();
    });



  }

  Future getScreen() async{
    var image = images[i];

    if (image != null) {
      setState(() {
        _image = image;
      });


    }

  }


  Future getImage() async {

    image = images[i];
    count = 0;

    if (image != null) {
      setState(() {
        _image = image;
        print('got image');
        pieces.clear();
      });
      splitImage(image);
    }
  }


  Future<Size> getImageSize(Image image) async {
    Completer<Size> completer = Completer<Size>();

    image.image.resolve(ImageConfiguration()).addListener(
      ImageStreamListener(
            (ImageInfo info, bool _) {
          var myImage = info.image;
          Size size = Size(myImage.width.toDouble(), myImage.height.toDouble());
          completer.complete(size);
        },
      ),
    );
    // return completer.future;
    final Size imageSize = await completer.future;
    return imageSize;
  }


  // here we will split the image into small pieces using the rows and columns defined above; each piece will be added to a stack
  void splitImage(Image image) async {
    Size imageSize = await getImageSize(image);

    for (int x = 0; x < widget.rows; x++) {
      for (int y = 0; y < widget.cols; y++) {
        setState(() {
          pieces.add(PuzzlePiece(key: GlobalKey(),
              image: image,
              imageSize: imageSize,
              row: x,
              col: y,
              maxRow: widget.rows,
              maxCol: widget.cols,
              bringToTop: this.bringToTop,
              sendToBack: this.sendToBack));
        });
      }
    }
  }

  // when the pan of a piece starts, we need to bring it to the front of the stack
  void bringToTop(Widget widget) {
    setState(() {
      pieces.remove(widget);
      pieces.add(widget);
    });
  }

  // when a piece reaches its final position, it will be sent to the back of the stack to not get in the way of other, still movable, pieces
  void sendToBack(Widget widget) {
    setState(() {
      pieces.remove(widget);
      pieces.insert(0, widget);
      count++;
      print(count);
      if (count >= 16)
      {
        print(">16");
        p.SoundClick("win.mp3");
      }
      else
        {
          print("<=16");
          p.SoundClick("puzzlepositive.mp3");
        }
    });

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bgpuzzle.jpg"), fit: BoxFit.cover)),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Container(
                    child: time < 4
                          ? Expanded(child: Align(alignment: Alignment.topLeft,child: images[i]))
                          : Expanded(child: Align(alignment:Alignment.bottomLeft,child: Stack(children: pieces ))),
                  ),

                  FlatButton(
                    //color: Colors.white,
                    child: Image.asset('assets/boardnext.png',
                  height: 30,
                  width: 50,),
                    onPressed: (){
                      setState(() {
                        increment();


                        getImage();
                      });

                    },
                  ),
                  Container(
                      color: Colors.white,
                      height: 40,
                      child:  Placeholder(color:Colors.transparent)
                  )

                ],
              ),




            ),
          )
      ),
    ) ;
  }
}