import 'package:bazzarapp/models/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructionsandTerms extends StatefulWidget {
  Offers offer;
  int index;
  
  InstructionsandTerms({this.offer,this.index});
  @override
  _InstructionsandTermsState createState() => _InstructionsandTermsState(index);
}

class _InstructionsandTermsState extends State<InstructionsandTerms> with SingleTickerProviderStateMixin{
  _InstructionsandTermsState(this.index);
  TabController _tabController;
  int index;

   

  @override
  void initState(){
    super.initState();
    _tabController = TabController( length: 2, vsync: this);
    _tabController.index=index;
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  String inst;

  

  void animationcontroller(){
    _tabController.animateTo((1%2));
  }


  @override
  Widget build(BuildContext context) {
    
    String inst=widget.offer.coupon.instructions;
    String ter=widget.offer.coupon.terms;
    List<Tab> choices = <Tab>[
     Tab(text: inst),
     Tab(text: ter),
];
  List<Widget> choices_headings = <Widget>[
    Text('Instructions',
    style: GoogleFonts.openSans(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w600,
    ),
    ),
    Text('Terms and Conditions',
    style: GoogleFonts.openSans(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w600,
    ),
    ),
  ];

    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: choices_headings,
          /*[]
            choices.map((Choice choice){
              return Tab(
                text: choice.title,
                );
            }
        ).toList(),*/
          
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
      body: TabBarView(
        /*children: choices.map((Choice choice){
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: ChoiceCard(choice: choice,),
        );
      }
      ).toList(),*/
      controller: _tabController,
      children: choices.map((Tab tab){
        final String label = tab.text;
        return Center(
          child: Text(
            '$label',
            style: TextStyle(color: Colors.black,fontSize: 36.0,),
          ),            
                 );
      }).toList(),
      ),
    );
  }
}



  


/*class Choice {
  const Choice({this.title});
  final String title;
}



class ChoiceCard extends StatelessWidget{
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;
  @override
  Widget build(BuildContext context){
    final TextStyle textStyle = Theme.of(context).textTheme.headline;
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              choice.c,
              style: TextStyle(color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
*/



                  /*Container(
                    color: Colors.black,
                    child:Row(
                      children: <Widget>[
                        Text(
                          '1) Use SSG Coins to avail this offer. Ain\'t no coin, like the SSG coin',
                        ),
                        Text(
                          '2) You will receive a 1 month Free Access . Aren\'t coupons Fun?',
                        ),
                        RichText(
                          text:new  TextSpan(
                          children: [
                            new TextSpan(
                              text: '4) Go to: '
                            ),
                            new TextSpan(
                              text: 'www.pauzr.com',
                              //recognizer: TapGestureRecognizer()
                                  //..onTap = () async{ 
                                    //final url = 'https://www.pauzr.com/';
                                    //if( await canLaunch(url)){
                                      //  await launch
                                    //}
                              //},
                            ),
                          ],
                          ),
                        ),
                        Text(
                          '4) Register yourself and fill all the details.'
                        ),
                        Text(
                          '5) Enter your code in \"Prepaid Number/Referral Code\" section while registering.'
                        ),
                        Text(
                          '6) Volla! You will receive Free access for 1 month. You\'re welcome!',
                        ),
                    ],
                    ),
                  ),
                  /*Container(
                    color: Colors.black,
                    child:Row(
                      children: <Widget>[
                        Text(
                          '1) Offer can be availed only once per user.Don\'t be greedy, little one!'
                        ),
                        Text(
                          '2) Offer valid till stocks last! The early bird gets the worm',
                        ),
                        Text(
                          '3) Offer is valid only in India, because we are Desi that way',
                        ),
                        Text(
                          '4) Applicable for the first time users.'
                        ),
                        Text(
                          '5) Get Unlimited access to all course for 1 month.'
                        ),
                        Text(
                          '6) Offer once redeemed, can not be refunded.Be careful before pressing that \'buy now\' button',
                        ),
                        Text(
                          '7) Coupon code is valid till 15th June, 2020',
                        ),
                        Text(
                          '8) Kindly contact on +919435667860',
                        ),
                    ],
                    ),
                  ),*/
                  */
                  
