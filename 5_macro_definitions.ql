import cpp

from Macro m
// where m.getName() in ["ntohs","ntohl","ntohll"]
where m.getName().regexpMatch("nto.*")
select m