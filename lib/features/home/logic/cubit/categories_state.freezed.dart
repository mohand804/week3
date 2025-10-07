// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoriesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesState()';
}


}

/// @nodoc
class $CategoriesStateCopyWith<$Res>  {
$CategoriesStateCopyWith(CategoriesState _, $Res Function(CategoriesState) __);
}


/// Adds pattern-matching-related methods to [CategoriesState].
extension CategoriesStatePatterns on CategoriesState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _CategoriesLoading value)?  categoriesLoading,TResult Function( _CategoriesSuccess value)?  categoriesSuccess,TResult Function( _CategoriesFailure value)?  categoriesFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CategoriesLoading() when categoriesLoading != null:
return categoriesLoading(_that);case _CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that);case _CategoriesFailure() when categoriesFailure != null:
return categoriesFailure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _CategoriesLoading value)  categoriesLoading,required TResult Function( _CategoriesSuccess value)  categoriesSuccess,required TResult Function( _CategoriesFailure value)  categoriesFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _CategoriesLoading():
return categoriesLoading(_that);case _CategoriesSuccess():
return categoriesSuccess(_that);case _CategoriesFailure():
return categoriesFailure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _CategoriesLoading value)?  categoriesLoading,TResult? Function( _CategoriesSuccess value)?  categoriesSuccess,TResult? Function( _CategoriesFailure value)?  categoriesFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CategoriesLoading() when categoriesLoading != null:
return categoriesLoading(_that);case _CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that);case _CategoriesFailure() when categoriesFailure != null:
return categoriesFailure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  categoriesLoading,TResult Function( CategoriesResponseModel categories)?  categoriesSuccess,TResult Function( ApiErrorModel error)?  categoriesFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CategoriesLoading() when categoriesLoading != null:
return categoriesLoading();case _CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that.categories);case _CategoriesFailure() when categoriesFailure != null:
return categoriesFailure(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  categoriesLoading,required TResult Function( CategoriesResponseModel categories)  categoriesSuccess,required TResult Function( ApiErrorModel error)  categoriesFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _CategoriesLoading():
return categoriesLoading();case _CategoriesSuccess():
return categoriesSuccess(_that.categories);case _CategoriesFailure():
return categoriesFailure(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  categoriesLoading,TResult? Function( CategoriesResponseModel categories)?  categoriesSuccess,TResult? Function( ApiErrorModel error)?  categoriesFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CategoriesLoading() when categoriesLoading != null:
return categoriesLoading();case _CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that.categories);case _CategoriesFailure() when categoriesFailure != null:
return categoriesFailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CategoriesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesState.initial()';
}


}




/// @nodoc


class _CategoriesLoading implements CategoriesState {
  const _CategoriesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesState.categoriesLoading()';
}


}




/// @nodoc


class _CategoriesSuccess implements CategoriesState {
  const _CategoriesSuccess(this.categories);
  

 final  CategoriesResponseModel categories;

/// Create a copy of CategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesSuccessCopyWith<_CategoriesSuccess> get copyWith => __$CategoriesSuccessCopyWithImpl<_CategoriesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesSuccess&&(identical(other.categories, categories) || other.categories == categories));
}


@override
int get hashCode => Object.hash(runtimeType,categories);

@override
String toString() {
  return 'CategoriesState.categoriesSuccess(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CategoriesSuccessCopyWith<$Res> implements $CategoriesStateCopyWith<$Res> {
  factory _$CategoriesSuccessCopyWith(_CategoriesSuccess value, $Res Function(_CategoriesSuccess) _then) = __$CategoriesSuccessCopyWithImpl;
@useResult
$Res call({
 CategoriesResponseModel categories
});




}
/// @nodoc
class __$CategoriesSuccessCopyWithImpl<$Res>
    implements _$CategoriesSuccessCopyWith<$Res> {
  __$CategoriesSuccessCopyWithImpl(this._self, this._then);

  final _CategoriesSuccess _self;
  final $Res Function(_CategoriesSuccess) _then;

/// Create a copy of CategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(_CategoriesSuccess(
null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as CategoriesResponseModel,
  ));
}


}

/// @nodoc


class _CategoriesFailure implements CategoriesState {
  const _CategoriesFailure(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of CategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesFailureCopyWith<_CategoriesFailure> get copyWith => __$CategoriesFailureCopyWithImpl<_CategoriesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CategoriesState.categoriesFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class _$CategoriesFailureCopyWith<$Res> implements $CategoriesStateCopyWith<$Res> {
  factory _$CategoriesFailureCopyWith(_CategoriesFailure value, $Res Function(_CategoriesFailure) _then) = __$CategoriesFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class __$CategoriesFailureCopyWithImpl<$Res>
    implements _$CategoriesFailureCopyWith<$Res> {
  __$CategoriesFailureCopyWithImpl(this._self, this._then);

  final _CategoriesFailure _self;
  final $Res Function(_CategoriesFailure) _then;

/// Create a copy of CategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_CategoriesFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
