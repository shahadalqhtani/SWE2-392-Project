import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'gametr_model.dart';
export 'gametr_model.dart';

class GametrWidget extends StatefulWidget {
  const GametrWidget({
    super.key,
    this.title,
    this.bodyText,
  });

  final String? title;
  final String? bodyText;

  @override
  State<GametrWidget> createState() => _GametrWidgetState();
}

class _GametrWidgetState extends State<GametrWidget> {
  late GametrModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GametrModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        Navigator.pop(context);
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Lottie.asset(
              'assets/lottie_animations/correct.json',
              width: 150.0,
              height: 130.0,
              fit: BoxFit.cover,
              frameRate: FrameRate(30.0),
              animate: true,
            ),
          ),
          Text(
            'Correct answer',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: const Color(0xFFECE463),
                ),
          ),
        ],
      ),
    );
  }
}
