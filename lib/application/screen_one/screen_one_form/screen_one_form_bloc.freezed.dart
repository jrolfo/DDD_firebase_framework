// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'screen_one_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ScreenOneFormEventTearOff {
  const _$ScreenOneFormEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }
}

// ignore: unused_element
const $ScreenOneFormEvent = _$ScreenOneFormEventTearOff();

mixin _$ScreenOneFormEvent {
  String get emailStr;

  $ScreenOneFormEventCopyWith<ScreenOneFormEvent> get copyWith;
}

abstract class $ScreenOneFormEventCopyWith<$Res> {
  factory $ScreenOneFormEventCopyWith(
          ScreenOneFormEvent value, $Res Function(ScreenOneFormEvent) then) =
      _$ScreenOneFormEventCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$ScreenOneFormEventCopyWithImpl<$Res>
    implements $ScreenOneFormEventCopyWith<$Res> {
  _$ScreenOneFormEventCopyWithImpl(this._value, this._then);

  final ScreenOneFormEvent _value;
  // ignore: unused_field
  final $Res Function(ScreenOneFormEvent) _then;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(_value.copyWith(
      emailStr: emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

abstract class $EmailChangedCopyWith<$Res>
    implements $ScreenOneFormEventCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  @override
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$ScreenOneFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'ScreenOneFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);
}

abstract class EmailChanged implements ScreenOneFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  @override
  String get emailStr;
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

class _$ScreenOneFormStateTearOff {
  const _$ScreenOneFormStateTearOff();

  _ScreenOneFormState call({@required String emailAddress}) {
    return _ScreenOneFormState(
      emailAddress: emailAddress,
    );
  }
}

// ignore: unused_element
const $ScreenOneFormState = _$ScreenOneFormStateTearOff();

mixin _$ScreenOneFormState {
  String get emailAddress;

  $ScreenOneFormStateCopyWith<ScreenOneFormState> get copyWith;
}

abstract class $ScreenOneFormStateCopyWith<$Res> {
  factory $ScreenOneFormStateCopyWith(
          ScreenOneFormState value, $Res Function(ScreenOneFormState) then) =
      _$ScreenOneFormStateCopyWithImpl<$Res>;
  $Res call({String emailAddress});
}

class _$ScreenOneFormStateCopyWithImpl<$Res>
    implements $ScreenOneFormStateCopyWith<$Res> {
  _$ScreenOneFormStateCopyWithImpl(this._value, this._then);

  final ScreenOneFormState _value;
  // ignore: unused_field
  final $Res Function(ScreenOneFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
    ));
  }
}

abstract class _$ScreenOneFormStateCopyWith<$Res>
    implements $ScreenOneFormStateCopyWith<$Res> {
  factory _$ScreenOneFormStateCopyWith(
          _ScreenOneFormState value, $Res Function(_ScreenOneFormState) then) =
      __$ScreenOneFormStateCopyWithImpl<$Res>;
  @override
  $Res call({String emailAddress});
}

class __$ScreenOneFormStateCopyWithImpl<$Res>
    extends _$ScreenOneFormStateCopyWithImpl<$Res>
    implements _$ScreenOneFormStateCopyWith<$Res> {
  __$ScreenOneFormStateCopyWithImpl(
      _ScreenOneFormState _value, $Res Function(_ScreenOneFormState) _then)
      : super(_value, (v) => _then(v as _ScreenOneFormState));

  @override
  _ScreenOneFormState get _value => super._value as _ScreenOneFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
  }) {
    return _then(_ScreenOneFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
    ));
  }
}

class _$_ScreenOneFormState implements _ScreenOneFormState {
  const _$_ScreenOneFormState({@required this.emailAddress})
      : assert(emailAddress != null);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'ScreenOneFormState(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScreenOneFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailAddress);

  @override
  _$ScreenOneFormStateCopyWith<_ScreenOneFormState> get copyWith =>
      __$ScreenOneFormStateCopyWithImpl<_ScreenOneFormState>(this, _$identity);
}

abstract class _ScreenOneFormState implements ScreenOneFormState {
  const factory _ScreenOneFormState({@required String emailAddress}) =
      _$_ScreenOneFormState;

  @override
  String get emailAddress;
  @override
  _$ScreenOneFormStateCopyWith<_ScreenOneFormState> get copyWith;
}
