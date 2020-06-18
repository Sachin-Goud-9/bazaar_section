import 'package:animator/animator.dart';
import 'package:bazzarapp/Animations/FadeAnimation.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:bazzarapp/ui/description.dart';
import 'package:bazzarapp/ui/purchasedDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalPage extends StatefulWidget {
  Offers offer;
  FinalPage({this.offer});
  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> with SingleTickerProviderStateMixin{



  /*bool _isPressed=false, _animatingReveal=false;
  int _state = 0;
  double _width=double.infinity;
  Animation _animation;
  GlobalKey _globalKey = GlobalKey();
  AnimationController _controller;


  void animateButton(){
    double initialWidth = _globalKey.currentContext.size.width;
  
  
    _controller = AnimationController(duration: Duration(milliseconds:300),vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
    ..addListener(() {
      setState((){
        _width = initialWidth - ((initialWidth-48.0)* _animation.value);
      });
    });
    
    _controller.forward();
  
    
  
    /*Timer(Duration(milliseconds: 3600), (){
      _animatingReveal = true;
      widget.callback();
    
  });*/

}


Widget buildButtonChild() {
  
    return SizedBox(
      height: 36.0,
      width: 36.0,
      child: CircularProgressIndicator(
        value:null,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      ),
    );

  
}


double calculateElevation(){
  if(_animatingReveal){
    return 0.0;
  }
  else
  {
    return _isPressed ? 6.0:4.0;
  }
}


void reset(){
  _width = double.infinity;
  _animatingReveal = false;
  _state = 0;
}
*/


  
  @override
  Widget build(BuildContext context) {
    String title_str=widget.offer.title;
    return WillPopScope(
          onWillPop: () async => false,
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            title_str,
            style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),

          ),
          leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ), onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Description()),(Route<dynamic> route) => false);
              },
              ), 
        ),
          body: SafeArea(
                    child: Scrollbar(
                      child: SingleChildScrollView(
                                          child: Container(
                child: Column(
                              children:<Widget>[ 
                          FadeAnimation(2, Animator<double>(
                              duration: Duration(seconds: 3),
                              curve: Curves.elasticOut,
                              cycles: 0,
                              builder: (context,anim,child) => Transform.scale(
                                scale: anim.value,
                                child: Container(
                                  width: 2000.0,
                                  height: 400.0,
                                    child: Image(
                                    image: AssetImage('assets/images/Success-Tick.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 50.0,),
                          FadeAnimation(2,Text('Offer Purchased',
                            style: GoogleFonts.openSans(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                      ),
                            ),
                          ),
                          FadeAnimation(2, Text(
                              widget.offer.title,
                              style: GoogleFonts.openSans(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.italic,
                                      ),
                            ),
                          ),
                          Divider(),
                          FadeAnimation(2, FlatButton(
                              color:Colors.white,
                           
                           shape: RoundedRectangleBorder(
                             
                             borderRadius: BorderRadius.circular(5),
                             side: BorderSide(
                               color: Colors.green
                             )
                             ),
                              onPressed: (){
                                navigateToPurchasedDetails(context, widget.offer);
                              },
                              child: Text(
                                'VIEW PURCHASE',
                                style: GoogleFonts.openSans(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                              ),
                            ),
                          ),

                          /*Text('Offer Purchased',
                          style: GoogleFonts.openSans(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          Text(
                            widget.offer.title,
                            style: GoogleFonts.openSans(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          Divider(),
                          RaisedButton(
                            onPressed: navigateToPurchasedDetails(context,widget.offer),
                            child: Text(
                              'VIEW PURCHASE',
                              style: GoogleFonts.openSans(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                    ),
                            ),
                            ),*/
                            
                              ],
                ),
                  
              ),
                      ),
            ),
          ),
        ),
      ),
    );
  }

  navigateToPurchasedDetails(BuildContext context,Offers offer)
  {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PurchasedDetails(offer: offer,)));
  }

}


/*
import 'package:flare_flutter/flare_actor.dart';

class FinalPage extends StatefulWidget {
  Offers offer;
  FinalPage({this.offer});
  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  Widget bottomDisplay()
  {
    return Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[ 
              Container(
                decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.all(Radius.circular(50),),        ),
              width: 400,
              height: 350,
              child: Card(
                borderOnForeground: true,
                color: Colors.cyan,
                margin: EdgeInsets.all(50.0),
                elevation: 10.0,
                semanticContainer: true,
                child: Column(
                  children: <Widget>[
                    FlareActor(
                    "assets/Success-Check.flr",
                    animation: "Confirmed",
                    alignment: Alignment.center,
                  ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('You have Purchased.',
                  style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,),),
                    ),
                  
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                                  child: RaisedButton(
                      onPressed: null,
                      child: Text('View Details',
                      style: TextStyle(color: Colors.white,),), 
                      ),
                    ),
                  ),
                    
                  
                  
                  
                  ],
                ),
                ),
            ),
            ],
      ),
    );
  }
  showCardLayout()
  {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return bottomDisplay();
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [ 
                showCardLayout(),
              ],
      ),
    ),
    
    );
  }
}*/