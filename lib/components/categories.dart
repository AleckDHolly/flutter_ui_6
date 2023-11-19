class Categories {
  String category;
  String title;
  String subtitle;
  String image;

  Categories({
    required this.category,
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

enum MainCategories { events, restaurants, parties }

List<Categories> events = [
  Categories(
      category: "Event 1",
      title: "We outside",
      subtitle: "lorem Ipsum",
      image: "images/events/event1.jpg"),
  Categories(
      category: "Event 2",
      title: "Bourgeoisie",
      subtitle: "lorem Ipsum",
      image: "images/events/event2.jpg"),
  Categories(
      category: "Event 3",
      title: "Wedding",
      subtitle: "lorem Ipsum",
      image: "images/events/event3.jpg"),
  Categories(
      category: "Event 4",
      title: "Birthday",
      subtitle: "lorem Ipsum",
      image: "images/events/event4.jpg"),
  Categories(
      category: "Event 5",
      title: "Chill concert",
      subtitle: "lorem Ipsum",
      image: "images/events/event5.jpg"),
];

List<Categories> restaurants = [
  Categories(
      category: "Restaurant 1",
      title: "Cozy",
      subtitle: "lorem Ipsum",
      image: "images/restaurants/restaurant1.jpg"),
  Categories(
      category: "Restaurant 2",
      title: "Nice Bar",
      subtitle: "lorem Ipsum",
      image: "images/restaurants/restaurant2.jpg"),
  Categories(
      category: "Restaurant 3",
      title: "High class",
      subtitle: "lorem Ipsum",
      image: "images/restaurants/restaurant3.jpg"),
  Categories(
      category: "Restaurant 4",
      title: "Chinese",
      subtitle: "lorem Ipsum",
      image: "images/restaurants/restaurant4.jpg"),
  Categories(
      category: "Restaurant 5",
      title: "Family Time",
      subtitle: "lorem Ipsum",
      image: "images/restaurants/restaurant5.jpg"),
];

List<Categories> parties = [
  Categories(
      category: "Party 1",
      title: "Neon lights",
      subtitle: "lorem Ipsum",
      image: "images/parties/party1.jpg"),
  Categories(
      category: "Party 2",
      title: "Master DJ",
      subtitle: "lorem Ipsum",
      image: "images/parties/party2.jpg"),
  Categories(
      category: "Party 3",
      title: "Club Vibes",
      subtitle: "lorem Ipsum",
      image: "images/parties/party3.jpg"),
  Categories(
      category: "Party 4",
      title: "Underground",
      subtitle: "lorem Ipsum",
      image: "images/parties/party4.jpg"),
  Categories(
      category: "Party 5",
      title: "Dark Inside",
      subtitle: "lorem Ipsum",
      image: "images/parties/party5.jpg"),
];
