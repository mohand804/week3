// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_requset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsRequsetModel _$ProductsRequsetModelFromJson(
  Map<String, dynamic> json,
) => ProductsRequsetModel(
  pageSize: (json['pageSize'] as num).toInt(),
  page: (json['page'] as num).toInt(),
);

Map<String, dynamic> _$ProductsRequsetModelToJson(
  ProductsRequsetModel instance,
) => <String, dynamic>{'pageSize': instance.pageSize, 'page': instance.page};
