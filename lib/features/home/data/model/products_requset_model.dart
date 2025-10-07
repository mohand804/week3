import 'package:json_annotation/json_annotation.dart';

part 'products_requset_model.g.dart';

@JsonSerializable()
class ProductsRequsetModel {
  final int pageSize;
  final int page;
  ProductsRequsetModel({required this.pageSize, required this.page});
  Map<String, dynamic> toJson() => _$ProductsRequsetModelToJson(this);
}
