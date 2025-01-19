import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_testline/const/app_color.dart';
import 'package:quizapp_testline/const/txt_style.dart';
import 'package:quizapp_testline/screens/home_screen.dart';
import 'package:quizapp_testline/screens/summary_screen.dart';
import 'package:quizapp_testline/utils/custom_alert.dart';
import 'package:quizapp_testline/utils/custom_utils.dart';
import '../models/quiz_data_model.dart';
import '../repo/quiz_data_repo.dart';
import '../controller/timer_controller.dart';
import '../screens/custom_widgets/custom_button.dart';

class QuizController extends GetxController {
  final QuizDataRepo _quizRepo = QuizDataRepo();

  // Observables for quiz state
  final Rx<QuizDataModel?> quizData = Rx<QuizDataModel?>(null);
  final RxInt _currentQuestionIndex = 0.obs;
  final RxMap<int, int> userAnswers = RxMap<int, int>({});
  final RxBool isLoading = true.obs;
  final RxString errorMessage = ''.obs;


  Questions? get currentQuestion =>
      quizData.value?.questions?[_currentQuestionIndex.value];

  List<Options>? get currentOptions => currentQuestion?.options;

  int get totalQuestions => quizData.value?.questions?.length ?? 0;

  String get questionProgress =>
      '${_currentQuestionIndex.value + 1}/${totalQuestions}';

  int get quizDuration => quizData.value?.duration ?? 60;

  bool get isLastQuestion => _currentQuestionIndex.value == totalQuestions - 1;

  @override
  void onInit() {
    super.onInit();
    fetchQuizData();
  }

  Future<void> fetchQuizData() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final response = await _quizRepo.quizData();
      quizData.value = response;

      // Initialize timer with quiz duration
      final timerController = Get.find<TimerController>();
      timerController.initializeTimer(quizData.value!.duration! * 60 ?? 60);
      isLoading.value = false;
    } catch (e) {
      showErrorDialog('$e',[TextButton(onPressed: (){Get.off(()=>HomeScreen());}, child: Text('Retry',style: mediumBoldColorText,))]);
      errorMessage.value = 'Failed to load quiz data';
    }
  }

  void selectOption(int index) {
    userAnswers[_currentQuestionIndex.value] = index;
  }

  bool isOptionSelected(int index) {
    return userAnswers[_currentQuestionIndex.value] == index;
  }

  bool isCorrectAnswer(int index) {
    return currentOptions?[index].isCorrect ?? false;
  }

  void nextQuestion() {
    if (_currentQuestionIndex.value < totalQuestions - 1) {
      _currentQuestionIndex.value++;
    } else {
      submitTest();
    }
  }

  void previousQuestion() {
    if (canMoveToPrevious()) {
      _currentQuestionIndex.value--;

    }
  }

  bool canMoveToPrevious() {
    return _currentQuestionIndex.value > 0;
  }

  bool canMoveToNext() => !isLoading.value;

  void submitTest() {
    int correctAnswers = 0;
    int totalAttempted = 0;

    userAnswers.forEach((questionIndex, selectedOption) {
      if (quizData.value?.questions?[questionIndex].options?[selectedOption]
              .isCorrect ??
          false) {
        correctAnswers++;
      }
      totalAttempted++;
    });

    double correctMark = double.parse(quizData.value!.correctAnswerMarks ?? '1');
    double negativeMark = double.parse(quizData.value!.negativeMarks ?? '0');
    double score = (correctAnswers * correctMark) -
        ((totalAttempted - correctAnswers) * negativeMark );
    double completion = (totalAttempted / totalQuestions) * 100;


    Get.to(()=>SummaryScreen(
        completion: completion,
        totalQuestion: totalQuestions.toDouble(),
        correctAns: correctAnswers.toDouble(),
        incorrectAns: (totalAttempted-correctAnswers).toDouble(),
        totalScore: score));
  }

  String getQuestionDescription() {
    return currentQuestion?.description ?? 'No question available';
  }

  String getOptionDescription(int index) {
    return currentOptions?[index].description ?? 'No option available';
  }
}
