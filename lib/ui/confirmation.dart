import 'package:bazzarapp/Animations/FadeAnimation.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:bazzarapp/ui/final_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Confirmation extends StatefulWidget {
  Offers offer;
  Confirmation({this.offer});
  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override





var _gtr=false;
Color lightGrey = Color(0xffe8e8ea);
  Color myHexColor = Color(0xffaba4a3); 
  Color blue = Color(0xff4285f4);
  Color yellow = Color(0xfff4b400);
  Color red = Color(0xffdb4437);
  Color green = Color(0xff0f9d58);
  Color yellowGreen = Color(0xff61B329);
  Color babyPink = Color(0xffFFB6C1);
  Color babyBlue=Color(0xffCBE6EF);
  Color lightsky=Color(0xffE7EBE0FF);
  Color footerColor = Color(0xff87A7A6);
  Color cream =Color(0xfffffee4);
  Color sugar=Color(0xF1F4FFFF);
  Color silver=Color(0xffA2A2A1FF);
  Color myPink=Color(0xffFAEBEFFF);
  Color whiteghost=Color(0xffF8F8FF);





  _showContentoFConfirm(){
    
                return  showDialog<void>(
      context: context,
      builder: (BuildContext context){
        return //AlertDialog(

          //content: SingleChildScrollView(
            //child: ListBody(
              //            children: <Widget>[
                            FadeAnimation(2, Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
                  width: 400.0,
                  height: 350.0,
                  //color: Colors.blueGrey,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: babyBlue,
                ),
                
                child: Card(
                
                  borderOnForeground: true,
                  color: silver,
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
                        FlatButton(
                        color:Colors.white,
                           
                           shape: RoundedRectangleBorder(
                               
                               borderRadius: BorderRadius.circular(5),
                               side: BorderSide(
                                 color: Colors.green
                               )
                               ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel',
                        style: GoogleFonts.openSans(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      RaisedButton(
                        /*onPressed: ()
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
                        },*/
                        color:Colors.white,
                           
                           shape: RoundedRectangleBorder(
                               
                               borderRadius: BorderRadius.circular(5),
                               side: BorderSide(
                                 color: Colors.green
                               )
                               ),
                        child: Text('Confirm',
                        style: GoogleFonts.openSans(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                        ),
                        onPressed: (){
                          /*setState(() {
                              if(_state == 0){
                                animateButton();
                              }
                          });*/
                          print('object');
                          navigateToFinalPage(context,widget.offer);
                        },
                      ),
                      ],  
                      ),
                    ),
                  ),        
                ],
                ),
                ),
  
                    
            
                )
          ]
                           ),
                            );
      }
                );
      

  }








  Widget build(BuildContext context) {

    var _onPressed;
    if(_gtr){
        _onPressed = () {

          //SchedulerBinding.instance.addPostFrameCallback((timeStamp) { 

            //snapshot.hasError? null:Navigator.of(context).push(MaterialPageRoute(builder: (context) => Shopping((){})));
            //Navigator.pushReplacementNamed(context, '/shopping');
            //Navigator.of(context).pushNamedAndRemoveUntil('/shopping', (Route<dynamic> route) => false);
          //});
          //assert(!_debugLocked);
          
          _showContentoFConfirm();
      };
    }




    
    String exp_date=widget.offer.coupon.expiryDate;


    String title_str=widget.offer.title;

    return Scaffold(
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
              Navigator.pop(context);
            },
            ), 
      ),
      body: FadeAnimation(2,SafeArea(
          child: Scrollbar(
                    child: SingleChildScrollView(
                      child: Container(
                
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 150.0,
                    ),
                    Container(
                      width: 800.0,
                      height: 40.0,
                      
                      decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0),
                              ),
                              shape: BoxShape.rectangle,
                              color: Colors.black,
                            ),
                      
                      child: Center(
                                            child: Text(
                          'Your Balance: 100 SSG Coins',
                          style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                        ),
                      ),
                      ),
                      SizedBox(
                        height: 50.0,
                        
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                                              child: Container(
                          color: Colors.black54,
                          width: 700.0,
                          height: 200.0,
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 8.0, 5.0, 5.0),
                            child: Text('Offer Price',
                            style: GoogleFonts.openSans(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                            height: 10.0,
                          ),

                          Container(
                          width: 300.0,
                          height: 100.0,
                          color: Colors.black26,
                          child: Column(
                            children:<Widget>[
                                                Center(
                              child: Text(
                                widget.offer.couponCoins.toString(),
                                style: GoogleFonts.openSans(
                                        color: Colors.white,
                                        fontSize: 50,
                                      ),
                              ),
                            ),
                            Text(
                              'SSG Coins',
                              style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                            )
                                              ],
                          ),
                          ),
                                                ],
                                              )
                        ),
                      ),
                      
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          color: Colors.white,
                          height: 250.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                                              child: Text(
                                    'Please note:',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.openSans(
                                        color: Colors.black,
                                        fontSize: 20,
                                   ),
                                  ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 5.0, 15, 5),
                                                              child: Text(
                                      '1) Offer once redeemed, can not be refunded.Be careful before pressing that \'buy now\' button',                                 
                                      style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            
                                            fontSize: 15,
                                       ),
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 5.0, 15, 5),
                                                              child: Text(
                                      '2) Take 5 minute personalised quiz.',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontSize: 15,
                                       ),
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 5.0, 15, 5),
                                                              child: Text(
                                      '3) Order placed using these codes cannot be modified.',
                                      textAlign: TextAlign.left,
                                      
                                      style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontSize: 15,
                                       ),
                                    ),
                              ),
                                SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                
                                padding: EdgeInsets.fromLTRB(15, 5.0, 15, 5),
                                                        child: Text(
                                  '4) This coupon code is valid only till $exp_date',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.openSans(
                                        color: Colors.black,
                                        fontSize: 15,
                                   ),
                                ),
                              ),
                            ],
                          ),

                        ),
                        Container(
                          color: footerColor,
                                                child: Row(
                            children:<Widget>[
                               Checkbox(
                                 checkColor: sugar,
                                 hoverColor: Colors.green,
                                 
                                 
                                 value: _gtr, onChanged: (bool value) {
                  setState(() {
                  //if(pointsreq>50)
                  //{
                  _gtr=!_gtr;
                  print('Continue');
                  //}
                  
                  });
                  }),
    Text('I have read and accept terms and Conditions.',
          
            style: GoogleFonts.openSans(
                              color: Colors.white70,
                              fontSize: 15.0,
                              //fontWeight: FontWeight.w600,
                            ),
            ),
                            ],
                ),
                        ),
                Container(
            width: 800.0,
            height: 70.0,
            color: Colors.black87,
                    child: Center(
              child: Column(
              children:<Widget>[ 
                Text(
                  'Accept Terms & Conditions',
                  style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                  ),
                FlatButton(
              color:Colors.white,
                             
                             shape: RoundedRectangleBorder(
                               
                               borderRadius: BorderRadius.circular(5),
                               side: BorderSide(
                                 color: Colors.green
                               )
                               ),
              onPressed: _onPressed,
              
              child: Text('GET DISCOUNT CODE',
              style: GoogleFonts.openSans(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
              ),
            ),
              ],
                      ),
                    ),
          ),
                ],
                ),
              ),
            ),
          ),
          ),
      ),

    );
  }
  navigateToFinalPage(BuildContext context,Offers offer)
  {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FinalPage(offer: offer,)));
  }
}