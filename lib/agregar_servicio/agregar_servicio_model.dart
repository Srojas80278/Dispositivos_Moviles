import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'agregar_servicio_widget.dart' show AgregarServicioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgregarServicioModel extends FlutterFlowModel<AgregarServicioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtnombre widget.
  FocusNode? txtnombreFocusNode;
  TextEditingController? txtnombreController;
  String? Function(BuildContext, String?)? txtnombreControllerValidator;
  // State field(s) for txtdescripcion widget.
  FocusNode? txtdescripcionFocusNode;
  TextEditingController? txtdescripcionController;
  String? Function(BuildContext, String?)? txtdescripcionControllerValidator;
  // State field(s) for txtcosto widget.
  FocusNode? txtcostoFocusNode;
  TextEditingController? txtcostoController;
  String? Function(BuildContext, String?)? txtcostoControllerValidator;
  // State field(s) for txttipoServicio widget.
  FocusNode? txttipoServicioFocusNode;
  TextEditingController? txttipoServicioController;
  String? Function(BuildContext, String?)? txttipoServicioControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtnombreFocusNode?.dispose();
    txtnombreController?.dispose();

    txtdescripcionFocusNode?.dispose();
    txtdescripcionController?.dispose();

    txtcostoFocusNode?.dispose();
    txtcostoController?.dispose();

    txttipoServicioFocusNode?.dispose();
    txttipoServicioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
