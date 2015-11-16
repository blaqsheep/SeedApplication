drop table if exists Landlord;
drop table if exists Area;
drop table if exists Location;

create table Location (id int not null primary key auto_increment,
						name varchar(255),
						postal_code varchar(255)
						);

	create table Area (id int not null primary key auto_increment,
						name varchar(255),
						street_name varchar(255),
						location_id int not null,
						foreign key(location_id) references Location(id)
						);

create table Landlord (id int not null primary key auto_increment,
						name varchar(255),
						rooms int,
						tel int,
						location_id int not null,
						area_id int not null,
						foreign key (location_id) references Location(id),
						foreign key (area_id) references Area(id)
						);