import 'package:bazzarapp/Animations/FadeAnimation.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:bazzarapp/ui/InstructionsandTerms.dart';
import 'package:bazzarapp/ui/confirmation.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:url_launcher/url_launcher.dart';

class Description extends StatefulWidget {
  Offers offer;
  Description({this.offer});
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> with SingleTickerProviderStateMixin {
  
  var _gtr=false;
  
  //var name='Sunglasses';

  /*Future<void> _showAlertDialog(){
    return showDialog<void>(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Insufficient Points'),
          content: SingleChildScrollView(
            child: ListBody(children: <Widget>[
              Text('You need to gain more points.'),
              Text('$pointsreq'),
            ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Continue'),
              onPressed: () {
                Navigator.of(context).pop();
              },
              ),
          ],
        );
      },
    );
  }*/


  /*void _onPressed(){
    if(_gtr)
    {
      var _onPressed;
      if(_gtr){
        _onPressed = () {

          //SchedulerBinding.instance.addPostFrameCallback((timeStamp) { 

            //snapshot.hasError? null:Navigator.of(context).push(MaterialPageRoute(builder: (context) => Shopping((){})));
            //Navigator.pushReplacementNamed(context, '/shopping');
            //Navigator.of(context).pushNamedAndRemoveUntil('/shopping', (Route<dynamic> route) => false);
          //});
          assert(!_debugLocked);
          
      }
    }
  }*/



  




  void _launchBrowser(String temp) async {
        
        String url='http://'+temp;
        if(await canLaunch(url)){
          await launch(url);
        }
        else{
          throw 'Could not Launch $url';
        }
  }




  showAlertForPlayStore(){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Do you want to Open PlayStore'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('To Rate the App Open Playstore'),
              ],
            ),
          ),
            actions: <Widget>[
              FlatButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
              FlatButton(
                onPressed: (){
                  _launchBrowser('www.play.store.com');
                },
                child: Text('Confirm'),
              )
            ],
        );
      },
      );
  }



  @override
  Widget build(BuildContext context) {

    
    int pointsreq=widget.offer.couponCoins;
    var _onPressed;
    if(_gtr){
        _onPressed = () {

          //SchedulerBinding.instance.addPostFrameCallback((timeStamp) { 

            //snapshot.hasError? null:Navigator.of(context).push(MaterialPageRoute(builder: (context) => Shopping((){})));
            //Navigator.pushReplacementNamed(context, '/shopping');
            //Navigator.of(context).pushNamedAndRemoveUntil('/shopping', (Route<dynamic> route) => false);
          //});
          //assert(!_debugLocked);
          
          //showPurchaseConfirm();
      };
    }



     
      
    //String title_str=widget.offer.coupon.ins;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          /*actions:<Widget>[Positioned(
            top: 50,
            left: 10,
            child:  FadeAnimation(1, Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.white),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30)
                      ),

              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
              ),
            )),
            
          ),
          ],*/
          leading: new IconButton(
            icon: new Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ), onPressed: (){
              Navigator.pop(context);
            },
            ),
          title: Center(
            
                      child: Text(widget.offer.coupon.title,
            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
            ),
          ),

        ),
        body: SafeArea(
          child: Scrollbar(
            child: SingleChildScrollView(
              child:  Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                              child: Column(
                  
            children: <Widget>[
                
                FadeAnimation(1,Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text('About this Offer',
                      style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 20,
                                //fontWeight: FontWeight.w600,
                              ),
                        ),
                    ),
                  ),
                ),
                FadeAnimation(1, Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(widget.offer.coupon.description,
                      style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 14,
                                //fontWeight: FontWeight.w600,
                              ),
                      textAlign: TextAlign.justify,

                    ),
                  ),
                ),
                FadeAnimation(1, Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              side: BorderSide(width: 1.0,color: Colors.white),
                              ),
                      onPressed: () {
                          navigateToInstructionsandTerms(context,widget.offer,0);
                      },
                      child: Row(
                            children:<Widget>[                         
                                Container(
                                  height: 60.0,
                                  width: 85.0,
                                child: Padding(
                                  padding: EdgeInsets.only(top:5.0),
                                                                  child: Text('Instructions to Purchase',
                            style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  //fontWeight: FontWeight.w600,
                              ),
                            ),
                                ),
                                ),
                            SizedBox(
                              width: 20.0,
                            ),
                            new IconButton(
                    onPressed: () {
                        navigateToInstructionsandTerms(context,widget.offer,0);
                    },
                    icon:new Icon(Icons.arrow_forward_ios, color: Colors.white,),
              ),
                              
                            ],
                          ),
                      ),
                      RaisedButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white,width: 1.0,),
                        ),
                        onPressed: (){
                          navigateToInstructionsandTerms(context,widget.offer,1);
                        },
                        child: Row(
                            children:<Widget>[                         
                                Container(
                                  height: 60.0,
                                  width: 85.0,
                                child: Padding(
                                  padding: EdgeInsets.only(top:5.0),
                                                                child: Text('Terms and Coniditions',
                            style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 15.0,
                                //fontWeight: FontWeight.w600,
                              ),
                            ),
                                ),
                                ),
                            SizedBox(
                              width: 20.0,
                            ),
                            new IconButton(
                    onPressed: () {
                          navigateToInstructionsandTerms(context,widget.offer,1);
                    },
                    icon: new Icon(Icons.arrow_forward_ios, color: Colors.white,),
              ),
                              
                            ],
                          ),
                      ),
                      ],
                    ),
                ),
                FadeAnimation(1, Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('About Offer',
                    style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 20,
                                //fontWeight: FontWeight.w600,
                              ),
                    ),
                  ),
                ),
                FadeAnimation(1, Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      widget.offer.store.description,
                    
                      style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 14,
                                //fontWeight: FontWeight.w600,
                              ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                /*Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black,
                      ),
                      width: 700.0,
                      height: 75.0,
                      child: 
                      Row(
                        children:<Widget>[ 
                          Column(
                            children:<Widget>[ 
                              Padding(
                padding: const EdgeInsets.only(top:5.0,),
                child: Text('Tell me more!',
                style:
                TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                ),
                              ),  
                              Text('More About Edubull',
                              style:
                              TextStyle(color: Colors.white70,
                              fontSize: 20.0,),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right:15.0),
                              child: FlatButton(
                                color: Colors.white,
                                onPressed: null,//_launchBrowser(widget.offer.store.website), 
                                child: Text('View More'),
                                ),
                            ),
                          ),
                      ],
                      ),    
                    ),*/
                    FadeAnimation(1, Padding(
                      padding: EdgeInsets.all(10.0),
                      child:Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.black,
                          border: Border(
                              top: BorderSide(width: 1.0,color:Colors.white38),
                            left: BorderSide(width: 1.0,color:Colors.white38),
                            bottom: BorderSide(width: 1.0,color:Colors.white38),
                            right: BorderSide(width: 1.0,color:Colors.white38),
                          ),
                        ),
                        width: 700.0,
                        height: 75.0,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 2.0),
                                                        child: Column(
                                                          children:<Widget>[Text(
                                'Tell me more!',
                                style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.w600,
                              ),
                              ),
                              Text(
                              'More About ',
                              style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 15,
                              //fontWeight: FontWeight.w600,
                            ),
                            ),
                              ],
                              ),
                            ),
                            
                            SizedBox(width: 100.0,),
                            Container(
                              width: 105.0,
                              child: FlatButton(
                                color:Colors.grey,
                           shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                             ),  
                                onPressed: (){_launchBrowser(widget.offer.store.website);},
                                child: Padding(padding: EdgeInsets.all(2.0),
                                child: Text('View More',
                                style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                                ),
                                ),
                                ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    /*Container(
                      decoration:BoxDecoration(
                        borderRadius: new BorderRadius.circular(15.0),
                        color: Colors.black,
                      ),
                      width: 700.0,
                      height: 75.0,
                      child: 
                      Row(
                        children:<Widget>[ 
                          Column(
                            children:<Widget>[ 
                              Padding(
                padding: const EdgeInsets.only(top:5.0,),
                child: Text('Purchase Now!',
                style:
                TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                ),
                              ),  
                              Text('Buy with actual money',
                              style:
                              TextStyle(color: Colors.white70,
                              fontSize: 20.0,),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 70.0,
                          ),
                          RaisedButton(
                            onPressed: null,
                            color: Colors.blue,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Let\'s go',
                              style: TextStyle(
                                color:Colors.white,
                              )),
                            ),
                          )
                      ],
                      ),    
                    ),*/
                    FadeAnimation(1, Padding(
                      padding: EdgeInsets.all(10.0),
                      child:Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.black,
                          border: Border(
                              top: BorderSide(width: 1.0,color:Colors.white38),
                            left: BorderSide(width: 1.0,color:Colors.white38),
                            bottom: BorderSide(width: 1.0,color:Colors.white38),
                            right: BorderSide(width: 1.0,color:Colors.white38),
                          ),
                        ),
                        width: 700.0,
                        height: 75.0,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 2.0),
                                                        child: Column(
                                                          children:<Widget>[Text(
                                'Purchase Now!',
                                style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.w600,
                              ),
                              ),
                              Text(
                              'More About ',
                              style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 15,
                              //fontWeight: FontWeight.w600,
                            ),
                            ),
                              ],
                              ),
                            ),
                            
                            SizedBox(width: 85.0,),
                            Container(
                              width: 105.0,
                              child: FlatButton(
                                color:Colors.blue,
                           shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                             ),  
                                onPressed: (){_launchBrowser(widget.offer.store.website);},
                                child: Padding(padding: EdgeInsets.all(2.0),
                                child: Text('Let\'s Go',
                                style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                                ),
                                ),
                                ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FadeAnimation(1, Container(
                        width: 800.0,
                        height: 400.0,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                        ),
                          child: Center(
                                                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                                              child: Text('This offer is powered by',
                             style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.w600,
                            ),
                                  ),
                              ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                                                  child: CachedNetworkImage(
                                  width: 300,
                                  height: 250,
                                  imageUrl:"https://api.pauzr.com/storage/"+widget.offer.images[0].image
                                                          ,fit: BoxFit.cover,placeholder: (context, url) =>
                                                        const Center(child:CircularProgressIndicator()
                                                                  )
                              ),
                                ),
                                //Padding(
                                  //padding: const EdgeInsets.all(8.0),
                                  //child: Image(image: null),
                                //),
                                /*Padding(
                                  padding:EdgeInsets.all(12.0),
                                  child: Image(image: ,),
                                  ),
                                  ),*/
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(padding: EdgeInsets.all(8.0),
                                      child: Container(
                                            width: 50.0,
                                            height: 50.0,
                                            child: RaisedButton(
                                            color: Colors.white,
                                            onPressed: (){
                                              setState(() {
                                                _launchBrowser(widget.offer.store.facebook);
                                              });
                                              },
                                              child: Image(
                                                image: AssetImage('assets/images/facebook.png'),
                                                )
                                          ),
                                      ),
                                      ),
                                      Padding(padding: EdgeInsets.all(8.0),
                                      child: Container(
                                            width: 50.0,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                            border: Border(
                                                top: BorderSide(width: 1.0,color:Colors.white38),
                                                left: BorderSide(width: 1.0,color:Colors.white38),
                                                bottom: BorderSide(width: 1.0,color:Colors.white38),
                                                right: BorderSide(width: 1.0,color:Colors.white38),
                                              ),
                                            ),
                                            child: RaisedButton(
                                              color: Colors.white,
                                            onPressed: (){
                                              setState(() {
                                                _launchBrowser(widget.offer.store.instagram);
                                              });
                                            },
                                            child:Image(
                                              width: 100.0,
                                              height: 100.0,
                                              image: AssetImage('assets/images/instagram.png'),
                                            )
                                            
                                          ),
                                      ),
                                      ),
                                      Padding(padding: EdgeInsets.all(8.0),
                                      child: Container(
                                            width: 50.0,
                                            height: 50.0,
                                            child: RaisedButton(
                                              focusColor: Colors.white,
                                              color: Colors.white,
                                        onPressed: (){
                                          setState(() {
                                            _launchBrowser(widget.offer.store.twitter);
                                          });
                                        },
                                        child:Image(
                                          image: AssetImage('assets/images/twitter.png'),
                                        ),
                                        
                                        ),
                                      ),
                                      
                                      ),
                                    ],
                                  ),
                            ],
                        ),
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                                          child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1.0,color: Colors.white)
                            )
                          ),
                          child: Container(
                              height: 250.0,
                              width: 550,
                              
                              child: Stack(children: <Widget>[  
                              //To add Image of Website
                              Stack(children:<Widget>[ 
                            
                              CachedNetworkImage(
                                width: 550,
                                imageUrl:"https://api.pauzr.com/storage/"+widget.offer.images[0].image
                                                        ,fit: BoxFit.cover,placeholder: (context, url) =>
                                                      const Center(child:CircularProgressIndicator(),
                                
                                                                )
                              ),
                              FlatButton(
                                onPressed: (){
                                  _launchBrowser(widget.offer.store.website);
                                  },
                                                          child: Center(
                                  child: Container(
                                    width:250,
                                    height: 100.0,
                                    color: Colors.black45,
                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                      onPressed: (){
                                        _launchBrowser(widget.offer.store.website);
                                      },
                                      color: Colors.white,
                                      icon: Icon(
                                        
                                    Icons.zoom_out_map,
                                    size: 50.0,
                                  ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('Tap to View website',
                                    style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  
                                    ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              
                              ],
                              ),
                            ],
                            ),
                          ),
                        ),
                      ),
                    ),
            Padding(
                  padding: EdgeInsets.all(8.0),                      
                  child: Container(
                    width: 800.0,
                    color: Colors.black,
                  child: 
                  Center(
                                    child: Column(
                      children:<Widget>[ 
                        Center(
                          child: Text('Rate this Offer',
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 13,
                              //fontWeight: FontWeight.w600,
                            ),),
                      ),
                      RaisedButton(
                        color: Colors.black,
                        onPressed: (){
                          
                            
                          showAlertForPlayStore();
                          
                        },
                          child: Column(
                            children:<Widget>[
                                Text('Tap to rate',
                        style: GoogleFonts.openSans(
                              color: Colors.white70,
                              fontSize: 18,
                              //fontWeight: FontWeight.w600,
                            ),
                        ),
                              SmoothStarRating(
                            borderColor: Colors.white70,
                            allowHalfRating: false,
                            starCount: 5,
                            size: 40.0,
                            rating: 0,
                            isReadOnly: true,
                          ),
                            ],
                          ),
                      ),
                      
                      Text('Rating an offer helps the PauzR team choose which offers/products to add to the Bazaar',
                      style: GoogleFonts.openSans(
                              color: Colors.white70,
                              fontSize: 15,
                              textBaseline: TextBaseline.alphabetic,
                              //fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                            ),
                      ],
                    ),
                  ),
                ),
            ),
            ],
          ),
              ),
            ),
          ),
          
          ),
        
        
        
        bottomNavigationBar: Container(
          width: 800.0,
          height: 50.0,
          
                  child: FlatButton(
            
            onPressed: (){
              navigateToConfirmation(context,widget.offer);
            },
            child: Text('PURCHASE OFFER -  $pointsreq COINS',
            style: GoogleFonts.openSans(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
                             
                             borderRadius: BorderRadius.circular(5),
                             side: BorderSide(
                               color: Colors.green
                             )
                             ),
          ),
        ),
    );
  }

  navigateToInstructionsandTerms(BuildContext context,Offers offer,int index)
  {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => InstructionsandTerms(offer: offer,index:index)));
  }

  navigateToConfirmation(BuildContext context,Offers offer)
  {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Confirmation(offer: offer,)));
  }
  
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }