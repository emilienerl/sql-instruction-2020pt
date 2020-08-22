Select c.name, c.city, s.name
	from customer as c
    Join state as s
		on c.State = s.Code