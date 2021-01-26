import 'Slot.dart';

class VegetableGarden {
  int _id;
  String _name;
  List<Slot> _slots;
  DateTime _createDate;
  int _capacity;

  VegetableGarden(
      this._id, this._name, this._slots, this._createDate, this._capacity);
}
