import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  final Function callback;

  Shopping(this.callback);
  @override
  _ShoppingState createState() => _ShoppingState();
}
  
  
  class Shopping1 {
    showPurchaseConfirm(BuildContext context)
    {
      return  showDialog<void>(
        context: context,
        builder: (BuildContext context){
          return //AlertDialog(
  
            //content: SingleChildScrollView(
              //child: ListBody(
                //            children: <Widget>[
                              Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[ 
                Container(
                  width: 800.0,
                  height: 350.0,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                
                child: Card(
                
                  borderOnForeground: true,
                  color: Colors.cyan,
                  margin: EdgeInsets.all(50.0),
                  elevation: 10.0,
                  semanticContainer: true,
                child: Column(
                
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Purchase Offer ?',
                    style: TextStyle(
                      fontSize: 20.0,   
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Paytm First: Get Flat Rs.125 Cashback on Subscription',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.black54,
                      
                    ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        RaisedButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('CANCEL',
                        style: TextStyle(
                          color: Colors.black,
                          )),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      RaisedButton(
                        onPressed: ()
                        {
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Purchased()));
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Purchased()));
                        },
                        color: Colors.blue,
                        child: Text('CONFIRM',
                        style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold),),
  
                      ),
                      ],  
                      ),
                    ),
                  ),        
                ],
                ),
                ),
  
                    
            
                ),
                ],
            );
                            //],
              //),
            //),
          //);
                        
          
          
      
      
        }
  
      );
    }
  }
  
  class _ShoppingState extends State<Shopping> with SingleTickerProviderStateMixin {
  
  
  
  bool _isPressed=false, _animatingReveal=false;
  int _state = 0;
  double _width=double.infinity;
  Animation _animation;
  GlobalKey _globalKey = GlobalKey();
  AnimationController _controller;
  
  @override
  void deactivate(){
    reset();
    super.deactivate();
  }
  
  @override
  dispose(){
    _controller.dispose();
    super.dispose();
  }
  
  
  _showContentoFConfirm(){
    
                Container(
                  width: 400.0,
                  height: 350.0,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                
                child: Card(
                
                  borderOnForeground: true,
                  color: Colors.cyan,
                  margin: EdgeInsets.all(50.0),
                  elevation: 10.0,
                  semanticContainer: true,
                child: Column(
                
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Purchase Offer ?',
                    style: TextStyle(
                      fontSize: 20.0,   
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Paytm First: Get Flat Rs.125 Cashback on Subscription',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.black54,
                      
                    ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        RaisedButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('CANCEL',
                        style: TextStyle(
                          color: Colors.black,
                          )),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      RaisedButton(
                        onPressed: ()
                        {
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Purchased()));
                        },
                        padding: EdgeInsets.all(0.0),
                        color: _state == 2?Colors.green:Colors.blue,
                        child: buildButtonChild(),
                        onHighlightChanged: (isPressed){
                          setState(() {
                            _isPressed = isPressed;
                            if(_state == 0){
                              animateButton();
                            }
                          });
                        },
                      ),
                      ],  
                      ),
                    ),
                  ),        
                ],
                ),
                ),
  
                    
            
                );
  }
  
  
  
  
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
  
    setState(() {
      _state = 1;
    });
  
    Timer(Duration(milliseconds: 3300), (){
      setState(() {
        _state = 2;
      });
    });
  
    Timer(Duration(milliseconds: 3600), (){
      _animatingReveal = true;
      widget.callback();
    
  });

}


Widget buildButtonChild() {
  if(_state == 0)
  {
    return Text(
      'CONFIRM',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15.0),
    );
  }
  else if(_state == 1){
    return SizedBox(
      height: 36.0,
      width: 36.0,
      child: CircularProgressIndicator(
        value:null,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      ),
    );
  }
  else{
    return Icon(Icons.check,color: Colors.green,);
  }
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


showPurchaseConfirm()
{
  return showDialog(
    context: context,
    builder: (BuildContext context){
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _showContentoFConfirm(),
        ],
      );
        
    }
  );
}

@override
Widget build(BuildContext context)
{
  return showPurchaseConfirm();
}
}




/*
class _ShoppingState extends State<Shopping> {



  showPurchaseConfirm()
  {
    return  showDialog<void>(
      context: context,
      builder: (BuildContext context){
        return 
                            Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[ 
              Container(
                width: 400.0,
                height: 350.0,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(50.0),
              ),
              
              child: Card(
              
                borderOnForeground: true,
                color: Colors.cyan,
                margin: EdgeInsets.all(50.0),
                elevation: 10.0,
                semanticContainer: true,
              child: Column(
              
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Purchase Offer ?',
                  style: TextStyle(
                    fontSize: 20.0,   
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Paytm First: Get Flat Rs.125 Cashback on Subscription',
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.black54,
                    
                  ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      RaisedButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('CANCEL',
                      style: TextStyle(
                        color: Colors.black,
                        )),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    RaisedButton(
                      onPressed: ()
                      {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Purchased()));
                      },
                      color: Colors.blue,
                      child: Text('CONFIRM',
                      style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold),),

                    ),
                    ],  
                    ),
                  ),
                ),        
              ],
              ),
              ),

                  
          
              ),
              ],
          );
              
        
    
    
      }

    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:showPurchaseConfirm(),
    );
    
    
    
    
  }
}
*/
/*

Scaffold(
      body:SafeArea(
        child: Row(
      children:<Widget>[ 
        ButtonBar(
          alignment: MainAxisAlignment.end,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('OFFER PURCHASED!',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                ),
              ),
            
            Text('Flat Rs.125 Cashback @ Paytm First',
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.black,
            ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Purchased())); 
              },
              child: Text('VIEW PURCHASE'),
              ),
          ],
        ),
          ], 
        ),  
      ],
    ),
    ),
    );
    */