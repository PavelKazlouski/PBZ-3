
match (n:Element) return n

match (m:alloy {name:"алюмель"})-[:share]->(n:Element) return n

match (m:alloy) where m.melting_temperature>1000

match (m:alloy {name:"латунь"})-[:share]->(n:Element)-[:`принадлежит']->(g:metals) return g

match (m:metals)<-[]-(n) return m,n

match (m:alloy-[]->(:Element{name:"алюминий"}) return m 

match (m:alloy)-[]->(:Element{name:"медь"}) where transcalency>100 return m

match (m:alloy)-[:share{number:"1"}]->(n:Element) return m,n

match (m:alloy)-[]->(n:Element)-[:принадлежит]->(:metals{name:"Легкие металлы"}}) where n.chemNumber>25 return n,m

match (m:alloy)-[:share{number>50}]->(n:Element{name:"алюминий"}) return m