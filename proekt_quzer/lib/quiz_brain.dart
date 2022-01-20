import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('У некоторых кошек на самом деле аллергия на людей.', true),
    Question('Вы можете вести корову вниз по лестнице, но не вверх по лестнице.', false),
    Question('Примерно четверть человеческих костей находится в стопах.', true),
    Question('Кровь слизняка зеленая.', true),
    Question('Девичья фамилия матери Базза Олдрина была "Луна".', true),
    Question('В Португалии запрещено мочиться в Океан..', true),
    Question(
        'Ни один квадратный кусок сухой бумаги нельзя сложить пополам более 7 раз..',
        false),
    Question(
        'В Лондоне, Великобритания, если вам случится умереть в здании парламента, вы технически имеете право на государственные похороны, потому что это здание считается слишком священным местом.',
        true),
    Question(
        'Самый громкий звук, производимый любым животным, - 188 децибел. Это животное - африканский слон.',
        false),
    Question(
        'Общая площадь двух легких человека составляет примерно 70 квадратных метров.',
        true),
    Question('Изначально Google назывался "Backrub"..', true),
    Question(
        'Шоколад влияет на сердце и нервную систему собаки; нескольких унций достаточно, чтобы убить маленькую собаку.',
        true),
    Question(
        'В Западной Вирджинии, США, если вы случайно сбили животное своей машиной, вы можете забрать его домой, чтобы поесть.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  // Шаг 3 Часть A - Создайте здесь метод isFinished (), который проверяет, достигли ли мы последнего вопроса. Он должен возвращать (иметь вывод) true, если мы дошли до последнего вопроса, и он должен возвращать false, если мы еще не достигли этого.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      // Шаг 3, часть B - Используйте оператор печати, чтобы проверить, что isFinished возвращает истину, когда вы действительно находитесь в конце викторины и когда должен произойти перезапуск.

     // print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  // Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}