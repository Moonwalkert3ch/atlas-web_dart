int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // calculates teamA points
  int teamAPoints = teamA['Free Throws']! * 1 + teamA['2 pointers']! * 2 + teamA['3 pointers']! * 3;

  // calculates teamB points
  int teamBPoints = teamB['Free Throws']! * 1 + teamB['2 pointers']! * 2 + teamB['3 pointers']! * 3;

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
