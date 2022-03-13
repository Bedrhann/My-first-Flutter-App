class YemekValidationMixin{


  String validateIsim(String value){
    if(value.length<2){
      return "ELMALI TURTA";
    }
  }
}