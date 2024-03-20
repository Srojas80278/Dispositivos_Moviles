import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'bs_actualizar_servicio_widget.dart' show BsActualizarServicioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BsActualizarServicioModel
    extends FlutterFlowModel<BsActualizarServicioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionController;
  String? Function(BuildContext, String?)? txtDescripcionControllerValidator;
  // State field(s) for txtCosto widget.
  FocusNode? txtCostoFocusNode;
  TextEditingController? txtCostoController;
  String? Function(BuildContext, String?)? txtCostoControllerValidator;
  // State field(s) for txtTipo widget.
  FocusNode? txtTipoFocusNode;
  TextEditingController? txtTipoController;
  String? Function(BuildContext, String?)? txtTipoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionController?.dispose();

    txtCostoFocusNode?.dispose();
    txtCostoController?.dispose();

    txtTipoFocusNode?.dispose();
    txtTipoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
