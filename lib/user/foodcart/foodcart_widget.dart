import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'foodcart_model.dart';
export 'foodcart_model.dart';

class FoodcartWidget extends StatefulWidget {
  const FoodcartWidget({
    super.key,
    bool? sendInChat,
    this.chatRef,
  }) : sendInChat = sendInChat ?? true;

  final bool sendInChat;
  final ChatsRecord? chatRef;

  @override
  State<FoodcartWidget> createState() => _FoodcartWidgetState();
}

class _FoodcartWidgetState extends State<FoodcartWidget> {
  late FoodcartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodcartModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Your Cart',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Sora',
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 44.0,
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Here are your added Items',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              Builder(
                builder: (context) {
                  final fooditems = FFAppState()
                      .foodItem
                      .sortedList((e) => e.expiry!)
                      .toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: fooditems.length,
                    itemBuilder: (context, fooditemsIndex) {
                      final fooditemsItem = fooditems[fooditemsIndex];
                      return Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 24.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (widget.sendInChat == true) {
                              context.pushNamed(
                                'chat_2_Details',
                                queryParameters: {
                                  'chatRef': serializeParam(
                                    widget.chatRef,
                                    ParamType.Document,
                                  ),
                                  'item': serializeParam(
                                    fooditemsIndex,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'chatRef': widget.chatRef,
                                },
                              );
                            } else {
                              var foodItemsRecordReference =
                                  FoodItemsRecord.collection.doc();
                              await foodItemsRecordReference
                                  .set(createFoodItemsRecordData(
                                name: valueOrDefault<String>(
                                  fooditemsItem.name,
                                  'NAME',
                                ),
                                description: valueOrDefault<String>(
                                  fooditemsItem.description,
                                  'DESC.',
                                ),
                                price: fooditemsItem.price,
                                category: valueOrDefault<String>(
                                  fooditemsItem.category,
                                  'CATEGORY',
                                ),
                                expiry: fooditemsItem.expiry,
                                donated: fooditemsItem.donated,
                                quantity: valueOrDefault<double>(
                                  fooditemsItem.quantity,
                                  1.0,
                                ),
                                image: valueOrDefault<String>(
                                  fooditemsItem.img,
                                  'IMGVAL',
                                ),
                              ));
                              _model.uploadedentry =
                                  FoodItemsRecord.getDocumentFromData(
                                      createFoodItemsRecordData(
                                        name: valueOrDefault<String>(
                                          fooditemsItem.name,
                                          'NAME',
                                        ),
                                        description: valueOrDefault<String>(
                                          fooditemsItem.description,
                                          'DESC.',
                                        ),
                                        price: fooditemsItem.price,
                                        category: valueOrDefault<String>(
                                          fooditemsItem.category,
                                          'CATEGORY',
                                        ),
                                        expiry: fooditemsItem.expiry,
                                        donated: fooditemsItem.donated,
                                        quantity: valueOrDefault<double>(
                                          fooditemsItem.quantity,
                                          1.0,
                                        ),
                                        image: valueOrDefault<String>(
                                          fooditemsItem.img,
                                          'IMGVAL',
                                        ),
                                      ),
                                      foodItemsRecordReference);

                              context.goNamed(
                                'ItemDetail',
                                queryParameters: {
                                  'currentItem': serializeParam(
                                    _model.uploadedentry,
                                    ParamType.Document,
                                  ),
                                  'index': serializeParam(
                                    fooditemsIndex,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'currentItem': _model.uploadedentry,
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.scale,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                },
                              );
                            }

                            setState(() {});
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Color(0x411D2429),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 4.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      fooditemsItem.name,
                                                      'Food Name',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Sora',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, -1.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      dateTimeFormat(
                                                        'd/M/y',
                                                        fooditemsItem.expiry,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      'Expiry',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 120.0,
                                                height: 120.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  fooditemsItem.img,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Flexible(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(12.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      fooditemsItem.description,
                                                      'Description',
                                                    ).maybeHandleOverflow(
                                                      maxChars: 22,
                                                      replacement: '…',
                                                    ),
                                                    maxLines: 3,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 8.0, 0.0),
                                            child: AutoSizeText(
                                              valueOrDefault<String>(
                                                fooditemsItem.category,
                                                'Category',
                                              ).maybeHandleOverflow(
                                                maxChars: 70,
                                                replacement: '…',
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.chevron_right_rounded,
                                          color: Color(0xFF57636C),
                                          size: 24.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 4.0, 8.0),
                                        child: Text(
                                          formatNumber(
                                            fooditemsItem.price,
                                            formatType: FormatType.custom,
                                            format: 'AED ',
                                            locale: '',
                                          ),
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
