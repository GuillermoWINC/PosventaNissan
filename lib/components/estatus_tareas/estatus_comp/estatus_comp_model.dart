import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'estatus_comp_widget.dart' show EstatusCompWidget;
import 'package:flutter/material.dart';

class EstatusCompModel extends FlutterFlowModel<EstatusCompWidget> {
  ///  Local state fields for this component.

  String? empty;

  List<AssignmentsRecord> tareasOrdered = [];
  void addToTareasOrdered(AssignmentsRecord item) => tareasOrdered.add(item);
  void removeFromTareasOrdered(AssignmentsRecord item) =>
      tareasOrdered.remove(item);
  void removeAtIndexFromTareasOrdered(int index) =>
      tareasOrdered.removeAt(index);
  void insertAtIndexInTareasOrdered(int index, AssignmentsRecord item) =>
      tareasOrdered.insert(index, item);
  void updateTareasOrderedAtIndex(
          int index, Function(AssignmentsRecord) updateFn) =>
      tareasOrdered[index] = updateFn(tareasOrdered[index]);

  List<UserDoneRecord> tasksUserDone = [];
  void addToTasksUserDone(UserDoneRecord item) => tasksUserDone.add(item);
  void removeFromTasksUserDone(UserDoneRecord item) =>
      tasksUserDone.remove(item);
  void removeAtIndexFromTasksUserDone(int index) =>
      tasksUserDone.removeAt(index);
  void insertAtIndexInTasksUserDone(int index, UserDoneRecord item) =>
      tasksUserDone.insert(index, item);
  void updateTasksUserDoneAtIndex(
          int index, Function(UserDoneRecord) updateFn) =>
      tasksUserDone[index] = updateFn(tasksUserDone[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in estatusComp widget.
  List<AssignmentsRecord>? tareasOrdenadas;
  // Stores action output result for [Firestore Query - Query a collection] action in estatusComp widget.
  List<UserDoneRecord>? tareasUsuario;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
