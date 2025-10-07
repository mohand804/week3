// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState()';
}


}

/// @nodoc
class $SignupStateCopyWith<$Res>  {
$SignupStateCopyWith(SignupState _, $Res Function(SignupState) __);
}


/// Adds pattern-matching-related methods to [SignupState].
extension SignupStatePatterns on SignupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignupInitial value)?  initial,TResult Function( SignupLoading value)?  signupLoading,TResult Function( SignupSuccess value)?  signupSuccess,TResult Function( SignupFailure value)?  signupFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignupInitial() when initial != null:
return initial(_that);case SignupLoading() when signupLoading != null:
return signupLoading(_that);case SignupSuccess() when signupSuccess != null:
return signupSuccess(_that);case SignupFailure() when signupFailure != null:
return signupFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignupInitial value)  initial,required TResult Function( SignupLoading value)  signupLoading,required TResult Function( SignupSuccess value)  signupSuccess,required TResult Function( SignupFailure value)  signupFailure,}){
final _that = this;
switch (_that) {
case SignupInitial():
return initial(_that);case SignupLoading():
return signupLoading(_that);case SignupSuccess():
return signupSuccess(_that);case SignupFailure():
return signupFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignupInitial value)?  initial,TResult? Function( SignupLoading value)?  signupLoading,TResult? Function( SignupSuccess value)?  signupSuccess,TResult? Function( SignupFailure value)?  signupFailure,}){
final _that = this;
switch (_that) {
case SignupInitial() when initial != null:
return initial(_that);case SignupLoading() when signupLoading != null:
return signupLoading(_that);case SignupSuccess() when signupSuccess != null:
return signupSuccess(_that);case SignupFailure() when signupFailure != null:
return signupFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signupLoading,TResult Function( SignUpResponseModel response)?  signupSuccess,TResult Function( ApiErrorModel error)?  signupFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignupInitial() when initial != null:
return initial();case SignupLoading() when signupLoading != null:
return signupLoading();case SignupSuccess() when signupSuccess != null:
return signupSuccess(_that.response);case SignupFailure() when signupFailure != null:
return signupFailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signupLoading,required TResult Function( SignUpResponseModel response)  signupSuccess,required TResult Function( ApiErrorModel error)  signupFailure,}) {final _that = this;
switch (_that) {
case SignupInitial():
return initial();case SignupLoading():
return signupLoading();case SignupSuccess():
return signupSuccess(_that.response);case SignupFailure():
return signupFailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signupLoading,TResult? Function( SignUpResponseModel response)?  signupSuccess,TResult? Function( ApiErrorModel error)?  signupFailure,}) {final _that = this;
switch (_that) {
case SignupInitial() when initial != null:
return initial();case SignupLoading() when signupLoading != null:
return signupLoading();case SignupSuccess() when signupSuccess != null:
return signupSuccess(_that.response);case SignupFailure() when signupFailure != null:
return signupFailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class SignupInitial implements SignupState {
  const SignupInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState.initial()';
}


}




/// @nodoc


class SignupLoading implements SignupState {
  const SignupLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState.signupLoading()';
}


}




/// @nodoc


class SignupSuccess implements SignupState {
  const SignupSuccess(this.response);
  

 final  SignUpResponseModel response;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupSuccessCopyWith<SignupSuccess> get copyWith => _$SignupSuccessCopyWithImpl<SignupSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'SignupState.signupSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class $SignupSuccessCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory $SignupSuccessCopyWith(SignupSuccess value, $Res Function(SignupSuccess) _then) = _$SignupSuccessCopyWithImpl;
@useResult
$Res call({
 SignUpResponseModel response
});




}
/// @nodoc
class _$SignupSuccessCopyWithImpl<$Res>
    implements $SignupSuccessCopyWith<$Res> {
  _$SignupSuccessCopyWithImpl(this._self, this._then);

  final SignupSuccess _self;
  final $Res Function(SignupSuccess) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(SignupSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SignUpResponseModel,
  ));
}


}

/// @nodoc


class SignupFailure implements SignupState {
  const SignupFailure(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupFailureCopyWith<SignupFailure> get copyWith => _$SignupFailureCopyWithImpl<SignupFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SignupState.signupFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $SignupFailureCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory $SignupFailureCopyWith(SignupFailure value, $Res Function(SignupFailure) _then) = _$SignupFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$SignupFailureCopyWithImpl<$Res>
    implements $SignupFailureCopyWith<$Res> {
  _$SignupFailureCopyWithImpl(this._self, this._then);

  final SignupFailure _self;
  final $Res Function(SignupFailure) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SignupFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
