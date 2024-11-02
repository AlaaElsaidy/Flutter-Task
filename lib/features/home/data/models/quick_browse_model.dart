import '../../../../gen/assets.gen.dart';

class QuickBrowseModel {
  final int id;
  final String icon;
  final String name;

  QuickBrowseModel({required this.id, required this.icon, required this.name});

  static List<QuickBrowseModel> onGenerate() {
    return [
      QuickBrowseModel(
          id: 1, icon: Assets.png.discount.path, name: "Food Offers"),
      QuickBrowseModel(id: 2, icon: Assets.png.bigStar.path, name: "Top-Rated"),
      QuickBrowseModel(
          id: 3, icon: Assets.png.location.path, name: "Live Tracking"),
    ];
  }
}
