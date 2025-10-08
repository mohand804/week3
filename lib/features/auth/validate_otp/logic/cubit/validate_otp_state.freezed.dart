// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ValidateOtpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateOtpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ValidateOtpState()';
}


}

/// @nodoc
class $ValidateOtpStateCopyWith<$Res>  {
$ValidateOtpStateCopyWith(ValidateOtpState _, $Res Function(ValidateOtpState) __);
}


/// Adds pattern-matching-related methods to [ValidateOtpState].
extension ValidateOtpStatePatterns on ValidateOtpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( ValidateOtpLoading value)?  validateOtpLoading,TResult Function( ValidateOtpSuccess value)?  validateOtpSuccess,TResult Function( ValidateOtpFailure value)?  validateOtpFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ValidateOtpLoading() when validateOtpLoading != null:
return validateOtpLoading(_that);case ValidateOtpSuccess() when validateOtpSuccess != null:
return validateOtpSuccess(_that);case ValidateOtpFailure() when validateOtpFailure != null:
return validateOtpFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( ValidateOtpLoading value)  validateOtpLoading,required TResult Function( ValidateOtpSuccess value)  validateOtpSuccess,required TResult Function( ValidateOtpFailure value)  validateOtpFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ValidateOtpLoading():
return validateOtpLoading(_that);case ValidateOtpSuccess():
return validateOtpSuccess(_that);case ValidateOtpFailure():
return validateOtpFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( ValidateOtpLoading value)?  validateOtpLoading,TResult? Function( ValidateOtpSuccess value)?  validateOtpSuccess,TResult? Function( ValidateOtpFailure value)?  validateOtpFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ValidateOtpLoading() when validateOtpLoading != null:
return validateOtpLoading(_that);case ValidateOtpSuccess() when validateOtpSuccess != null:
return validateOtpSuccess(_that);case ValidateOtpFailure() when validateOtpFailure != null:
return validateOtpFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  validateOtpLoading,TResult Function()?  validateOtpSuccess,TResult Function( ApiErrorModel error)?  validateOtpFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ValidateOtpLoading() when validateOtpLoading != null:
return validateOtpLoading();case ValidateOtpSuccess() when validateOtpSuccess != null:
return validateOtpSuccess();case ValidateOtpFailure() when validateOtpFailure != null:
return validateOtpFailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  validateOtpLoading,required TResult Function()  validateOtpSuccess,required TResult Function( ApiErrorModel error)  validateOtpFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ValidateOtpLoading():
return validateOtpLoading();case ValidateOtpSuccess():
return validateOtpSuccess();case ValidateOtpFailure():
return validateOtpFailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  validateOtpLoading,TResult? Function()?  validateOtpSuccess,TResult? Function( ApiErrorModel error)?  validateOtpFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ValidateOtpLoading() when validateOtpLoading != null:
return validateOtpLoading();case ValidateOtpSuccess() when validateOtpSuccess != null:
return validateOtpSuccess();case ValidateOtpFailure() when validateOtpFailure != null:
return validateOtpFailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ValidateOtpState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ValidateOtpState.initial()';
}


}




/// @nodoc


class ValidateOtpLoading implements ValidateOtpState {
  const ValidateOtpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateOtpLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ValidateOtpState.validateOtpLoading()';
}


}




/// @nodoc


class ValidateOtpSuccess implements ValidateOtpState {
  const ValidateOtpSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateOtpSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ValidateOtpState.validateOtpSuccess()';
}


}




/// @nodoc


class ValidateOtpFailure implements ValidateOtpState {
  const ValidateOtpFailure(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of ValidateOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateOtpFailureCopyWith<ValidateOtpFailure> get copyWith => _$ValidateOtpFailureCopyWithImpl<ValidateOtpFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateOtpFailure&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ValidateOtpState.validateOtpFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ValidateOtpFailureCopyWith<$Res> implements $ValidateOtpStateCopyWith<$Res> {
  factory $ValidateOtpFailureCopyWith(ValidateOtpFailure value, $Res Function(ValidateOtpFailure) _then) = _$ValidateOtpFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$ValidateOtpFailureCopyWithImpl<$Res>
    implements $ValidateOtpFailureCopyWith<$Res> {
  _$ValidateOtpFailureCopyWithImpl(this._self, this._then);

  final ValidateOtpFailure _self;
  final $Res Function(ValidateOtpFailure) _then;

/// Create a copy of ValidateOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(ValidateOtpFailure(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
