import 'package:bazzarapp/datasource/offerDatasource.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:flutter/cupertino.dart';

class OfferRepository{
  OfferDataSource offerDataSource;
  OfferRepository({@required this.offerDataSource});

  Future<List<Offers>> fetchelectronicsoffers()async{
    return await offerDataSource.fetchElectronicsOffers();
  }
  Future<List<Offers>> fetchfashionoffers()async{
    return await offerDataSource.fetchFashionOffers();
  }
   Future<List<Offers>> fetchentertainmentoffers()async{
    return await offerDataSource.fetchEntertainmentOffers();
  }
  Future<List<Offers>> fetchfurnitureoffers()async{
    return await offerDataSource.fetchFurnitureOffers();
  }



}