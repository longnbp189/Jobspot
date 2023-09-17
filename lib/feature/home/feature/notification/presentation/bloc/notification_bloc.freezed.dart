// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListNotification,
    required TResult Function() updateReadAllNotification,
    required TResult Function(NotificationModel notification)
        updateReadNotification,
    required TResult Function() resetLastDocument,
    required TResult Function() getCountNotificationUnRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListNotification,
    TResult? Function()? updateReadAllNotification,
    TResult? Function(NotificationModel notification)? updateReadNotification,
    TResult? Function()? resetLastDocument,
    TResult? Function()? getCountNotificationUnRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListNotification,
    TResult Function()? updateReadAllNotification,
    TResult Function(NotificationModel notification)? updateReadNotification,
    TResult Function()? resetLastDocument,
    TResult Function()? getCountNotificationUnRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListNotificationRequested value)
        getListNotification,
    required TResult Function(UpdateReadAllNotificationRequested value)
        updateReadAllNotification,
    required TResult Function(UpdateReadNotificationRequested value)
        updateReadNotification,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCountNotificationUnReadRequested value)
        getCountNotificationUnRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListNotificationRequested value)? getListNotification,
    TResult? Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult? Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListNotificationRequested value)? getListNotification,
    TResult Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetListNotificationRequestedCopyWith<$Res> {
  factory _$$GetListNotificationRequestedCopyWith(
          _$GetListNotificationRequested value,
          $Res Function(_$GetListNotificationRequested) then) =
      __$$GetListNotificationRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$GetListNotificationRequestedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$GetListNotificationRequested>
    implements _$$GetListNotificationRequestedCopyWith<$Res> {
  __$$GetListNotificationRequestedCopyWithImpl(
      _$GetListNotificationRequested _value,
      $Res Function(_$GetListNotificationRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_$GetListNotificationRequested(
      null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetListNotificationRequested implements GetListNotificationRequested {
  const _$GetListNotificationRequested(this.pageKey);

  @override
  final int pageKey;

  @override
  String toString() {
    return 'NotificationEvent.getListNotification(pageKey: $pageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListNotificationRequested &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListNotificationRequestedCopyWith<_$GetListNotificationRequested>
      get copyWith => __$$GetListNotificationRequestedCopyWithImpl<
          _$GetListNotificationRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListNotification,
    required TResult Function() updateReadAllNotification,
    required TResult Function(NotificationModel notification)
        updateReadNotification,
    required TResult Function() resetLastDocument,
    required TResult Function() getCountNotificationUnRead,
  }) {
    return getListNotification(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListNotification,
    TResult? Function()? updateReadAllNotification,
    TResult? Function(NotificationModel notification)? updateReadNotification,
    TResult? Function()? resetLastDocument,
    TResult? Function()? getCountNotificationUnRead,
  }) {
    return getListNotification?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListNotification,
    TResult Function()? updateReadAllNotification,
    TResult Function(NotificationModel notification)? updateReadNotification,
    TResult Function()? resetLastDocument,
    TResult Function()? getCountNotificationUnRead,
    required TResult orElse(),
  }) {
    if (getListNotification != null) {
      return getListNotification(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListNotificationRequested value)
        getListNotification,
    required TResult Function(UpdateReadAllNotificationRequested value)
        updateReadAllNotification,
    required TResult Function(UpdateReadNotificationRequested value)
        updateReadNotification,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCountNotificationUnReadRequested value)
        getCountNotificationUnRead,
  }) {
    return getListNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListNotificationRequested value)? getListNotification,
    TResult? Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult? Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
  }) {
    return getListNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListNotificationRequested value)? getListNotification,
    TResult Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
    required TResult orElse(),
  }) {
    if (getListNotification != null) {
      return getListNotification(this);
    }
    return orElse();
  }
}

abstract class GetListNotificationRequested implements NotificationEvent {
  const factory GetListNotificationRequested(final int pageKey) =
      _$GetListNotificationRequested;

