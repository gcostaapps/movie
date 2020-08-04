import 'dart:core';

import 'actor.dart';

class Movie {
  int id;
  String name, imageUrl, coverUrl, summary, director;
  List<String> genres;
  double rate;
  List<Actor> cast;

  Movie({
    this.id,
    this.name,
    this.imageUrl,
    this.coverUrl,
    this.summary,
    this.director,
    this.genres,
    this.rate,
    this.cast,
  });
}

List<Movie> movies = [
  Movie(
      id: 1,
      name: "Greyhound",
      imageUrl: "assets/movies/greyhound.jpg",
      coverUrl: "assets/movies/greyhound_cover.jpg",
      summary:
          "Early in World War II, an inexperienced U.S. Navy captain must lead an Allied convoy being stalked by Nazi U-boat wolfpacks.",
      director: "Aaron Schneider",
      genres: ["Action", "Drama", "History"],
      rate: 7.1,
      cast: [
        Actor(name: "Tom Hanks", imageUrl: "assets/cast/tom_hanks.jpg"),
        Actor(
            name: "Stephen Graham", imageUrl: "assets/cast/stephen_graham.jpg"),
        Actor(
            name: "Elisabeth Shue", imageUrl: "assets/cast/elisabeth_shue.jpg"),
      ]),
  Movie(
      id: 2,
      name: "Joker",
      imageUrl: "assets/movies/joker.jpg",
      coverUrl: "assets/movies/joker_cover.jpg",
      summary:
          "In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.",
      director: "Todd Phillips",
      genres: ["Crime", "Drama", "Thriller"],
      rate: 8.5,
      cast: [
        Actor(
            name: "Joaquin Phoenix",
            imageUrl: "assets/cast/joaquin_phoenix.jpg"),
        Actor(
            name: "Robert De Niro", imageUrl: "assets/cast/robert_de_niro.jpg"),
        Actor(name: "Zazie Beetz", imageUrl: "assets/cast/zazie_beetz.jpg"),
      ]),
  Movie(
      id: 3,
      name: "The Old Guard",
      imageUrl: "assets/movies/the_old_guard.jpg",
      coverUrl: "assets/movies/the_old_guard_cover.jpg",
      summary:
          "A covert team of immortal mercenaries are suddenly exposed and must now fight to keep their identity a secret just as an unexpected new member is discovered.",
      director: "Gina Prince-Bythewood",
      genres: ["Action", "Adventure", "Fantasy"],
      rate: 6.7,
      cast: [
        Actor(
            name: "Charlize Theron",
            imageUrl: "assets/cast/charlize_theron.jpg"),
        Actor(name: "Kiki Layne", imageUrl: "assets/cast/kiki_layne.jpg"),
        Actor(
            name: "Matthias Schoenaerts",
            imageUrl: "assets/cast/matthias_schoenaerts.jpg"),
      ]),
  Movie(
      id: 4,
      name: "Hamilton",
      imageUrl: "assets/movies/hamilton.jpg",
      coverUrl: "assets/movies/hamilton_cover.jpg",
      summary:
          "The real life of one of America's foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton. Captured live on Broadway from the Richard Rodgers Theater with the original Broadway cast.",
      director: "Thomas Kail",
      genres: ["Biography", "Drama", "History"],
      rate: 8.9,
      cast: [
        Actor(name: "Daveed Diggs", imageUrl: "assets/cast/daveed_diggs.jpg"),
        Actor(
            name: "Jonathan Groff", imageUrl: "assets/cast/jonathan_groff.jpg"),
        Actor(
            name: "Leslie Odom Jr.",
            imageUrl: "assets/cast/leslie_odom_jr.jpg"),
      ]),
];
