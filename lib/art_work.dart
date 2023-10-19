class Artwork {
  final String imageUrl;
  final String description;
  final DateTime creationDate;
  final int categoryId;

  Artwork(
      {required this.imageUrl,
      required this.description,
      required this.creationDate,
      required this.categoryId});
}

List<Artwork> artworks = [
  Artwork(
      imageUrl:
          'https://i.pinimg.com/564x/31/28/60/312860e42a67213783f31b3f6b160f10.jpg',
      description: 'Description 1',
      creationDate: DateTime.now(),
      categoryId: 1),
  Artwork(
      imageUrl:
          'https://i.pinimg.com/564x/7e/46/be/7e46be11f0324f6e33ee384bced62dcc.jpg',
      description: 'Description 1',
      creationDate: DateTime.now(),
      categoryId: 1),
  Artwork(
      imageUrl:
          'https://i.pinimg.com/564x/92/9f/29/929f29115b911c36525e1bb743c732d0.jpg',
      description: 'Description 1',
      creationDate: DateTime.now(),
      categoryId: 1),
  Artwork(
      imageUrl:
          'https://i.pinimg.com/564x/50/03/e7/5003e7dcda683936ec4c72f2de549e19.jpg',
      description: 'Description 1',
      creationDate: DateTime.now(),
      categoryId: 1),
  Artwork(
      imageUrl:
          'https://i.pinimg.com/564x/a3/92/1b/a3921b9ce6ec620898b1aa732ac60e85.jpg',
      description: 'Description 1',
      creationDate: DateTime.now(),
      categoryId: 1),
  Artwork(
      imageUrl:
          'https://i.pinimg.com/564x/ab/f6/93/abf6931a2219d89bce1a5ee9fb1d6daa.jpg',
      description: 'Description 1',
      creationDate: DateTime.now(),
      categoryId: 1),
  Artwork(
      imageUrl:
          'https://i.pinimg.com/564x/01/d4/d7/01d4d71022b4872125932fe69322f31b.jpg',
      description: 'Description 1',
      creationDate: DateTime.now(),
      categoryId: 3),
  Artwork(
      imageUrl:
          'https://i.pinimg.com/564x/ce/63/89/ce638990f9771cb735de8654c4f51ad9.jpg',
      description: 'Description 1',
      creationDate: DateTime.now(),
      categoryId: 3),
  Artwork(
      imageUrl:
          'https://i.pinimg.com/564x/96/8d/c2/968dc2d0b7de9e9e86405969b82e7817.jpg',
      description: 'Description 1',
      creationDate: DateTime.now(),
      categoryId: 2),
  Artwork(
      imageUrl:
      'https://i.pinimg.com/564x/7f/d2/b8/7fd2b8ebf56ad7ad5587de70c80bcf88.jpg',
      description: 'Description 1',
      creationDate: DateTime.now(),
      categoryId: 2),
];
