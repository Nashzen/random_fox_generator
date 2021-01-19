// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fox_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FoxController on _FoxControllerBase, Store {
  final _$foxModelAtom = Atom(name: '_FoxControllerBase.foxModel');

  @override
  FoxModel get foxModel {
    _$foxModelAtom.reportRead();
    return super.foxModel;
  }

  @override
  set foxModel(FoxModel value) {
    _$foxModelAtom.reportWrite(value, super.foxModel, () {
      super.foxModel = value;
    });
  }

  @override
  String toString() {
    return '''
foxModel: ${foxModel}
    ''';
  }
}
