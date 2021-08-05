class CharactersListDatasource {
  final Info info;
  final List<Results> results;

  CharactersListDatasource({this.info = const Info(), this.results = const []});

  CharactersListDatasource.fromJson(Map<String, dynamic> json)
      : info = Info.fromJson(json['info']),
        results = <Results>[] {
    if (json['results'] != null) {
      json['results'].forEach((v) {
        results.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['info'] = info.toJson();
    data['results'] = results.map((v) => v.toJson()).toList();
    return data;
  }
}

class Info {
  final int count;
  final int pages;
  final String next;
  final String prev;

  const Info({this.count = 0, this.pages = 0, this.next = '', this.prev = ''});

  Info.fromJson([Map<String, dynamic> json = const {}])
      : count = json['count'] ?? 0,
        pages = json['pages'] ?? 0,
        next = json['next'] ?? '',
        prev = json['prev'] ?? '';

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['count'] = count;
    data['pages'] = pages;
    data['next'] = next;
    data['prev'] = prev;
    return data;
  }
}

class Results {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Origin origin;
  final Origin location;
  final String image;
  final List<String> episode;
  final String url;
  final String created;

  Results({
    this.id = 0,
    required this.name,
    required this.status,
    this.species = 'unknown',
    this.type = '',
    this.gender = '',
    this.origin = Origin.empty,
    this.location = Origin.empty,
    required this.image,
    this.episode = const [],
    required this.url,
    this.created = '',
  });

  Results.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? 0,
        name = json['name'] ?? '',
        status = json['status'] ?? '',
        species = json['species'] ?? '',
        type = json['type'] ?? '',
        gender = json['gender'] ?? '',
        origin = Origin.fromJson(json['origin']),
        location = Origin.fromJson(json['location']),
        image = json['image'] ?? '',
        episode = List<String>.from(json['episode'] ?? const []),
        url = json['url'] ?? '',
        created = json['created'] ?? '';

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['species'] = species;
    data['type'] = type;
    data['gender'] = gender;
    data['origin'] = origin.toJson();
    data['location'] = location.toJson();
    data['image'] = image;
    data['episode'] = episode;
    data['url'] = url;
    data['created'] = created;
    return data;
  }
}

class Origin {
  static const empty = Origin(name: '', url: '');
  final String name;
  final String url;

  const Origin({required this.name, required this.url});

  Origin.fromJson([Map<String, dynamic> json = const {}])
      : name = json['name'] ?? '',
        url = json['url'] ?? '';

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
