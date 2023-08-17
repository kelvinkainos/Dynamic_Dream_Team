use Kainoos_OrlaithM;


select `Client`.Name as `Name`, MAX(Project.Value) as 'Project Value'
from `Client`
JOIN Project using (ClientID)
GROUP BY `Client`.Name;

