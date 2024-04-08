use lahmansbaseballdb;

SELECT name,teamID from teams WHERE name='Chicago Cubs';

SELECT 
	people.playerID,concat(people.nameFirst," ",people.nameLast) AS player_name, 
    salaries.salary, salaries.teamID, salaries.yearID
	#,teams.name AS Team_Name 
FROM people
Join salaries ON people.playerID=salaries.playerID
WHERE salaries.yearID='2000' AND teamID= 'CHN'
ORDER BY salary DESC Limit 1 ;
#Join teams ON teams.teamID=salaries.teamID;

SELECT 
	teams.teamRANK, teams.teamID, teams.yearID, teams.lgID, teams.divID
FROM 
	teams
WHERE 
	teams.yearId = 2000 AND lgID = 'NL' #AND teams.divID = 'c'
ORDER by teams.teamRANK ASC
LIMIT
	10;
    
Select 
	pitching.playerID, pitching.yearID, pitching.SO, pitching.G,
    people.playerID, concat(people.nameFirst," " ,people.nameLast) AS Name,
    pitching.SO/pitching.G AS "SO/G"
FROM
	Pitching
Join people ON people.playerID=pitching.playerID
Where
	pitching.teamID= 'CHN' AND yearID = '2000'
Order By
	SO/G DESC;
    
    