  int get pageKey;
  @JsonKey(ignore: true)
  _$$GetListNotificationRequestedCopyWith<_$GetListNotificationRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateReadAllNotificationRequestedCopyWith<$Res> {
  factory _$$UpdateReadAllNotificationRequestedCopyWith(
          _$UpdateReadAllNotificationRequested value,
          $Res Function(_$UpdateReadAllNotificationRequested) then) =
      __$$UpdateReadAllNotificationRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateReadAllNotificationRequestedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$UpdateReadAllNotificationRequested>
    implements _$$UpdateReadAllNotificationRequestedCopyWith<$Res> {
  __$$UpdateReadAllNotificationRequestedCopyWithImpl(
      _$UpdateReadAllNotificationRequested _value,
      $Res Function(_$UpdateReadAllNotificationRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateReadAllNotificationRequested
    implements UpdateReadAllNotificationRequested {
  const _$UpdateReadAllNotificationRequested();

  @override
  String toString() {
    return 'NotificationEvent.updateReadAllNotification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReadAllNotificationRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListNotification,
    required TResult Function() updateReadAllNotification,
    required TResult Function(NotificationModel notification)
        updateReadNotification,
    required TResult Function() resetLastDocument,
    required TResult Function() getCountNotificationUnRead,
  }) {
    return updateReadAllNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListNotification,
    TResult? Function()? updateReadAllNotification,
    TResult? Function(NotificationModel notification)? updateReadNotification,
    TResult? Function()? resetLastDocument,
    TResult? Function()? getCountNotificationUnRead,
  }) {
    return updateReadAllNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListNotification,
    TResult Function()? updateReadAllNotification,
    TResult Function(NotificationModel notification)? updateReadNotification,
    TResult Function()? resetLastDocument,
    TResult Function()? getCountNotificationUnRead,
    required TResult orElse(),
  }) {
    if (updateReadAllNotification != null) {
      return updateReadAllNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListNotificationRequested value)
        getListNotification,
    required TResult Function(UpdateReadAllNotificationRequested value)
        updateReadAllNotification,
    required TResult Function(UpdateReadNotificationRequested value)
        updateReadNotification,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCountNotificationUnReadRequested value)
        getCountNotificationUnRead,
  }) {
    return updateReadAllNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListNotificationRequested value)? getListNotification,
    TResult? Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult? Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
  }) {
    return updateReadAllNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListNotificationRequested value)? getListNotification,
    TResult Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
    required TResult orElse(),
  }) {
    if (updateReadAllNotification != null) {
      return updateReadAllNotification(this);
    }
    return orElse();
  }
}

abstract class UpdateReadAllNotificationRequested implements NotificationEvent {
  const factory UpdateReadAllNotificationRequested() =
      _$UpdateReadAllNotificationRequested;
}

/// @nodoc
abstract class _$$UpdateReadNotificationRequestedCopyWith<$Res> {
  factory _$$UpdateReadNotificationRequestedCopyWith(
          _$UpdateReadNotificationRequested value,
          $Res Function(_$UpdateReadNotificationRequested) then) =
      __$$UpdateReadNotificationRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationModel notification});

  $NotificationModelCopyWith<$Res> get notification;
}

