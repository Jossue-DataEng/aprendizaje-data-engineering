-- Ejercicios de JOIN - Día 2
-- Base de datos: Partidos de fútbol (SQLZoo)

-- Ejercicio 1: Jugadores alemanes que anotaron
SELECT matchid, player FROM goal WHERE teamid = 'GER';

-- Ejercicio 3: JOIN entre tablas 'game' y 'goal'
SELECT player, teamid, stadium, mdate
FROM game JOIN goal ON (game.id = goal.matchid)
WHERE teamid = 'GER';

-- Ejercicio 8: JOIN con filtro de tiempo
SELECT player, teamid, coach, gtime
FROM goal JOIN eteam ON (goal.teamid = eteam.id)
WHERE gtime <= 10;