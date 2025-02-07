abstract class WildcardDictionary {
  bool isInDict(String word);
}

class WildcardDictionaryImpl implements WildcardDictionary {

  WildcardDictionaryImpl.setup({List<String> words = const <String>[]}) : _words = words;

  final List<String> _words;

  @override
  bool isInDict(String word) {
    for (final String value in _words) {
      if (word == value) {
        return true;
      }

      final String regexpPattern = RegExp.escape(word).replaceAll(r'\*', '.*');
      final RegExp regex = RegExp('^$regexpPattern\$');
      if (regex.hasMatch(value)) {
        return true;
      }
    }

    return false;
  }
}