/// @nodoc
class __$$UpdateReadNotificationRequestedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$UpdateReadNotificationRequested>
    implements _$$UpdateReadNotificationRequestedCopyWith<$Res> {
  __$$UpdateReadNotificationRequestedCopyWithImpl(
      _$UpdateReadNotificationRequested _value,
      $Res Function(_$UpdateReadNotificationRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$UpdateReadNotificationRequested(
      null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationModelCopyWith<$Res> get notification {
    return $NotificationModelCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc

class _$UpdateReadNotificationRequested
    implements UpdateReadNotificationRequested {
  const _$UpdateReadNotificationRequested(this.notification);

  @override
  final NotificationModel notification;

  @override
  String toString() {
    return 'NotificationEvent.updateReadNotification(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReadNotificationRequested &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateReadNotificationRequestedCopyWith<_$UpdateReadNotificationRequested>
      get copyWith => __$$UpdateReadNotificationRequestedCopyWithImpl<
          _$UpdateReadNotificationRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListNotification,
    required TResult Function() updateReadAllNotification,
    required TResult Function(NotificationModel notification)
        updateReadNotification,
    required TResult Function() resetLastDocument,
    required TResult Function() getCountNotificationUnRead,
  }) {
    return updateReadNotification(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListNotification,
    TResult? Function()? updateReadAllNotification,
    TResult? Function(NotificationModel notification)? updateReadNotification,
    TResult? Function()? resetLastDocument,
    TResult? Function()? getCountNotificationUnRead,
  }) {
    return updateReadNotification?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListNotification,
    TResult Function()? updateReadAllNotification,
    TResult Function(NotificationModel notification)? updateReadNotification,
    TResult Function()? resetLastDocument,
    TResult Function()? getCountNotificationUnRead,
    required TResult orElse(),
  }) {
    if (updateReadNotification != null) {
      return updateReadNotification(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListNotificationRequested value)
        getListNotification,
    required TResult Function(UpdateReadAllNotificationRequested value)
        updateReadAllNotification,
    required TResult Function(UpdateReadNotificationRequested value)
        updateReadNotification,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCountNotificationUnReadRequested value)
        getCountNotificationUnRead,
  }) {
    return updateReadNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListNotificationRequested value)? getListNotification,
    TResult? Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult? Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
  }) {
    return updateReadNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListNotificationRequested value)? getListNotification,
    TResult Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
    required TResult orElse(),
  }) {
    if (updateReadNotification != null) {
      return updateReadNotification(this);
    }
    return orElse();
  }
}

abstract class UpdateReadNotificationRequested implements NotificationEvent {
  const factory UpdateReadNotificationRequested(
      final NotificationModel notification) = _$UpdateReadNotificationRequested;

  NotificationModel get notification;
  @JsonKey(ignore: true)
  _$$UpdateReadNotificationRequestedCopyWith<_$UpdateReadNotificationRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetLastDocumentRequestedCopyWith<$Res> {
  factory _$$ResetLastDocumentRequestedCopyWith(
          _$ResetLastDocumentRequested value,
          $Res Function(_$ResetLastDocumentRequested) then) =
      __$$ResetLastDocumentRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetLastDocumentRequestedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ResetLastDocumentRequested>
    implements _$$ResetLastDocumentRequestedCopyWith<$Res> {
  __$$ResetLastDocumentRequestedCopyWithImpl(
      _$ResetLastDocumentRequested _value,
      $Res Function(_$ResetLastDocumentRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetLastDocumentRequested implements ResetLastDocumentRequested {
  const _$ResetLastDocumentRequested();

  @override
  String toString() {
    return 'NotificationEvent.resetLastDocument()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetLastDocumentRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListNotification,
    required TResult Function() updateReadAllNotification,
    required TResult Function(NotificationModel notification)
        updateReadNotification,
    required TResult Function() resetLastDocument,
    required TResult Function() getCountNotificationUnRead,
  }) {
    return resetLastDocument();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListNotification,
    TResult? Function()? updateReadAllNotification,
    TResult? Function(NotificationModel notification)? updateReadNotification,
    TResult? Function()? resetLastDocument,
    TResult? Function()? getCountNotificationUnRead,
  }) {
    return resetLastDocument?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListNotification,
    TResult Function()? updateReadAllNotification,
    TResult Function(NotificationModel notification)? updateReadNotification,
    TResult Function()? resetLastDocument,
    TResult Function()? getCountNotificationUnRead,
    required TResult orElse(),
  }) {
    if (resetLastDocument != null) {
      return resetLastDocument();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListNotificationRequested value)
        getListNotification,
    required TResult Function(UpdateReadAllNotificationRequested value)
        updateReadAllNotification,
    required TResult Function(UpdateReadNotificationRequested value)
        updateReadNotification,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCountNotificationUnReadRequested value)
        getCountNotificationUnRead,
  }) {
    return resetLastDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListNotificationRequested value)? getListNotification,
    TResult? Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult? Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
  }) {
    return resetLastDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListNotificationRequested value)? getListNotification,
    TResult Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
    required TResult orElse(),
  }) {
    if (resetLastDocument != null) {
      return resetLastDocument(this);
    }
    return orElse();
  }
}

abstract class ResetLastDocumentRequested implements NotificationEvent {
  const factory ResetLastDocumentRequested() = _$ResetLastDocumentRequested;
}

