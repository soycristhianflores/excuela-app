import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:excuela/page/result_page.dart';
import 'package:excuela/widgets/answer_card.dart';
import 'package:excuela/models/question.dart'; // Asegúrate de importar el modelo de pregunta adecuadamente

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuizModel(),
      child: QuizPageContent(),
    );
  }
}

class QuizPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final quizModel = Provider.of<QuizModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              quizModel.questions[quizModel.questionIndex].question,
              style: const TextStyle(
                fontSize: 21,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount:
                  quizModel.questions[quizModel.questionIndex].options.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: quizModel.selectedAnswerIndex == null
                      ? () => quizModel.pickAnswer(index)
                      : null,
                  child: AnswerCard(
                    currentIndex: index,
                    question: quizModel
                        .questions[quizModel.questionIndex].options[index],
                  ),
                );
              },
            ),
            if (quizModel.questionIndex == quizModel.questions.length - 1)
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (_) => ResultPage(
                            score: quizModel.score,
                            questions: quizModel.questions,
                          )));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  'Finish',
                  style: TextStyle(color: Colors.black),
                ),
              )
            else
              ElevatedButton(
                onPressed: quizModel.selectedAnswerIndex != null
                    ? quizModel.goToNextQuestion
                    : null,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.black),
                ),
              )
          ],
        ),
      ),
    );
  }
}
