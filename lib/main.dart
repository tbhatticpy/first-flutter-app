import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          'For which of the following disciplines is Nobel Prize awarded?',
      'answers': [
        {'text': 'Physics and Chemistry', 'score': 0},
        {'text': 'Physiology or Medicine', 'score': 0},
        {'text': 'Literature, Peace and Economics', 'score': 0},
        {'text': 'All of the above', 'score': 1},
      ],
    },
    {
      'questionText':
          'Hitler\'s party which came into power in 1933 is known as?',
      'answers': [
        {'text': 'Labour Party', 'score': 0},
        {'text': 'Nazi Party', 'score': 1},
        {'text': 'Ku-Klux-Klan', 'score': 0},
        {'text': 'Democratic Party', 'score': 0},
      ],
    },
    {
      'questionText':
          'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in?',
      'answers': [
        {'text': '1967', 'score': 1},
        {'text': '1968', 'score': 0},
        {'text': '1958', 'score': 0},
        {'text': '1922', 'score': 0},
      ],
    },
    {
      'questionText':
          'Exposure to sunlight helps a person improve his health because?',
      'answers': [
        {'text': 'The infrared light kills bacteria in the body', 'score': 0},
        {'text': 'Resistance power increases', 'score': 0},
        {
          'text':
              'The pigment cells in the skin get stimulated and produce a healthy tan',
          'score': 0
        },
        {
          'text': 'The ultraviolet rays convert skin oil into Vitamin D',
          'score': 1
        },
      ],
    },
    {
      'questionText': 'Friction can be reduced by changing from?',
      'answers': [
        {'text': 'Sliding to rolling', 'score': 1},
        {'text': 'Rolling to sliding', 'score': 0},
        {'text': 'Potential energy to kinetic energy', 'score': 0},
        {'text': 'Dynamic to static', 'score': 0},
      ],
    },
    {
      'questionText': 'The ozone layer restricts?',
      'answers': [
        {'text': 'Visible light', 'score': 0},
        {'text': 'Infrared radiation', 'score': 0},
        {'text': 'Ultraviolet radiation', 'score': 1},
        {'text': 'X-rays and gamma rays', 'score': 0},
      ],
    },
    {
      'questionText': 'Eugenics is the study of?',
      'answers': [
        {'text': 'People of European origin', 'score': 0},
        {
          'text': 'Altering human beings by changing their genetic components',
          'score': 1
        },
        {'text': 'Different races of mankind', 'score': 0},
        {'text': 'Genetic of plants', 'score': 0},
      ],
    },
    {
      'questionText':
          'Escape velocity of a rocket fired from the earth towards the moon is a velocity to get rid of the?',
      'answers': [
        {'text': 'Earth\'s gravitational pull', 'score': 1},
        {'text': 'Moon\'s gravitational pull', 'score': 0},
        {'text': 'Centripetal force due to the earth\'s rotation', 'score': 0},
        {'text': 'Pressure of the atmosphere', 'score': 0},
      ],
    },
    {
      'questionText':
          'For seeing objects at the surface of water from a submarine under water, the instrument used is?',
      'answers': [
        {'text': 'Kaleidoscope', 'score': 0},
        {'text': 'Periscope', 'score': 1},
        {'text': 'Spectroscope', 'score': 0},
        {'text': 'Telescope', 'score': 0},
      ],
    },
    {
      'questionText': 'Who\'s the best person?',
      'answers': [
        {'text': 'Talha', 'score': 1},
        {'text': 'Talha', 'score': 1},
        {'text': 'Talha', 'score': 1},
        {'text': 'Talha', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
