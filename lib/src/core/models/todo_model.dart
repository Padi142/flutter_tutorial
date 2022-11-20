import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part "todo_model.g.dart";

@JsonSerializable()
class TodoModel extends Equatable {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  const TodoModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });

  @override
  List<Object?> get props => [];

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}
