class verses {
  int id;
  String chapter;
  String sanskrit;
  String gujarati;
  String hindi;

  verses({
    required this.id,
    required this.chapter,
    required this.gujarati,
    required this.hindi,
    required this.sanskrit,
  });

  factory verses.fromjson({required Map data}) {
    return verses(
        id: data['id'],
        chapter: data['chapter'],
        gujarati: data['gujarati'],
        hindi: data['hindi'],
        sanskrit: data['sanskrit']);
  }
}
