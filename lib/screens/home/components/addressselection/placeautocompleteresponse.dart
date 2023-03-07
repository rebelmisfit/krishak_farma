import 'dart:convert';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:krishak_farma/screens/home/components/addressselection/autocomplete_prediction.dart';

class PlaceAutoCompleteResponse
{
  late final String? status;
  late final List<AutocompletePrediction>? predictions;

  PlaceAutoCompleteResponse({required this.predictions, required this.status});

  factory PlaceAutoCompleteResponse.fromJson(Map<String, dynamic> json){
    return PlaceAutoCompleteResponse(predictions: json['predction']  != null ? json['prediction'] : null ,
        status: json['status'] as String);

  }


static PlaceAutoCompleteResponse parseAutoCompleteResult(String reponseBody)
{
  final paresed = json.decode(reponseBody).cast<String,dynamic>();
  
  return PlaceAutoCompleteResponse.fromJson(paresed);

}





}