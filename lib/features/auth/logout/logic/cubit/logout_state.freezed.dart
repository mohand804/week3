// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LogoutState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogoutState()';
}


}

/// @nodoc
class $LogoutStateCopyWith<$Res>  {
$LogoutStateCopyWith(LogoutState _, $Res Function(LogoutState) __);
}


/// Adds pattern-matching-related methods to [LogoutState].
extension LogoutStatePatterns on LogoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LogoutLoading value)?  logoutLoading,TResult Function( LogoutSuccess value)?  logoutSuccess,TResult Function( LogoutFailure value)?  logoutFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LogoutLoading() when logoutLoading != null:
return logoutLoading(_that);case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that);case LogoutFailure() when logoutFailure != null:
return logoutFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LogoutLoading value)  logoutLoading,required TResult Function( LogoutSuccess value)  logoutSuccess,required TResult Function( LogoutFailure value)  logoutFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LogoutLoading():
return logoutLoading(_that);case LogoutSuccess():
return logoutSuccess(_that);case LogoutFailure():
return logoutFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LogoutLoading value)?  logoutLoading,TResult? Function( LogoutSuccess value)?  logoutSuccess,TResult? Function( LogoutFailure value)?  logoutFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LogoutLoading() when logoutLoading != null:
return logoutLoading(_that);case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that);case LogoutFailure() when logoutFailure != null:
return logoutFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  logoutLoading,TResult Function()?  logoutSuccess,TResult Function( ApiErrorModel error)?  logoutFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LogoutLoading() when logoutLoading != null:
return logoutLoading();case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess();case LogoutFailure() when logoutFailure != null:
return logoutFailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  logoutLoading,required TResult Function()  logoutSuccess,required TResult Function( ApiErrorModel error)  logoutFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LogoutLoading():
return logoutLoading();case LogoutSuccess():
return logoutSuccess();case LogoutFailure():
return logoutFailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  logoutLoading,TResult? Function()?  logoutSuccess,TResult? Function( ApiErrorModel error)?  logoutFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LogoutLoading() when logoutLoading != null:
return logoutLoading();case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess();case LogoutFailure() when logoutFailure != null:
return logoutFailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements LogoutState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogoutState.initial()';
}


}




/// @nodoc


class LogoutLoading implements LogoutState {
  const LogoutLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogoutState.logoutLoading()';
}


}




/// @nodoc


class LogoutSuccess implements LogoutState {
  const LogoutSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogoutState.logoutSuccess()';
}


}




/// @nodoc


class LogoutFailure implements LogoutState {
  const LogoutFailure(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutFailureCopyWith<LogoutFailure> get copyWith => _$LogoutFailureCopyWithImpl<LogoutFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'LogoutState.logoutFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $LogoutFailureCopyWith<$Res> implements $LogoutStateCopyWith<$Res> {
  factory $LogoutFailureCopyWith(LogoutFailure value, $Res Function(LogoutFailure) _then) = _$LogoutFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$LogoutFailureCopyWithImpl<$Res>
    implements $LogoutFailureCopyWith<$Res> {
  _$LogoutFailureCopyWithImpl(this._self, this._then);

  final LogoutFailure _self;
  final $Res Function(LogoutFailure) _then;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LogoutFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
