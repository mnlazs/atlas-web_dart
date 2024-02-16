int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Calcula los puntos para el equipo A
  int pointsA = (teamA['Free throws'] ?? 0) * 1 + 
                (teamA['2 pointers'] ?? 0) * 2 + 
                (teamA['3 pointers'] ?? 0) * 3;

  // Calcula los puntos para el equipo B
  int pointsB = (teamB['Free throws'] ?? 0) * 1 + 
                (teamB['2 pointers'] ?? 0) * 2 + 
                (teamB['3 pointers'] ?? 0) * 3;

  // Compara los puntos y retorna el resultado
  if (pointsA > pointsB) {
    return 1; // Equipo A gana
  } else if (pointsA < pointsB) {
    return 2; // Equipo B gana
  } else {
    return 0; // Empate
  }
}

void main() {
  var teamA = {'Free throws': 23, '2 pointers': 32, '3 pointers': 16};
  var teamB = {'Free throws': 31, '2 pointers': 27, '3 pointers': 13};

  print(whoWins(teamA, teamB));
}
