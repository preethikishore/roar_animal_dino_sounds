import 'dart:async';
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/puzzlegame/Puzzlepiece.dart';
import 'package:flutter/services.dart';

class PuzzlePage extends StatefulWidget {


  final String title;
  final int rows = 3;
  final int cols = 3;

  PuzzlePage({Key key, this.title}) : super(key: key);

  @override
  _PuzzlePageState createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  Image  _image;
  List<Widget> pieces = [];
  List<Image> images = [Image.asset('assets/A01.png'),
                        Image.asset('assets/A02.png'),
    Image.asset('assets/A03.png'),
    Image.asset('assets/A04.png'),
    Image.asset('assets/A05.png'),

  ];
  int i = 0;
  var image;
  int time = 0;

  void runTimer() {
    Timer(Duration(seconds: 1), () {
      setState(() {
        this.time += 1;
        runTimer();
      });
    });
  }



  void increment(){
    time = 0;
    if(i >= images.length - 1)
    {
      AlertDialog(
        title: new Text("Alert Dialog title"),
        content: new Text("Alert Dialog body"),
        actions: <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
            child: new Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }
    else {

      i ++;

    }

  }

  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

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
        print('got image');

      });


    }

  }


  Future getImage() async {

    image = images[i];

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
      pieces.insert(3, widget);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bgpuzzle.jpg"), fit: BoxFit.cover)),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  child: time < 4
                        ? Expanded(child: Center(child: images[i]))
                        : Expanded(child: Center(child: Stack(children: pieces))),
                ),
                FlatButton(child: Text("Next",
                  style: TextStyle(color: Colors.black,
                    fontSize: 24,
                  ),

                ),
                  onPressed: (){
                    setState(() {
                      increment();

                      print("second image");
                      getImage();
                    });

                  },
                )
              ],
            ),
          ),
        )
    ) ;
  }
}