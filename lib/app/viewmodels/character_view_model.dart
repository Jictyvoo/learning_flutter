class CharacterViewModel {
  static const empty = CharacterViewModel(imageURL: '', name: '');

  final String imageURL;
  final String name;
  final String status;
  final String species;
  final String lastKnownLocation;
  final String firstSeenIn;

  const CharacterViewModel({
    required this.imageURL,
    required this.name,
    this.status = '',
    this.species = '',
    this.lastKnownLocation = '',
    this.firstSeenIn = '',
  });
}
