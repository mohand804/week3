// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserInfoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserInfoState()';
}


}

/// @nodoc
class $UserInfoStateCopyWith<$Res>  {
$UserInfoStateCopyWith(UserInfoState _, $Res Function(UserInfoState) __);
}


/// Adds pattern-matching-related methods to [UserInfoState].
extension UserInfoStatePatterns on UserInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( UserInfoLoading value)?  userInfoLoading,TResult Function( UserInfoSuccess value)?  userInfoSuccess,TResult Function( UserInfoFailure value)?  userInfoFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case UserInfoLoading() when userInfoLoading != null:
return userInfoLoading(_that);case UserInfoSuccess() when userInfoSuccess != null:
return userInfoSuccess(_that);case UserInfoFailure() when userInfoFailure != null:
return userInfoFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( UserInfoLoading value)  userInfoLoading,required TResult Function( UserInfoSuccess value)  userInfoSuccess,required TResult Function( UserInfoFailure value)  userInfoFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case UserInfoLoading():
return userInfoLoading(_that);case UserInfoSuccess():
return userInfoSuccess(_that);case UserInfoFailure():
return userInfoFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( UserInfoLoading value)?  userInfoLoading,TResult? Function( UserInfoSuccess value)?  userInfoSuccess,TResult? Function( UserInfoFailure value)?  userInfoFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case UserInfoLoading() when userInfoLoading != null:
return userInfoLoading(_that);case UserInfoSuccess() when userInfoSuccess != null:
return userInfoSuccess(_that);case UserInfoFailure() when userInfoFailure != null:
return userInfoFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  userInfoLoading,TResult Function( UserInfoResponseModel userInfo)?  userInfoSuccess,TResult Function( ApiErrorModel error)?  userInfoFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case UserInfoLoading() when userInfoLoading != null:
return userInfoLoading();case UserInfoSuccess() when userInfoSuccess != null:
return userInfoSuccess(_that.userInfo);case UserInfoFailure() when userInfoFailure != null:
return userInfoFailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  userInfoLoading,required TResult Function( UserInfoResponseModel userInfo)  userInfoSuccess,required TResult Function( ApiErrorModel error)  userInfoFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case UserInfoLoading():
return userInfoLoading();case UserInfoSuccess():
return userInfoSuccess(_that.userInfo);case UserInfoFailure():
return userInfoFailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  userInfoLoading,TResult? Function( UserInfoResponseModel userInfo)?  userInfoSuccess,TResult? Function( ApiErrorModel error)?  userInfoFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case UserInfoLoading() when userInfoLoading != null:
return userInfoLoading();case UserInfoSuccess() when userInfoSuccess != null:
return userInfoSuccess(_that.userInfo);case UserInfoFailure() when userInfoFailure != null:
return userInfoFailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UserInfoState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserInfoState.initial()';
}


}




/// @nodoc


class UserInfoLoading implements UserInfoState {
  const UserInfoLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserInfoState.userInfoLoading()';
}


}




/// @nodoc


class UserInfoSuccess implements UserInfoState {
  const UserInfoSuccess(this.userInfo);
  

 final  UserInfoResponseModel userInfo;

/// Create a copy of UserInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoSuccessCopyWith<UserInfoSuccess> get copyWith => _$UserInfoSuccessCopyWithImpl<UserInfoSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoSuccess&&(identical(other.userInfo, userInfo) || other.userInfo == userInfo));
}


@override
int get hashCode => Object.hash(runtimeType,userInfo);

@override
String toString() {
  return 'UserInfoState.userInfoSuccess(userInfo: $userInfo)';
}


}

/// @nodoc
abstract mixin class $UserInfoSuccessCopyWith<$Res> implements $UserInfoStateCopyWith<$Res> {
  factory $UserInfoSuccessCopyWith(UserInfoSuccess value, $Res Function(UserInfoSuccess) _then) = _$UserInfoSuccessCopyWithImpl;
@useResult
$Res call({
 UserInfoResponseModel userInfo
});




}
/// @nodoc
class _$UserInfoSuccessCopyWithImpl<$Res>
    implements $UserInfoSuccessCopyWith<$Res> {
  _$UserInfoSuccessCopyWithImpl(this._self, this._then);

  final UserInfoSuccess _self;
  final $Res Function(UserInfoSuccess) _then;

/// Create a copy of UserInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userInfo = null,}) {
  return _then(UserInfoSuccess(
null == userInfo ? _self.userInfo : userInfo // ignore: cast_nullable_to_non_nullable
as UserInfoResponseModel,
  ));
}


}

/// @nodoc


class UserInfoFailure implements UserInfoState {
  const UserInfoFailure(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of UserInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoFailureCopyWith<UserInfoFailure> get copyWith => _$UserInfoFailureCopyWithImpl<UserInfoFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UserInfoState.userInfoFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $UserInfoFailureCopyWith<$Res> implements $UserInfoStateCopyWith<$Res> {
  factory $UserInfoFailureCopyWith(UserInfoFailure value, $Res Function(UserInfoFailure) _then) = _$UserInfoFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$UserInfoFailureCopyWithImpl<$Res>
    implements $UserInfoFailureCopyWith<$Res> {
  _$UserInfoFailureCopyWithImpl(this._self, this._then);

  final UserInfoFailure _self;
  final $Res Function(UserInfoFailure) _then;

/// Create a copy of UserInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(UserInfoFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
