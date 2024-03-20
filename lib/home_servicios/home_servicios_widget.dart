import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_servicios_model.dart';
export 'home_servicios_model.dart';

class HomeServiciosWidget extends StatefulWidget {
  const HomeServiciosWidget({super.key});

  @override
  State<HomeServiciosWidget> createState() => _HomeServiciosWidgetState();
}

class _HomeServiciosWidgetState extends State<HomeServiciosWidget> {
  late HomeServiciosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeServiciosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 25.0,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.8,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/inventario.png',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 90.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Nuestros servicios:',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.w900,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('AgregarServicio');
                            },
                            text: 'AGREGAR UN NUEVO SERVICIO',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF29D4FF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.4,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                          child: StreamBuilder<List<ServiciosRecord>>(
                            stream: queryServiciosRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<ServiciosRecord>
                                  listViewServiciosRecordList = snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewServiciosRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewServiciosRecord =
                                      listViewServiciosRecordList[
                                          listViewIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'EditarServicio',
                                        queryParameters: {
                                          'servicio': serializeParam(
                                            listViewServiciosRecord,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'servicio': listViewServiciosRecord,
                                        },
                                      );
                                    },
                                    child: Slidable(
                                      endActionPane: ActionPane(
                                        motion: const ScrollMotion(),
                                        extentRatio: 0.25,
                                        children: [
                                          SlidableAction(
                                            label: 'Eliminar',
                                            backgroundColor: Color(0xFFDE3E3E),
                                            icon: Icons.delete_forever,
                                            onPressed: (_) async {
                                              var confirmDialogResponse =
                                                  await showDialog<bool>(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Servicios'),
                                                            content: Text(
                                                                'Estas seguro de eliminar este servicio:${listViewServiciosRecord.nombreServicio}?'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        false),
                                                                child: Text(
                                                                    'Cancel'),
                                                              ),
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        true),
                                                                child: Text(
                                                                    'Confirm'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ) ??
                                                      false;
                                              if (confirmDialogResponse) {
                                                await listViewServiciosRecord
                                                    .reference
                                                    .delete();
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                      child: ListTile(
                                        title: Text(
                                          listViewServiciosRecord
                                              .nombreServicio,
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        subtitle: Text(
                                          listViewServiciosRecord.costo
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        trailing: Icon(
                                          Icons.edit_square,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        dense: false,
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.edit_calendar_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 40.0,
                    ),
                    Icon(
                      Icons.production_quantity_limits,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 40.0,
                    ),
                    Icon(
                      Icons.home_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 40.0,
                    ),
                    Icon(
                      Icons.calendar_today,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 40.0,
                    ),
                    Icon(
                      Icons.face_2_sharp,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 40.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
