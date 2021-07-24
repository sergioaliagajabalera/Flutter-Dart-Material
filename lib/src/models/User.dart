import 'dart:convert';

class  User {
  String name,surname, country, city, _mobile/*if the firts character is "_" means that is a private property*/,telephone;
  DateTime birth_date;
  User(this.name, this.surname, this.birth_date, this.country, this.city, this._mobile , this.telephone);



  Map<String, dynamic> toJson() => {//required implement toJson for iterate by property
        "name": name,
        "surname": surname,
        "birdth_date": birth_date,
        "country": country,
        "city": city,
        "mobile": _mobile,
        "telephone": telephone
      };

}