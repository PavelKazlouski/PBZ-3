create 
(Mn :Element{name:"марганец", chemNumber:"25"}),
(Ai :Element{name:"алюминий", chemNumber:"13"}),
(Si :Element{name:"кремний", chemNumber:"14"}),
(Fe :Element{name:"железо", chemNumber:"26"}),
(Ni :Element{name:"никель", chemNumber:"28"}),
(Cu :Element{name:"медь", chemNumber:"29"}),
(Sn :Element{name:"олово", chemNumber:"50"}),
(Zn :Element{name:"цинк", chemNumber:"30"}),
(Cr :Element{name:"хром", chemNumber:"24"}),

(alumel :alloy{name:"алюмель", melting_temperature:"1400", transcalency:"18"}),
(tin_bronze :alloy{name:"бронза оловянная", melting_temperature:"995", transcalency:"71"}),
(brass :alloy{name:"латунь", melting_temperature:"880", transcalency:"121"}),
(nichrome :alloy{name:"нихром", melting_temperature:"1400", transcalency:"11"}),
(silumin :alloy{name:"силумин", melting_temperature:"670", transcalency:"210"}),
(cupronickel :alloy{name:"мельхиор", melting_temperature:"1170", transcalency:"30"}),


(alumel)-[:share{number:"2"}]->(Mn),
(alumel)-[:share{number:"2"}]->(Ai),
(alumel)-[:share{number:"1"}]->(Si),
(alumel)-[:share{number:"1"}]->(Fe),
(alumel)-[:share{number:"94"}]->(Ni),

(tin_bronze)-[:share{number:"89"}]->(Cu),
(tin_bronze)-[:share{number:"11"}]->(Sn),

(brass)-[:share{number:"57"}]->(Cu),
(brass)-[:share{number:"43"}]->(Zn),

(nichrome)-[:share{number:"68"}]->(Ni),
(nichrome)-[:share{number:"1"}]->(Mn),
(nichrome)-[:share{number:"15"}]->(Cr),
(nichrome)-[:share{number:"16"}]->(Fe),

(silumin)-[:share{number:"85"}]->(Ai),
(silumin)-[:share{number:"15"}]->(Si),

(cupronickel)-[:share{number:"20"}]->(Ni),
(cupronickel)-[:share{number:"80"}]->(Cu),

(transitionMetals :metals{name:"Переходные металлы"}),
(lightMetals :metals{name:"Легкие металлы"}),
(semiMetals :metals{name:"Полуметаллы"}),

(Mn)-[:принадлежит]->(transitionMetals),
(Ai)-[:принадлежит]->(lightMetals),
(Si)-[:принадлежит]->(semiMetals),
(Fe)-[:принадлежит]->(transitionMetals),
(Ni)-[:принадлежит]->(transitionMetals),
(Cu)-[:принадлежит]->(transitionMetals),
(Sn)-[:принадлежит]->(lightMetals),
(Zn)-[:принадлежит]->(transitionMetals),
(Cr)-[:принадлежит]->(transitionMetals)
