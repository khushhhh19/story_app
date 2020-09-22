import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [

    Story(
      storyTitle: 'One dark night I was crossing a road and saw a man with a heavy bag. He was all alone and looking mysterious.',
      choice1: 'I should ask him if I can help',
      choice2: 'I should not go near him',
    ),

    Story(
      storyTitle: 'He said he is walking from straight two hours to reach home as he has no money and also he is very tired.',
      choice1: 'I should give him some money',
      choice2: 'I should ask him what\'s inside the bag',
    ),

    Story(
      storyTitle: 'As I started moving on my way, I noticed he is following me and trying to take something out from his bag.',
      choice1: 'I should run faster for help',
      choice2: 'I should ask him what\'s the matter',
    ),

    Story(
      storyTitle: 'As soon as I opened my purse to give him some money he suddenly snatched it and being to run so fast. I was unable to catch him.',
      choice1: 'Restart',
      choice2: '',
    ),

    Story(
      storyTitle: 'He said there is a dead body inside and he is going to throw it. After hearing this I ran away as fast as I can.',
      choice1: 'Restart',
      choice2: '',
    ),

    Story(
      storyTitle: 'I saw a police station and asked for help. Later I got to know that he was a murderer.',
      choice1: 'Restart',
      choice2: '',
    ),

    Story(
      storyTitle: 'He said he want help to reach his home. So I helped him. He was a nice man.',
      choice1: 'Restart',
      choice2: '',
    ),

  ];

  int _storyNumber = 0;

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if(choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 1;
    }
    else if(choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 2;
    }
    else if(choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 3;
    }
    else if(choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 4;
    }
    else if(choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    }
    else if(choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 6;
    }
    else if(_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5 || _storyNumber ==6) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    }
    else {
      return false;
    }
  }

}

