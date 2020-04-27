import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/puzzlegame/Puzzlepiece.dart';
import 'package:roar_animal_dino_sounds/puzzlegame/puzzlehome.dart';
import '../main_home_page.dart';

class PuzzleHardPage extends StatefulWidget {

  final String title;
  final int rows = 5;
  final int cols = 4;



  PuzzleHardPage({Key key, this.title}) : super(key: key);

  @override
  _PuzzleHardPageState createState() => _PuzzleHardPageState();
}

class _PuzzleHardPageState extends State<PuzzleHardPage> {
  PlaySound p = new PlaySound();
  Image  _image;
  List<Widget> pieces = [];
  static final List<Image> images = [
    Image.asset('assets/puzzles_image/p0.png'),
    Image.asset('assets/puzzles_image/p1.png'),
    Image.asset('assets/puzzles_image/p2.png'),
    Image.asset('assets/puzzles_image/p3.png'),
    Image.asset('assets/puzzles_image/p4.png'),
    Image.asset('assets/puzzles_image/p5.png'),
    Image.asset('assets/puzzles_image/p6.png'),
    Image.asset('assets/puzzles_image/p7.png'),
    Image.asset('assets/puzzles_image/p8.png'),
    Image.asset('assets/puzzles_image/p9.png'),
    Image.asset('assets/puzzles_image/p10.png'),
    Image.asset('assets/puzzles_image/p11.png'),
    Image.asset('assets/puzzles_image/p12.png'),

  ];
  int count = 0;
  bool _timestatus ;
  var image;
  int time = 0;
  static final rng = new Random();
  int i=rng.nextInt(images.length - 1 );
  static const insidecolor = const Color(0xffde6000);
  // int i = 0;

  void runTimer() {
    if(_timestatus == true) {
      Timer(Duration(seconds: 1), () {
        setState(() {
          this.time += 1;
          runTimer();
          if (this.time == 4) {
            p.SoundClick("PSoundbreak.mp3");
          }
        });
      });
    }
  }
//
  void increment(){
    time = 0;
    var rng = new Random();
    i=rng.nextInt(images.length);

  }

  void initState() {
    _timestatus = true;

    super.initState();
    Timer(Duration(seconds: 1), runTimer);

    setState(() {
      getImage();
    });



  }

  Future getImage() async {



    image = images[i];
    count = 0;

    if (image != null) {
      setState(() {
        _image = image;
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
      if (count >= 20)
      {

        p.SoundClick("win.mp3");
        Timer(Duration(seconds: 3), () {
          setState(() {
            increment();
            getImage();

          });

        });
      }
      else
      {

        p.SoundClick("puzzlepositive.mp3");
      }
    });

  }


  Widget get_imagepiece()
  {
    return Align(
      alignment: Alignment.topLeft,
      child: Stack(overflow: Overflow.visible,
          children: pieces
      ),
    ) ;

  }

  @override
  Widget build(BuildContext context) {
    Future <bool> backscreen()
    async{
      _timestatus = false;
      p.stopFile();

      Navigator.push(context, MaterialPageRoute(builder: (context) => PuzzleHome()))??
          false;

    }


    return WillPopScope(
      onWillPop: backscreen,
      child: SafeArea(
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
                          : //Expanded(child: Stack( overflow: Overflow.visible ,children: pieces )),
                      Expanded(child: get_imagepiece()),

                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(

                        onTap: (){
                          _timestatus = false;
                          p.stopFile();
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => mainhome()),
                          );
                        },
                        child: Icon(
                          Icons.home,
                          color: insidecolor,
                          size: 60.0,
                        ),
                      ),

                    ),

                    Container(
                        height: 60,
                        child:  Placeholder(color:Colors.transparent)
                    )

                  ],
                ),


              ),
            )
        ),
      ),
    ) ;
  }
}