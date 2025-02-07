import 'dart:developer' as developer;

import 'dictionary_impl.dart';

void main() {
  final List<String> words = ["flutter", "dart", "cross-platform"];
  final DictionaryImpl dictionary = DictionaryImpl.giveWords(words: words);

  developer.log("${dictionary.isInDict("flutter")}"); //true
  developer.log("${dictionary.isInDict("restful")}"); // false


}