/// @nodoc
abstract class _$$GetCountNotificationUnReadRequestedCopyWith<$Res> {
  factory _$$GetCountNotificationUnReadRequestedCopyWith(
          _$GetCountNotificationUnReadRequested value,
          $Res Function(_$GetCountNotificationUnReadRequested) then) =
      __$$GetCountNotificationUnReadRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCountNotificationUnReadRequestedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$GetCountNotificationUnReadRequested>
    implements _$$GetCountNotificationUnReadRequestedCopyWith<$Res> {
  __$$GetCountNotificationUnReadRequestedCopyWithImpl(
      _$GetCountNotificationUnReadRequested _value,
      $Res Function(_$GetCountNotificationUnReadRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCountNotificationUnReadRequested
    implements GetCountNotificationUnReadRequested {
  const _$GetCountNotificationUnReadRequested();

  @override
  String toString() {
    return 'NotificationEvent.getCountNotificationUnRead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCountNotificationUnReadRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getListNotification,
    required TResult Function() updateReadAllNotification,
    required TResult Function(NotificationModel notification)
        updateReadNotification,
    required TResult Function() resetLastDocument,
    required TResult Function() getCountNotificationUnRead,
  }) {
    return getCountNotificationUnRead();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getListNotification,
    TResult? Function()? updateReadAllNotification,
    TResult? Function(NotificationModel notification)? updateReadNotification,
    TResult? Function()? resetLastDocument,
    TResult? Function()? getCountNotificationUnRead,
  }) {
    return getCountNotificationUnRead?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getListNotification,
    TResult Function()? updateReadAllNotification,
    TResult Function(NotificationModel notification)? updateReadNotification,
    TResult Function()? resetLastDocument,
    TResult Function()? getCountNotificationUnRead,
    required TResult orElse(),
  }) {
    if (getCountNotificationUnRead != null) {
      return getCountNotificationUnRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListNotificationRequested value)
        getListNotification,
    required TResult Function(UpdateReadAllNotificationRequested value)
        updateReadAllNotification,
    required TResult Function(UpdateReadNotificationRequested value)
        updateReadNotification,
    required TResult Function(ResetLastDocumentRequested value)
        resetLastDocument,
    required TResult Function(GetCountNotificationUnReadRequested value)
        getCountNotificationUnRead,
  }) {
    return getCountNotificationUnRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetListNotificationRequested value)? getListNotification,
    TResult? Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult? Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult? Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult? Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
  }) {
    return getCountNotificationUnRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListNotificationRequested value)? getListNotification,
    TResult Function(UpdateReadAllNotificationRequested value)?
        updateReadAllNotification,
    TResult Function(UpdateReadNotificationRequested value)?
        updateReadNotification,
    TResult Function(ResetLastDocumentRequested value)? resetLastDocument,
    TResult Function(GetCountNotificationUnReadRequested value)?
        getCountNotificationUnRead,
    required TResult orElse(),
  }) {
    if (getCountNotificationUnRead != null) {
      return getCountNotificationUnRead(this);
    }
    return orElse();
  }
}

abstract class GetCountNotificationUnReadRequested
    implements NotificationEvent {
  const factory GetCountNotificationUnReadRequested() =
      _$GetCountNotificationUnReadRequested;
}

