import 'dart:developer' as developer;

import 'wildcard_dictionary.dart';

import 'dictionary_impl.dart';

void main() {
  final List<String> words = ["flutter", "dart", "cross-platform"];
  final DictionaryImpl dictionary = DictionaryImpl.giveWords(words: words);

  developer.log("${dictionary.isInDict("flutter")}");
  developer.log("${dictionary.isInDict("restful")}");

  final WildcardDictionary wildcard = WildcardDictionaryImpl.setup(words: words);
  developer.log("${wildcard.isInDict("flu*")}");
  developer.log("${wildcard.isInDict("*elutter")}");
  developer.log("${wildcard.isInDict("f*art")}");

}
