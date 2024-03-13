CREATE TABLE beers(
  id int(11) primary key auto_increment,
  name varchar(100),
  brewerid int(11),
  categoryid int(11),
  price float,
  stock int(11),
  alcohol float,
  version int(11),
  image blob,

  CONSTRAINT Beers_Category FOREIGN KEY (CategoryId)REFERENCES categories (Id),
  CONSTRAINT Beers_Brewery FOREIGN KEY (BrewerId)REFERENCES brewers (Id)
);