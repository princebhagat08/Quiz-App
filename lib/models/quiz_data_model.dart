class QuizDataModel {
  int? _id;
  Null? _name;
  String? _title;
  String? _description;
  Null? _difficultyLevel;
  String? _topic;
  String? _time;
  bool? _isPublished;
  String? _createdAt;
  String? _updatedAt;
  int? _duration;
  String? _endTime;
  String? _negativeMarks;
  String? _correctAnswerMarks;
  bool? _shuffle;
  bool? _showAnswers;
  bool? _lockSolutions;
  bool? _isForm;
  bool? _showMasteryOption;
  Null? _readingMaterial;
  Null? _quizType;
  bool? _isCustom;
  Null? _bannerId;
  Null? _examId;
  bool? _showUnanswered;
  String? _endsAt;
  Null? _lives;
  String? _liveCount;
  int? _coinCount;
  int? _questionsCount;
  String? _dailyDate;
  int? _maxMistakeCount;
  List<Null>? _readingMaterials;
  List<Questions>? _questions;
  int? _progress;

  QuizDataModel(
      {int? id,
      Null? name,
      String? title,
      String? description,
      Null? difficultyLevel,
      String? topic,
      String? time,
      bool? isPublished,
      String? createdAt,
      String? updatedAt,
      int? duration,
      String? endTime,
      String? negativeMarks,
      String? correctAnswerMarks,
      bool? shuffle,
      bool? showAnswers,
      bool? lockSolutions,
      bool? isForm,
      bool? showMasteryOption,
      Null? readingMaterial,
      Null? quizType,
      bool? isCustom,
      Null? bannerId,
      Null? examId,
      bool? showUnanswered,
      String? endsAt,
      Null? lives,
      String? liveCount,
      int? coinCount,
      int? questionsCount,
      String? dailyDate,
      int? maxMistakeCount,
      List<Null>? readingMaterials,
      List<Questions>? questions,
      int? progress}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (title != null) {
      this._title = title;
    }
    if (description != null) {
      this._description = description;
    }
    if (difficultyLevel != null) {
      this._difficultyLevel = difficultyLevel;
    }
    if (topic != null) {
      this._topic = topic;
    }
    if (time != null) {
      this._time = time;
    }
    if (isPublished != null) {
      this._isPublished = isPublished;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (duration != null) {
      this._duration = duration;
    }
    if (endTime != null) {
      this._endTime = endTime;
    }
    if (negativeMarks != null) {
      this._negativeMarks = negativeMarks;
    }
    if (correctAnswerMarks != null) {
      this._correctAnswerMarks = correctAnswerMarks;
    }
    if (shuffle != null) {
      this._shuffle = shuffle;
    }
    if (showAnswers != null) {
      this._showAnswers = showAnswers;
    }
    if (lockSolutions != null) {
      this._lockSolutions = lockSolutions;
    }
    if (isForm != null) {
      this._isForm = isForm;
    }
    if (showMasteryOption != null) {
      this._showMasteryOption = showMasteryOption;
    }
    if (readingMaterial != null) {
      this._readingMaterial = readingMaterial;
    }
    if (quizType != null) {
      this._quizType = quizType;
    }
    if (isCustom != null) {
      this._isCustom = isCustom;
    }
    if (bannerId != null) {
      this._bannerId = bannerId;
    }
    if (examId != null) {
      this._examId = examId;
    }
    if (showUnanswered != null) {
      this._showUnanswered = showUnanswered;
    }
    if (endsAt != null) {
      this._endsAt = endsAt;
    }
    if (lives != null) {
      this._lives = lives;
    }
    if (liveCount != null) {
      this._liveCount = liveCount;
    }
    if (coinCount != null) {
      this._coinCount = coinCount;
    }
    if (questionsCount != null) {
      this._questionsCount = questionsCount;
    }
    if (dailyDate != null) {
      this._dailyDate = dailyDate;
    }
    if (maxMistakeCount != null) {
      this._maxMistakeCount = maxMistakeCount;
    }
    if (readingMaterials != null) {
      this._readingMaterials = readingMaterials;
    }
    if (questions != null) {
      this._questions = questions;
    }
    if (progress != null) {
      this._progress = progress;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  Null? get name => _name;
  set name(Null? name) => _name = name;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get description => _description;
  set description(String? description) => _description = description;
  Null? get difficultyLevel => _difficultyLevel;
  set difficultyLevel(Null? difficultyLevel) =>
      _difficultyLevel = difficultyLevel;
  String? get topic => _topic;
  set topic(String? topic) => _topic = topic;
  String? get time => _time;
  set time(String? time) => _time = time;
  bool? get isPublished => _isPublished;
  set isPublished(bool? isPublished) => _isPublished = isPublished;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  int? get duration => _duration;
  set duration(int? duration) => _duration = duration;
  String? get endTime => _endTime;
  set endTime(String? endTime) => _endTime = endTime;
  String? get negativeMarks => _negativeMarks;
  set negativeMarks(String? negativeMarks) => _negativeMarks = negativeMarks;
  String? get correctAnswerMarks => _correctAnswerMarks;
  set correctAnswerMarks(String? correctAnswerMarks) =>
      _correctAnswerMarks = correctAnswerMarks;
  bool? get shuffle => _shuffle;
  set shuffle(bool? shuffle) => _shuffle = shuffle;
  bool? get showAnswers => _showAnswers;
  set showAnswers(bool? showAnswers) => _showAnswers = showAnswers;
  bool? get lockSolutions => _lockSolutions;
  set lockSolutions(bool? lockSolutions) => _lockSolutions = lockSolutions;
  bool? get isForm => _isForm;
  set isForm(bool? isForm) => _isForm = isForm;
  bool? get showMasteryOption => _showMasteryOption;
  set showMasteryOption(bool? showMasteryOption) =>
      _showMasteryOption = showMasteryOption;
  Null? get readingMaterial => _readingMaterial;
  set readingMaterial(Null? readingMaterial) =>
      _readingMaterial = readingMaterial;
  Null? get quizType => _quizType;
  set quizType(Null? quizType) => _quizType = quizType;
  bool? get isCustom => _isCustom;
  set isCustom(bool? isCustom) => _isCustom = isCustom;
  Null? get bannerId => _bannerId;
  set bannerId(Null? bannerId) => _bannerId = bannerId;
  Null? get examId => _examId;
  set examId(Null? examId) => _examId = examId;
  bool? get showUnanswered => _showUnanswered;
  set showUnanswered(bool? showUnanswered) => _showUnanswered = showUnanswered;
  String? get endsAt => _endsAt;
  set endsAt(String? endsAt) => _endsAt = endsAt;
  Null? get lives => _lives;
  set lives(Null? lives) => _lives = lives;
  String? get liveCount => _liveCount;
  set liveCount(String? liveCount) => _liveCount = liveCount;
  int? get coinCount => _coinCount;
  set coinCount(int? coinCount) => _coinCount = coinCount;
  int? get questionsCount => _questionsCount;
  set questionsCount(int? questionsCount) => _questionsCount = questionsCount;
  String? get dailyDate => _dailyDate;
  set dailyDate(String? dailyDate) => _dailyDate = dailyDate;
  int? get maxMistakeCount => _maxMistakeCount;
  set maxMistakeCount(int? maxMistakeCount) =>
      _maxMistakeCount = maxMistakeCount;
  List<Null>? get readingMaterials => _readingMaterials;
  set readingMaterials(List<Null>? readingMaterials) =>
      _readingMaterials = readingMaterials;
  List<Questions>? get questions => _questions;
  set questions(List<Questions>? questions) => _questions = questions;
  int? get progress => _progress;
  set progress(int? progress) => _progress = progress;

  QuizDataModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _title = json['title'];
    _description = json['description'];
    _difficultyLevel = json['difficulty_level'];
    _topic = json['topic'];
    _time = json['time'];
    _isPublished = json['is_published'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _duration = json['duration'];
    _endTime = json['end_time'];
    _negativeMarks = json['negative_marks'];
    _correctAnswerMarks = json['correct_answer_marks'];
    _shuffle = json['shuffle'];
    _showAnswers = json['show_answers'];
    _lockSolutions = json['lock_solutions'];
    _isForm = json['is_form'];
    _showMasteryOption = json['show_mastery_option'];
    _readingMaterial = json['reading_material'];
    _quizType = json['quiz_type'];
    _isCustom = json['is_custom'];
    _bannerId = json['banner_id'];
    _examId = json['exam_id'];
    _showUnanswered = json['show_unanswered'];
    _endsAt = json['ends_at'];
    _lives = json['lives'];
    _liveCount = json['live_count'];
    _coinCount = json['coin_count'];
    _questionsCount = json['questions_count'];
    _dailyDate = json['daily_date'];
    _maxMistakeCount = json['max_mistake_count'];
    if (json['reading_materials'] != null) {
      _readingMaterials = [];
    }
    if (json['questions'] != null) {
      _questions = <Questions>[];
      json['questions'].forEach((v) {
        _questions!.add(new Questions.fromJson(v));
      });
    }
    _progress = json['progress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['title'] = this._title;
    data['description'] = this._description;
    data['difficulty_level'] = this._difficultyLevel;
    data['topic'] = this._topic;
    data['time'] = this._time;
    data['is_published'] = this._isPublished;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['duration'] = this._duration;
    data['end_time'] = this._endTime;
    data['negative_marks'] = this._negativeMarks;
    data['correct_answer_marks'] = this._correctAnswerMarks;
    data['shuffle'] = this._shuffle;
    data['show_answers'] = this._showAnswers;
    data['lock_solutions'] = this._lockSolutions;
    data['is_form'] = this._isForm;
    data['show_mastery_option'] = this._showMasteryOption;
    data['reading_material'] = this._readingMaterial;
    data['quiz_type'] = this._quizType;
    data['is_custom'] = this._isCustom;
    data['banner_id'] = this._bannerId;
    data['exam_id'] = this._examId;
    data['show_unanswered'] = this._showUnanswered;
    data['ends_at'] = this._endsAt;
    data['lives'] = this._lives;
    data['live_count'] = this._liveCount;
    data['coin_count'] = this._coinCount;
    data['questions_count'] = this._questionsCount;
    data['daily_date'] = this._dailyDate;
    data['max_mistake_count'] = this._maxMistakeCount;
    if (this._readingMaterials != null) {
      data['reading_materials'] = this._readingMaterials;
    }
    if (this._questions != null) {
      data['questions'] = this._questions!.map((v) => v.toJson()).toList();
    }
    data['progress'] = this._progress;
    return data;
  }
}

class Questions {
  int? _id;
  String? _description;
  Null? _difficultyLevel;
  String? _topic;
  bool? _isPublished;
  String? _createdAt;
  String? _updatedAt;
  String? _detailedSolution;
  String? _type;
  bool? _isMandatory;
  bool? _showInFeed;
  String? _pyqLabel;
  int? _topicId;
  int? _readingMaterialId;
  String? _fixedAt;
  String? _fixSummary;
  Null? _createdBy;
  String? _updatedBy;
  Null? _quizLevel;
  String? _questionFrom;
  Null? _language;
  Null? _photoUrl;
  Null? _photoSolutionUrl;
  bool? _isSaved;
  String? _tag;
  List<Options>? _options;
  ReadingMaterial? _readingMaterial;

  Questions(
      {int? id,
      String? description,
      Null? difficultyLevel,
      String? topic,
      bool? isPublished,
      String? createdAt,
      String? updatedAt,
      String? detailedSolution,
      String? type,
      bool? isMandatory,
      bool? showInFeed,
      String? pyqLabel,
      int? topicId,
      int? readingMaterialId,
      String? fixedAt,
      String? fixSummary,
      Null? createdBy,
      String? updatedBy,
      Null? quizLevel,
      String? questionFrom,
      Null? language,
      Null? photoUrl,
      Null? photoSolutionUrl,
      bool? isSaved,
      String? tag,
      List<Options>? options,
      ReadingMaterial? readingMaterial}) {
    if (id != null) {
      this._id = id;
    }
    if (description != null) {
      this._description = description;
    }
    if (difficultyLevel != null) {
      this._difficultyLevel = difficultyLevel;
    }
    if (topic != null) {
      this._topic = topic;
    }
    if (isPublished != null) {
      this._isPublished = isPublished;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (detailedSolution != null) {
      this._detailedSolution = detailedSolution;
    }
    if (type != null) {
      this._type = type;
    }
    if (isMandatory != null) {
      this._isMandatory = isMandatory;
    }
    if (showInFeed != null) {
      this._showInFeed = showInFeed;
    }
    if (pyqLabel != null) {
      this._pyqLabel = pyqLabel;
    }
    if (topicId != null) {
      this._topicId = topicId;
    }
    if (readingMaterialId != null) {
      this._readingMaterialId = readingMaterialId;
    }
    if (fixedAt != null) {
      this._fixedAt = fixedAt;
    }
    if (fixSummary != null) {
      this._fixSummary = fixSummary;
    }
    if (createdBy != null) {
      this._createdBy = createdBy;
    }
    if (updatedBy != null) {
      this._updatedBy = updatedBy;
    }
    if (quizLevel != null) {
      this._quizLevel = quizLevel;
    }
    if (questionFrom != null) {
      this._questionFrom = questionFrom;
    }
    if (language != null) {
      this._language = language;
    }
    if (photoUrl != null) {
      this._photoUrl = photoUrl;
    }
    if (photoSolutionUrl != null) {
      this._photoSolutionUrl = photoSolutionUrl;
    }
    if (isSaved != null) {
      this._isSaved = isSaved;
    }
    if (tag != null) {
      this._tag = tag;
    }
    if (options != null) {
      this._options = options;
    }
    if (readingMaterial != null) {
      this._readingMaterial = readingMaterial;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get description => _description;
  set description(String? description) => _description = description;
  Null? get difficultyLevel => _difficultyLevel;
  set difficultyLevel(Null? difficultyLevel) =>
      _difficultyLevel = difficultyLevel;
  String? get topic => _topic;
  set topic(String? topic) => _topic = topic;
  bool? get isPublished => _isPublished;
  set isPublished(bool? isPublished) => _isPublished = isPublished;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  String? get detailedSolution => _detailedSolution;
  set detailedSolution(String? detailedSolution) =>
      _detailedSolution = detailedSolution;
  String? get type => _type;
  set type(String? type) => _type = type;
  bool? get isMandatory => _isMandatory;
  set isMandatory(bool? isMandatory) => _isMandatory = isMandatory;
  bool? get showInFeed => _showInFeed;
  set showInFeed(bool? showInFeed) => _showInFeed = showInFeed;
  String? get pyqLabel => _pyqLabel;
  set pyqLabel(String? pyqLabel) => _pyqLabel = pyqLabel;
  int? get topicId => _topicId;
  set topicId(int? topicId) => _topicId = topicId;
  int? get readingMaterialId => _readingMaterialId;
  set readingMaterialId(int? readingMaterialId) =>
      _readingMaterialId = readingMaterialId;
  String? get fixedAt => _fixedAt;
  set fixedAt(String? fixedAt) => _fixedAt = fixedAt;
  String? get fixSummary => _fixSummary;
  set fixSummary(String? fixSummary) => _fixSummary = fixSummary;
  Null? get createdBy => _createdBy;
  set createdBy(Null? createdBy) => _createdBy = createdBy;
  String? get updatedBy => _updatedBy;
  set updatedBy(String? updatedBy) => _updatedBy = updatedBy;
  Null? get quizLevel => _quizLevel;
  set quizLevel(Null? quizLevel) => _quizLevel = quizLevel;
  String? get questionFrom => _questionFrom;
  set questionFrom(String? questionFrom) => _questionFrom = questionFrom;
  Null? get language => _language;
  set language(Null? language) => _language = language;
  Null? get photoUrl => _photoUrl;
  set photoUrl(Null? photoUrl) => _photoUrl = photoUrl;
  Null? get photoSolutionUrl => _photoSolutionUrl;
  set photoSolutionUrl(Null? photoSolutionUrl) =>
      _photoSolutionUrl = photoSolutionUrl;
  bool? get isSaved => _isSaved;
  set isSaved(bool? isSaved) => _isSaved = isSaved;
  String? get tag => _tag;
  set tag(String? tag) => _tag = tag;
  List<Options>? get options => _options;
  set options(List<Options>? options) => _options = options;
  ReadingMaterial? get readingMaterial => _readingMaterial;
  set readingMaterial(ReadingMaterial? readingMaterial) =>
      _readingMaterial = readingMaterial;

  Questions.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _description = json['description'];
    _difficultyLevel = json['difficulty_level'];
    _topic = json['topic'];
    _isPublished = json['is_published'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _detailedSolution = json['detailed_solution'];
    _type = json['type'];
    _isMandatory = json['is_mandatory'];
    _showInFeed = json['show_in_feed'];
    _pyqLabel = json['pyq_label'];
    _topicId = json['topic_id'];
    _readingMaterialId = json['reading_material_id'];
    _fixedAt = json['fixed_at'];
    _fixSummary = json['fix_summary'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _quizLevel = json['quiz_level'];
    _questionFrom = json['question_from'];
    _language = json['language'];
    _photoUrl = json['photo_url'];
    _photoSolutionUrl = json['photo_solution_url'];
    _isSaved = json['is_saved'];
    _tag = json['tag'];
    if (json['options'] != null) {
      _options = <Options>[];
      json['options'].forEach((v) {
        _options!.add(new Options.fromJson(v));
      });
    }
    _readingMaterial = json['reading_material'] != null
        ? new ReadingMaterial.fromJson(json['reading_material'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['description'] = this._description;
    data['difficulty_level'] = this._difficultyLevel;
    data['topic'] = this._topic;
    data['is_published'] = this._isPublished;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['detailed_solution'] = this._detailedSolution;
    data['type'] = this._type;
    data['is_mandatory'] = this._isMandatory;
    data['show_in_feed'] = this._showInFeed;
    data['pyq_label'] = this._pyqLabel;
    data['topic_id'] = this._topicId;
    data['reading_material_id'] = this._readingMaterialId;
    data['fixed_at'] = this._fixedAt;
    data['fix_summary'] = this._fixSummary;
    data['created_by'] = this._createdBy;
    data['updated_by'] = this._updatedBy;
    data['quiz_level'] = this._quizLevel;
    data['question_from'] = this._questionFrom;
    data['language'] = this._language;
    data['photo_url'] = this._photoUrl;
    data['photo_solution_url'] = this._photoSolutionUrl;
    data['is_saved'] = this._isSaved;
    data['tag'] = this._tag;
    if (this._options != null) {
      data['options'] = this._options!.map((v) => v.toJson()).toList();
    }
    if (this._readingMaterial != null) {
      data['reading_material'] = this._readingMaterial!.toJson();
    }
    return data;
  }
}

class Options {
  int? _id;
  String? _description;
  int? _questionId;
  bool? _isCorrect;
  String? _createdAt;
  String? _updatedAt;
  bool? _unanswered;
  Null? _photoUrl;

  Options(
      {int? id,
      String? description,
      int? questionId,
      bool? isCorrect,
      String? createdAt,
      String? updatedAt,
      bool? unanswered,
      Null? photoUrl}) {
    if (id != null) {
      this._id = id;
    }
    if (description != null) {
      this._description = description;
    }
    if (questionId != null) {
      this._questionId = questionId;
    }
    if (isCorrect != null) {
      this._isCorrect = isCorrect;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (unanswered != null) {
      this._unanswered = unanswered;
    }
    if (photoUrl != null) {
      this._photoUrl = photoUrl;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get description => _description;
  set description(String? description) => _description = description;
  int? get questionId => _questionId;
  set questionId(int? questionId) => _questionId = questionId;
  bool? get isCorrect => _isCorrect;
  set isCorrect(bool? isCorrect) => _isCorrect = isCorrect;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  bool? get unanswered => _unanswered;
  set unanswered(bool? unanswered) => _unanswered = unanswered;
  Null? get photoUrl => _photoUrl;
  set photoUrl(Null? photoUrl) => _photoUrl = photoUrl;

  Options.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _description = json['description'];
    _questionId = json['question_id'];
    _isCorrect = json['is_correct'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _unanswered = json['unanswered'];
    _photoUrl = json['photo_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['description'] = this._description;
    data['question_id'] = this._questionId;
    data['is_correct'] = this._isCorrect;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['unanswered'] = this._unanswered;
    data['photo_url'] = this._photoUrl;
    return data;
  }
}

class ReadingMaterial {
  int? _id;
  String? _keywords;
  Null? _content;
  String? _createdAt;
  String? _updatedAt;
  List<String>? _contentSections;
  PracticeMaterial? _practiceMaterial;

  ReadingMaterial(
      {int? id,
      String? keywords,
      Null? content,
      String? createdAt,
      String? updatedAt,
      List<String>? contentSections,
      PracticeMaterial? practiceMaterial}) {
    if (id != null) {
      this._id = id;
    }
    if (keywords != null) {
      this._keywords = keywords;
    }
    if (content != null) {
      this._content = content;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (contentSections != null) {
      this._contentSections = contentSections;
    }
    if (practiceMaterial != null) {
      this._practiceMaterial = practiceMaterial;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get keywords => _keywords;
  set keywords(String? keywords) => _keywords = keywords;
  Null? get content => _content;
  set content(Null? content) => _content = content;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  List<String>? get contentSections => _contentSections;
  set contentSections(List<String>? contentSections) =>
      _contentSections = contentSections;
  PracticeMaterial? get practiceMaterial => _practiceMaterial;
  set practiceMaterial(PracticeMaterial? practiceMaterial) =>
      _practiceMaterial = practiceMaterial;

  ReadingMaterial.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _keywords = json['keywords'];
    _content = json['content'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _contentSections = json['content_sections'].cast<String>();
    _practiceMaterial = json['practice_material'] != null
        ? new PracticeMaterial.fromJson(json['practice_material'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['keywords'] = this._keywords;
    data['content'] = this._content;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['content_sections'] = this._contentSections;
    if (this._practiceMaterial != null) {
      data['practice_material'] = this._practiceMaterial!.toJson();
    }
    return data;
  }
}

class PracticeMaterial {
  List<String>? _content;
  List<String>? _keywords;

  PracticeMaterial({List<String>? content, List<String>? keywords}) {
    if (content != null) {
      this._content = content;
    }
    if (keywords != null) {
      this._keywords = keywords;
    }
  }

  List<String>? get content => _content;
  set content(List<String>? content) => _content = content;
  List<String>? get keywords => _keywords;
  set keywords(List<String>? keywords) => _keywords = keywords;

  PracticeMaterial.fromJson(Map<String, dynamic> json) {
    _content = json['content'].cast<String>();
    _keywords = json['keywords'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this._content;
    data['keywords'] = this._keywords;
    return data;
  }
}
