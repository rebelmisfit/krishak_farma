class AutocompletePrediction
{
  final String description;
  final StructuredFormatting structuredFormatting;

  final String placeId;
  final String reference;


  AutocompletePrediction({
    required this.description,
    required this.structuredFormatting,
    required this.placeId,
    required this.reference

});

  factory AutocompletePrediction.fromJson(Map<String, dynamic> json)
  {
     return AutocompletePrediction(
         description: json['description'] as String,
         placeId: json['placeId'] as String,
         reference: json['reference'] as String,
         structuredFormatting: json['structured_formatting'] != null ? json['structured_formatting']: null
     );

  }

}

class StructuredFormatting
{
  final String mainText;
  final String secondaryText;

  StructuredFormatting({
    required this.mainText,
    required this.secondaryText
});
  
  factory StructuredFormatting.fromJson( Map<String, dynamic> json)
  {
    return StructuredFormatting(mainText: json['main_text'] as String, secondaryText: json['secondary_text'] as String);

  }


}