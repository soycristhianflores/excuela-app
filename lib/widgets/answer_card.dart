import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/question.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.question,
    required this.currentIndex,
  });

  final String question;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final quizModel = Provider.of<QuizModel>(context);
    bool isSelected = quizModel.selectedAnswerIndex == currentIndex;
    bool isCorrectAnswer = currentIndex ==
        quizModel.questions[quizModel.questionIndex].correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: quizModel.selectedAnswerIndex == null
            ? () => quizModel.pickAnswer(currentIndex)
            : null,
        child: Container(
          height: 70,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: quizModel.selectedAnswerIndex != null
                  ? (isCorrectAnswer
                      ? Colors.green
                      : isWrongAnswer
                          ? Colors.red
                          : Colors.white24)
                  : Colors.white24,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  question,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              if (quizModel.selectedAnswerIndex !=
                  null) // Solo mostrar iconos después de seleccionar
                isCorrectAnswer
                    ? buildCorrectIcon()
                    : isWrongAnswer
                        ? buildWrongIcon()
                        : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCorrectIcon() => const CircleAvatar(
        radius: 15,
        backgroundColor: Colors.green,
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
      );

  Widget buildWrongIcon() => const CircleAvatar(
        radius: 15,
        backgroundColor: Colors.red,
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
      );
}
