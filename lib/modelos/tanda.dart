import 'participante.dart';

class Tanda {
  final List<Participante> participantes;
  final List<String> ordenTurnos;
  final double montoAportacion;
  int turnoActual = 0;
  final Set<String> aportacionesRondaActual = {};

  Tanda({
    required this.participantes,
    required this.ordenTurnos,
    required this.montoAportacion,
  });

  // --- ESTO ES LO ÚNICO QUE SE AGREGA PARA EL RETO ---
  factory Tanda.barajada({
    required List<Participante> participantes,
    required double montoAportacion,
  }) {
    final ids = participantes.map((p) => p.id).toList();
    ids.shuffle();
    return Tanda(
      participantes: participantes,
      ordenTurnos: ids,
      montoAportacion: montoAportacion,
    );
  }
}
