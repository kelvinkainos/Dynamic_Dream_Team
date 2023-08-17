use Kainoos_OrlaithM;


select `Client`.Name as `Name`, AVG(Project.Value) as 'Project Value'
from `Client`
JOIN Project using (ClientID)
GROUP BY `Client`.Name;