/// @nodoc
mixin _$NotificationState {
  UserModel? get user => throw _privateConstructorUsedError;
  NotificationModel? get notification => throw _privateConstructorUsedError;
  LoadStatusEnum get loadStatus => throw _privateConstructorUsedError;
  List<NotificationModel> get notifications =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isShimmer => throw _privateConstructorUsedError;
  bool get updateSuccess => throw _privateConstructorUsedError;
  int get unReadCount => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {UserModel? user,
      NotificationModel? notification,
      LoadStatusEnum loadStatus,
      List<NotificationModel> notifications,
      bool isLoading,
      bool isShimmer,
      bool updateSuccess,
      int unReadCount,
      String error});

  $UserModelCopyWith<$Res>? get user;
  $NotificationModelCopyWith<$Res>? get notification;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? notification = freezed,
    Object? loadStatus = null,
    Object? notifications = null,
    Object? isLoading = null,
    Object? isShimmer = null,
    Object? updateSuccess = null,
    Object? unReadCount = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationModel?,
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatusEnum,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isShimmer: null == isShimmer
          ? _value.isShimmer
          : isShimmer // ignore: cast_nullable_to_non_nullable
              as bool,
      updateSuccess: null == updateSuccess
          ? _value.updateSuccess
          : updateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      unReadCount: null == unReadCount
          ? _value.unReadCount
          : unReadCount // ignore: cast_nullable_to_non_nullable
              as int,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationModelCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $NotificationModelCopyWith<$Res>(_value.notification!, (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$_NotificationStateCopyWith(_$_NotificationState value,
          $Res Function(_$_NotificationState) then) =
      __$$_NotificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel? user,
      NotificationModel? notification,
      LoadStatusEnum loadStatus,
      List<NotificationModel> notifications,
      bool isLoading,
      bool isShimmer,
      bool updateSuccess,
      int unReadCount,
      String error});

  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $NotificationModelCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$_NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_NotificationState>
    implements _$$_NotificationStateCopyWith<$Res> {
  __$$_NotificationStateCopyWithImpl(
      _$_NotificationState _value, $Res Function(_$_NotificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? notification = freezed,
    Object? loadStatus = null,
    Object? notifications = null,
    Object? isLoading = null,
    Object? isShimmer = null,
    Object? updateSuccess = null,
    Object? unReadCount = null,
    Object? error = null,
  }) {
    return _then(_$_NotificationState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationModel?,
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatusEnum,
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isShimmer: null == isShimmer
          ? _value.isShimmer
          : isShimmer // ignore: cast_nullable_to_non_nullable
              as bool,
      updateSuccess: null == updateSuccess
          ? _value.updateSuccess
          : updateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      unReadCount: null == unReadCount
          ? _value.unReadCount
          : unReadCount // ignore: cast_nullable_to_non_nullable
              as int,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NotificationState implements _NotificationState {
  const _$_NotificationState(
      {this.user,
      this.notification,
      this.loadStatus = LoadStatusEnum.notLoad,
      final List<NotificationModel> notifications = const [],
      this.isLoading = false,
      this.isShimmer = true,
      this.updateSuccess = false,
      this.unReadCount = 0,
      this.error = ""})
      : _notifications = notifications;

  @override
  final UserModel? user;
  @override
  final NotificationModel? notification;
  @override
  @JsonKey()
  final LoadStatusEnum loadStatus;
  final List<NotificationModel> _notifications;
  @override
  @JsonKey()
  List<NotificationModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isShimmer;
  @override
  @JsonKey()
  final bool updateSuccess;
  @override
  @JsonKey()
  final int unReadCount;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'NotificationState(user: $user, notification: $notification, loadStatus: $loadStatus, notifications: $notifications, isLoading: $isLoading, isShimmer: $isShimmer, updateSuccess: $updateSuccess, unReadCount: $unReadCount, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.loadStatus, loadStatus) ||
                other.loadStatus == loadStatus) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isShimmer, isShimmer) ||
                other.isShimmer == isShimmer) &&
            (identical(other.updateSuccess, updateSuccess) ||
                other.updateSuccess == updateSuccess) &&
            (identical(other.unReadCount, unReadCount) ||
                other.unReadCount == unReadCount) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      notification,
      loadStatus,
      const DeepCollectionEquality().hash(_notifications),
      isLoading,
      isShimmer,
      updateSuccess,
      unReadCount,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      __$$_NotificationStateCopyWithImpl<_$_NotificationState>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {final UserModel? user,
      final NotificationModel? notification,
      final LoadStatusEnum loadStatus,
      final List<NotificationModel> notifications,
      final bool isLoading,
      final bool isShimmer,
      final bool updateSuccess,
      final int unReadCount,
      final String error}) = _$_NotificationState;

  @override
  UserModel? get user;
  @override
  NotificationModel? get notification;
  @override
  LoadStatusEnum get loadStatus;
  @override
  List<NotificationModel> get notifications;
  @override
  bool get isLoading;
  @override
  bool get isShimmer;
  @override
  bool get updateSuccess;
  @override
  int get unReadCount;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
