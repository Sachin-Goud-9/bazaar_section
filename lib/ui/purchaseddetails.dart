


import 'package:bazzarapp/Animations/FadeAnimation.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:bazzarapp/ui/offer_list_ui_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class PurchasedDetails extends StatefulWidget {
  Offers offer;
  PurchasedDetails({this.offer});
  @override
  _PurchasedDetailsState createState() => _PurchasedDetailsState();  
}

class _PurchasedDetailsState extends State<PurchasedDetails> {


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


  String currentDate;
  getCurrentDate(){
    var date = DateTime.now().toString();
    var parseDate =DateTime.parse(date);
    var modifiedDate="${parseDate.day} - ${parseDate.month} - ${parseDate.year}";
    currentDate=modifiedDate;
    return currentDate;
  }


  void _launchBrowser(String temp) async {
        
        String url='http://'+temp;
        if(await canLaunch(url)){
          await launch(url);
        }
        else{
          throw 'Could not Launch $url';
        }
  }

  @override
  Widget build(BuildContext context) {
    String title_str = widget.offer.title;
    return WillPopScope(
        onWillPop: () async => false,
          child: MaterialApp(
        routes: {
          '/offerlistpage' : (context) => OfferListPage(),
        },
            home: SafeArea(
          child: Scaffold(
            appBar:AppBar(
              title: FadeAnimation(1,Text(title_str,
              style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                ),
            ),
              ),
            leading: new IconButton(
                icon: new Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ), onPressed: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Myapp()), (route) => false);
                },
                ), 
          ),
          body: Scrollbar(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                              child: Column(
                            children: <Widget>[
                              Container(
                    
                    width: 750,
                    height: 100.0,
                    child: Column(
                    children: <Widget>[
                      Text(
                        'Coupon Code',
                        style: GoogleFonts.openSans(
                                        color: babyPink,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w600,
                                      ),
                      ),
                      Text(
                        widget.offer.coupon.coupon,
                        style: GoogleFonts.openSans(
                                        color: Colors.cyan,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                      ),
                      ),
                    ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding:EdgeInsets.all(5.0),
                                    child: Row(
                      children: <Widget>[
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(10.0),
                        
                        color: Colors.black,
                      ),
                      width: 180,
                      height: 100.0,
                      child: Column(
                      children: <Widget>[
                        Text(
                          widget.offer.couponCoins.toString(),
                          style: GoogleFonts.openSans(
                                          color: Colors.blue,
                                          fontSize: 40,
                                          fontWeight: FontWeight.w600,
                                        ),
                        ),
                        Text(
                          'Coins Spent',
                          style: GoogleFonts.openSans(
                                          color: Colors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                        ),
                      ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      
                      width: 180,
                      height: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(10.0),

                        color: Colors.black,
                        /*shape: *RoundedRectangleBorder(
                               
                               borderRadius: BorderRadius.circular(5),
                               side: BorderSide(
                                 color: Colors.green
                               )
                               ),*/
                        
                      ),
                      
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 17.0,),
                          Text(
                              getCurrentDate(),
                              style: GoogleFonts.openSans(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                            ),
                          Text(
                              'Purchase Date',
                              style: GoogleFonts.openSans(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                            ),
                        ],
                        ),
                    ),
                      ],
                    ),
                  ),
                
                  Divider(
                    color: Colors.black54,
                    thickness: 2.0,),
                  Text(
                    'Instructions',
                    style: GoogleFonts.openSans(
                                        color: Colors.black45,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                    ),
                    Text(
                      widget.offer.coupon.instructions,
                      style: GoogleFonts.openSans(
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: Container(
            color: Colors.cyan,
            height: 50.0,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0,0,0,0),
                              child: FlatButton(
                                
                                
                   color:Colors.white,
                           
                           shape: RoundedRectangleBorder(
                             
                             borderRadius: BorderRadius.circular(5),
                             side: BorderSide(
                               color: Colors.green
                             )
                             ),
                    onPressed: (){
                      shareDetails(context,widget.offer);
                    },
                  child: Row(
                  children:<Widget>[ 
                    Icon(
                      Icons.share,
                    ),
                    SizedBox(width: 2.0,),
                                  Text(
                      'Share Offer',
                      style: GoogleFonts.openSans(
                                          color: Colors.green,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                    ),
                                ],
                  ),
                  ),
                ),
                SizedBox(
                  width:50.0,
                ),
                RaisedButton(
                  color:Colors.white,
                           
                           shape: RoundedRectangleBorder(
                             
                             borderRadius: BorderRadius.circular(5),
                             side: BorderSide(
                               color: Colors.green
                             )
                             ),
                  onPressed: (){
                _launchBrowser(widget.offer.store.website);
                },
                child: Row(
                children:<Widget>[ 
                  Icon(
                    Icons.shopping_cart,
                  ),
                                Text(
                    'Use Code',
                    style: GoogleFonts.openSans(
                                        color: Colors.green,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                  ),
                              ],
                ),
                ),
              ],
            ),
          ),
        ),
        ),
      ),
    );
    
  }
  shareDetails(BuildContext context,Offers offer)
  {
    final RenderBox box = context.findRenderObject();
    String text = widget.offer.coupon.coupon.toString()+"\nWith Coupon Coins "+widget.offer.couponCoins.toString();
    Share.share(
      text,
      subject: widget.offer.description,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
      );
  }
  navigateToOfferListUI(BuildContext context){
    Navigator.of(context).popUntil(ModalRoute.withName('OfferListPage()'));
  }
}