import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_testline/screens/summary_screen.dart';
import '../models/quiz_data_model.dart';
import '../repo/quiz_data_repo.dart';
import '../controller/timer_controller.dart';

class QuizController extends GetxController {
  final QuizDataRepo _quizRepo = QuizDataRepo();

  // Observables for quiz state
  final Rx<QuizDataModel?> quizData = Rx<QuizDataModel?>(null);
  final RxInt currentQuestionIndex = 0.obs;
  final RxMap<int, int> userAnswers = RxMap<int, int>({});
  final RxBool isLoading = true.obs;
  final RxString errorMessage = ''.obs;

  // Getters for current question data
  Questions? get currentQuestion =>
      quizData.value?.questions?[currentQuestionIndex.value];

  List<Options>? get currentOptions => currentQuestion?.options;

  int get totalQuestions => quizData.value?.questions?.length ?? 0;

  String get questionProgress =>
      '${currentQuestionIndex.value + 1}/${totalQuestions}';

  int get quizDuration => quizData.value?.duration ?? 60;

  bool get isLastQuestion => currentQuestionIndex.value == totalQuestions - 1;

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
    } catch (e) {
      print("Error: $e");
      errorMessage.value = 'Failed to load quiz data';
    } finally {
      isLoading.value = false;
    }
  }

  void selectOption(int index) {
    userAnswers[currentQuestionIndex.value] = index;
  }

  bool isOptionSelected(int index) {
    return userAnswers[currentQuestionIndex.value] == index;
  }

  bool isCorrectAnswer(int index) {
    return currentOptions?[index].isCorrect ?? false;
  }

  void nextQuestion() {
    if (currentQuestionIndex.value < totalQuestions - 1) {
      currentQuestionIndex.value++;
    } else {
      submitTest();
    }
  }

  void previousQuestion() {
    if (canMoveToPrevious()) {
      currentQuestionIndex.value--;
    }
  }

  bool canMoveToPrevious() {
    return currentQuestionIndex.value > 0;
  }

  bool canMoveToNext() => true; // Always enabled since we're removing the lock

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

    double correctMark =
        double.parse(quizData.value!.correctAnswerMarks ?? '1');
    double negativeMark = double.parse(quizData.value!.negativeMarks ?? '0');
    double score = (correctAnswers * correctMark) -
        ((totalAttempted - correctAnswers) * negativeMark);
    double completion = (totalAttempted / totalQuestions) * 100;

    Get.to(() => SummaryScreen(
        completion: completion,
        totalQuestion: totalQuestions.toDouble(),
        correctAns: correctAnswers.toDouble(),
        incorrectAns: (totalAttempted - correctAnswers).toDouble(),
        totalScore: score));
  }

  String getQuestionDescription() {
    return currentQuestion?.description ?? 'No question available';
  }

  String getOptionDescription(int index) {
    return currentOptions?[index].description ?? 'No option available';
  }

  bool isCorrectOption(int index) {
    return currentOptions?[index].isCorrect ?? false;
  }

  bool wasOptionSelected(int index) {
    return userAnswers[currentQuestionIndex.value] == index;
  }
}
