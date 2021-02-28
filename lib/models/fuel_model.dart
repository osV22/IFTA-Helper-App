class FuelModel {
  int gallons;
  String state;

  String previewImg;

  FuelModel({this.gallons, this.state, this.previewImg});
}

List<FuelModel> fuelEntries = [
  FuelModel(gallons: 10, state: 'MI', previewImg: 'assets/images/pilot.png'),
  FuelModel(gallons: 2, state: 'FL', previewImg: 'assets/images/loves.png'),
  FuelModel(gallons: 20, state: 'WI', previewImg: 'assets/images/shell.png'),
  FuelModel(gallons: 40, state: 'IL', previewImg: 'assets/images/loves.png'),
  FuelModel(gallons: 95, state: 'IA', previewImg: 'assets/images/pilot.png'),
];
