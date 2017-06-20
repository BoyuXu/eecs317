delimiter $$
create trigger populationchange
after update on country
for each row
begin
	if (new.Population < old.Population * 0.9) then
    update newcp
    set newcp.Population = 0.95*Population 
    where newcp.continent = new.continent and newcp.name<>new.name; 
	update newcp
    set newcp.Population = new.population 
	where newcp.name = new.name;
    end if;
end;
