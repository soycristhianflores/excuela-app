import 'package:excuela/models/progress_models.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProgressModel(),
      child: ProgressPageContent(),
    );
  }
}

class ProgressPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final progressModel = Provider.of<ProgressModel>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Progress Indicator'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                animation: true,
                animationDuration: 1000,
                radius: 150,
                lineWidth: 40,
                percent: progressModel.progress,
                progressColor: Colors.deepOrange,
                backgroundColor: Colors.deepOrange.shade200,
                circularStrokeCap: CircularStrokeCap.round,
                center: Text(
                  '${(progressModel.progress * 100).toInt()} %',
                  style: TextStyle(fontSize: 65, color: Colors.deepOrange),
                ),
              ),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 40,
                percent: progressModel.progress,
                progressColor: Colors.deepOrange,
                backgroundColor: Colors.deepOrange.shade200,
                barRadius: const Radius.circular(20),
              ),
              if (progressModel.progress < 1.0)
                ElevatedButton(
                  onPressed: progressModel.incrementProgress,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              if (progressModel.progress == 1.0)
                ElevatedButton(
                  onPressed: progressModel.resetProgress,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Restart',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
