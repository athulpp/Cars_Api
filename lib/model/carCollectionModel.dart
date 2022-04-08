
// class CarCollectionModel {
//   int? carId;
//   int? categoryId;
//   String? carName;
//   int? carHp;
//   String? carTransmission;
//   String? carSuspension;
//   String? carWheelType;
//   String? carHeadlightType;

//   CarCollectionModel(
//       {this.carId,
//       this.categoryId,
//       this.carName,
//       this.carHp,
//       this.carTransmission,
//       this.carSuspension,
//       this.carWheelType,
//       this.carHeadlightType});

//   CarCollectionModel.fromJson(Map<String, dynamic> json) {
//     carId = json['car_id'];
//     categoryId = json['category_id'];
//     carName = json['car_name'];
//     carHp = json['car_hp'];
//     carTransmission = json['car_transmission'];
//     carSuspension = json['car_suspension'];
//     carWheelType = json['car_wheelType'];
//     carHeadlightType = json['car_headlightType'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['car_id'] = this.carId;
//     data['category_id'] = this.categoryId;
//     data['car_name'] = this.carName;
//     data['car_hp'] = this.carHp;
//     data['car_transmission'] = this.carTransmission;
//     data['car_suspension'] = this.carSuspension;
//     data['car_wheelType'] = this.carWheelType;
//     data['car_headlightType'] = this.carHeadlightType;
//     return data;
//   }
// }