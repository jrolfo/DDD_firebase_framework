import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:DDD_firebase_framework/domain/core/failures.dart';
import 'package:DDD_firebase_framework/domain/core/value_transformers.dart';
import 'package:DDD_firebase_framework/domain/core/value_validators.dart';
import 'package:DDD_firebase_framework/domain/core/value_objects.dart';

//clase que representa el contenido de la nota
class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory NoteBody(String input) {
    assert(input != null);
    return NoteBody._(
      //Flat map lo que hace es ir encadenando las validaciones
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const NoteBody._(this.value);
}

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory TodoName(String input) {
    assert(input != null);
    return TodoName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const TodoName._(this.value);
}

class NoteColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];
  @override
  final Either<ValueFailure<Color>, Color> value;

  factory NoteColor(Color input) {
    assert(input != null);
    return NoteColor._(
      right(makeColorOpaque(input)),
    );
  }

  const NoteColor._(this.value);
}

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 3;

  factory List3(KtList<T> input) {
    assert(input != null);
    return List3._(
      validateMaxListLenght(input, maxLength),
    );
  }

  const List3._(this.value);

  //ESTO ES UN GETTER!!!
  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  //ESTO ES OTRO GETTER
  bool get isFull {
    //ACa usa el getter de arriba
    return length == maxLength;
  }
}
