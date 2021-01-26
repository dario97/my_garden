import 'dart:ffi';

import 'Plant.dart';

class Slot {
  int _id;
  Float _width;
  Float _depth;
  Float _length;
  Plant _plant;
  int _soilMosture;
  DateTime _sunlightTime;

  Slot(this._id, this._width, this._depth, this._length, this._plant,
      this._soilMosture, this._sunlightTime);
}
