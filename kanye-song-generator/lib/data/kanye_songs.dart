class Song {
  final String title;
  final String album;
  final String year;
  final String features;

  const Song({
    required this.title,
    required this.album,
    required this.year,
    this.features = '',
  });
}

const List<Song> kanyeSongs = [
  Song(title: "Stronger", album: "Graduation", year: "2007"),
  Song(title: "POWER", album: "My Beautiful Dark Twisted Fantasy", year: "2010"),
  Song(title: "Heartless", album: "808s & Heartbreak", year: "2008"),
  Song(title: "Runaway", album: "My Beautiful Dark Twisted Fantasy", year: "2010", features: "Pusha T"),
  Song(title: "Gold Digger", album: "Late Registration", year: "2005", features: "Jamie Foxx"),
  Song(title: "Niggas in Paris", album: "Watch The Throne", year: "2011", features: "Jay-Z"),
  Song(title: "Bound 2", album: "Yeezus", year: "2013"),
  Song(title: "Flashing Lights", album: "Graduation", year: "2007", features: "Dwele"),
  Song(title: "Touch the Sky", album: "Late Registration", year: "2005", features: "Lupe Fiasco"),
  Song(title: "Father Stretch My Hands Pt. 1", album: "The Life of Pablo", year: "2016", features: "Kid Cudi"),
  Song(title: "Can't Tell Me Nothing", album: "Graduation", year: "2007"),
  Song(title: "All of the Lights", album: "My Beautiful Dark Twisted Fantasy", year: "2010", features: "Rihanna, Kid Cudi"),
  Song(title: "Famous", album: "The Life of Pablo", year: "2016", features: "Rihanna"),
  Song(title: "Ghost Town", album: "ye", year: "2018", features: "PARTYNEXTDOOR, PRT, Kid Cudi"),
  Song(title: "Monster", album: "My Beautiful Dark Twisted Fantasy", year: "2010", features: "Jay-Z, Rick Ross, Nicki Minaj, Bon Iver"),
  Song(title: "Through the Wire", album: "The College Dropout", year: "2004"),
  Song(title: "Jesus Walks", album: "The College Dropout", year: "2004"),
  Song(title: "Black Skinhead", album: "Yeezus", year: "2013"),
  Song(title: "Ultralight Beam", album: "The Life of Pablo", year: "2016", features: "Chance the Rapper, Kirk Franklin"),
  Song(title: "Praise God", album: "Donda", year: "2021", features: "Travis Scott, Baby Keem"),
  Song(title: "Off The Grid", album: "Donda", year: "2021", features: "Playboi Carti, Fivio Foreign"),
  Song(title: "Devil in a New Dress", album: "My Beautiful Dark Twisted Fantasy", year: "2010", features: "Rick Ross"),
  Song(title: "Waves", album: "The Life of Pablo", year: "2016", features: "Chris Brown"),
  Song(title: "Mercy", album: "Cruel Summer", year: "2012", features: "Big Sean, Pusha T, 2 Chainz"),
  Song(title: "Blood on the Leaves", album: "Yeezus", year: "2013"),
  Song(title: "Good Life", album: "Graduation", year: "2007", features: "T-Pain"),
  Song(title: "Love Lockdown", album: "808s & Heartbreak", year: "2008"),
  Song(title: "Reborn", album: "KIDS SEE GHOSTS", year: "2018", features: "Kid Cudi"),
  Song(title: "Hurricane", album: "Donda", year: "2021", features: "The Weeknd, Lil Baby"),
  Song(title: "CARNIVAL", album: "VULTURES 1", year: "2024", features: "Ty Dolla $ign, Playboi Carti, Rich The Kid"),
  Song(title: "Violent Crimes", album: "ye", year: "2018", features: "070 Shake, Ty Dolla $ign"),
  Song(title: "Otis", album: "Watch The Throne", year: "2011", features: "Jay-Z, Otis Redding"),
  Song(title: "Hey Mama", album: "Late Registration", year: "2005"),
  Song(title: "Street Lights", album: "808s & Heartbreak", year: "2008"),
  Song(title: "Diamonds From Sierra Leone", album: "Late Registration", year: "2005", features: "Jay-Z"),
  Song(title: "No Church in the Wild", album: "Watch The Throne", year: "2011", features: "Jay-Z, Frank Ocean"),
  Song(title: "New Slaves", album: "Yeezus", year: "2013"),
  Song(title: "No More Parties in LA", album: "The Life of Pablo", year: "2016", features: "Kendrick Lamar"),
  Song(title: "Dark Fantasy", album: "My Beautiful Dark Twisted Fantasy", year: "2010"),
  Song(title: "All Falls Down", album: "The College Dropout", year: "2004", features: "Syleena Johnson"),
  // Die Datenbank kann flexibel auf 100 erweitert werden
];