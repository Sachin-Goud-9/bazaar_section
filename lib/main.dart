import 'package:bazzarapp/repository/offer_repository.dart';
import 'package:bazzarapp/ui/bottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'datasource/offerDatasource.dart';
import 'offerBloc/offer_list_bloc.dart';


/*void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  final OfferRepository offerRepository =OfferRepository(offerDataSource: OfferDataSource(),);
  @override
  Widget build(BuildContext context) {
    return MaterialApp
(
  debugShowCheckedModeBanner: false,
  home:BlocProvider(
    create: (context)=>OffersListBloc(offerRepository: offerRepository),
    child: HomePage(),
    )

      
    );
  }
}*/
void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  final OfferRepository offerRepository = OfferRepository(offerDataSource: OfferDataSource(),);
  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop: () => showDialog<bool>(
        context: context,
        builder: (c) => AlertDialog(
          title: Text('Warning'),
          content: Text('Do you really want to exit'),
          actions: <Widget>[
            FlatButton(
              child: Text('Yes'),
              onPressed: () => Navigator.pop(c,true),
            ),
            FlatButton(
              child: Text('Np'),
              onPressed: () => Navigator.pop(c,false),
            ),
          ],
        )
        ),
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create:  (context) => OffersListBloc(offerRepository: offerRepository),
          child: HomePage(),
        ),
      ),
    );
  }
}