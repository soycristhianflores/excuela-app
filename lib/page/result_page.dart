import 'package:flutter/material.dart';

import '../models/question_models.dart';

class ResultPage extends StatelessWidget {
  final int score;
  final List<Question> questions;

  const ResultPage({Key? key, required this.score, required this.questions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width:
                1000, // Añade un espaciador para centrar el contenido verticalmente
          ),
          const Text(
            'Your Score: ',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
            ),
          ),
          // Muestra la puntuación en un indicador circular
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: score / questions.length, // Normaliza la puntuación
                  color: Colors.green,
                  backgroundColor: Colors.white,
                ),
              ),
              // Muestra la puntuación numérica y el porcentaje en el centro del indicador
              Column(
                children: [
                  Text(
                    score.toString(),
                    style: const TextStyle(fontSize: 80),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${(score / questions.length * 100).round()}%',
                    style: const TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ],
          ),
          // Botón para volver al menú principal
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              'Menu',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
