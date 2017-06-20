select Continent, count('Code')
from country
where GovernmentForm = 'Constitutional Monarchy'
group by Continent