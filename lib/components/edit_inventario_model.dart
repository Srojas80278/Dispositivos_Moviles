import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_inventario_widget.dart' show EditInventarioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditInventarioModel extends FlutterFlowModel<EditInventarioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtnombre widget.
  FocusNode? txtnombreFocusNode;
  TextEditingController? txtnombreController;
  String? Function(BuildContext, String?)? txtnombreControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtnombreFocusNode?.dispose();
    txtnombreController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
