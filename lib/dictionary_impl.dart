abstract class Dictionary {
  bool isInDict(String word);
}

class DictionaryImpl implements Dictionary {

  DictionaryImpl.giveWords({List<String> words = const <String>[]}) : _words = words;

  final List<String> _words;

  @override
  bool isInDict(String word) {
    for (final String value in _words) {
      if (value == word) {
        return true;
      }
    }
    return false;
  }
}