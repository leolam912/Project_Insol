class ordinanceModel {
  final String sectionNo;
  final String sectionNameEng;
  final String sectionNameChi;
  final String pdfUrlEng;
  final String pdfUrlChi;
  final String cue1red;
  final String cue2;
  final String cue3red;
  final String cue4;
  final String cue5red;
  final String cue6;
  final String audio;
  bool isDone = false;
  bool isFull = false;
  List<WordFindChar> puzzles = new List<WordFindChar>();
  List<String> arrayBtns = new List<String>();


  ordinanceModel(
  {this.sectionNo,this.sectionNameEng, this.sectionNameChi, this.pdfUrlEng, this.pdfUrlChi, this.cue1red, this.cue2, this.cue3red, this.cue4, this.cue5red, this.cue6, this.audio, this.arrayBtns});

  factory ordinanceModel.fromJson(Map<String, dynamic> json) => ordinanceModel(
    sectionNo: json['sectionNo'],
    sectionNameEng: json['sectionNameEng'],
    sectionNameChi: json['sectionNameChi'],
    pdfUrlEng: json['pdfUrlEng'],
    pdfUrlChi: json['pdfUrlChi'],
    cue1red: json['cue1red'],
    cue2: json['cue2'],
    cue3red: json['cue3red'],
    cue4: json['cue4'],
    cue5red: json['cue5red'],
    cue6: json['cue6'],
    audio: json['audio'],
  );

  Map<String, dynamic> toJson() => {
    'sectionNo': sectionNo,
    'sectionNameEng': sectionNameEng,
    'sectionNameChi': sectionNameChi,
    'pdfUrlEng': pdfUrlEng,
    'pdfUrlChi': pdfUrlChi,
    'cue1red': cue1red,
    'cue2': cue2,
    'cue3red': cue3red,
    'cue4': cue4,
    'cue5red': cue5red,
    'cue6': cue6,
    'audio': audio,

  };
}

class WordFindChar {
  String currentValue;
  int currentIndex;
  String correctValue;
  bool hintShow;

  WordFindChar({
    this.hintShow = false,
    this.correctValue,
    this.currentIndex,
    this.currentValue,
  });

  getCurrentValue() {
    if (this.correctValue != null)
      return this.currentValue;
    else if (this.hintShow) return this.correctValue;
  }

  void clearValue() {
    this.currentIndex = null;
    this.currentValue = null;
  }
}
