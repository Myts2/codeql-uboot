import cpp

// from Function f, Function j
// where f.getName() = "memcpy" and j.calls(f) 
// select j

// from Function f,Call c
// where c.getTarget() = f and f.getName() = "memcpy"
// select c.getLocation()

from Call c
where c.getTarget().getName() = "memcpy"
select c.getLocation()