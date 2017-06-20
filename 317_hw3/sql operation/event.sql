delimiter |
CREATE EVENT e_min1
     ON SCHEDULE every 1 second
    DO
        begin
        update country inner join newcp on country.code = newcp.code
		set country.population = newcp.population;
        end;
