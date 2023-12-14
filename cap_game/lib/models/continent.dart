class Continent {
  const Continent(
    this.name,
    this.imagePath,
  );
  final String name;
  final String imagePath;
}

const europe = Continent('Europe', 'assets/images/europe.png');
const asia = Continent('Europe', 'assets/images/asia.png');
const northAmerica = Continent('Europe', 'assets/images/north_america.png');
const southAmerica = Continent('Europe', 'assets/images/south_america.png');
const africa = Continent('Europe', 'assets/images/africa.png');
const australia = Continent('Europe', 'assets/images/australia.png');

const continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia
];
