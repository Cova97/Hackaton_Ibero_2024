import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tips_reto_model.dart';
export 'tips_reto_model.dart';

class TipsRetoWidget extends StatefulWidget {
  const TipsRetoWidget({super.key});

  @override
  State<TipsRetoWidget> createState() => _TipsRetoWidgetState();
}

class _TipsRetoWidgetState extends State<TipsRetoWidget> {
  late TipsRetoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TipsRetoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 32.0,
          ),
        ),
        title: Text(
          ' Meditación Mindfulness',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                letterSpacing: 0.0,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1575052814086-f385e2e2ad1b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8eW9nYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 230.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sigue los siguientes consejos',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      '1. Elige un lugar tranquilo: Busca un lugar tranquilo donde puedas estar sin interrupciones durante la duración de tu meditación. Este puede ser un rincón de tu habitación, un jardín, o cualquier lugar que te ofrezca paz.\n\n2. Define un tiempo específico: Comienza con sesiones cortas de 5 a 10 minutos y gradualmente aumenta el tiempo a medida que te sientas más cómodo con la práctica. Es útil meditar a la misma hora todos los días para desarrollar una rutina.\n\n3. Adopta una postura cómoda: Siéntate en una silla con los pies en el suelo, cruza las piernas en posición de loto o medio loto si estás en el suelo. Mantén tu espalda recta, pero sin rigidez. Las manos pueden descansar suavemente sobre tus piernas.\n\n4. Cierra tus ojos o fija la mirada: Puedes cerrar tus ojos para evitar distracciones visuales o, si prefieres, mantenerlos ligeramente abiertos y fijar la mirada en un punto.\n\n5. Concéntrate en tu respiración: Observa la sensación del aire entrando y saliendo de tus pulmones. Siente cómo se expande y contrae tu abdomen. No trates de controlar tu respiración, solo sé consciente de ella.\n\n6. Vuelve a tu respiración cuando te distraigas: Es normal que tu mente divague. Cuando notes que te has perdido en pensamientos, suavemente, sin juzgarte, regresa tu atención a la respiración.\n\n7. Utiliza guías si lo necesitas: Si estás comenzando, puede ser útil usar grabaciones de meditaciones guiadas o aplicaciones de mindfulness que te instruyan y te ayuden a mantener el enfoque.\n\n8. Finaliza suavemente: Al terminar tu meditación, toma un momento para notar tu cuerpo y el espacio a tu alrededor. Lentamente, abre tus ojos y levántate gradualmente, llevando la calma de la meditación a las actividades que siguen.',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
