import 'PlantType.dart';

class Plant {
  int _id;
  String _name;
  DateTime _cultivationDate;
  PlantType _plantType;

  Plant(this._id, this._name, this._cultivationDate, this._plantType);
}
