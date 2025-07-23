-- phpMyAdmin SQL Dump
-- version 2.9.1.1-Debian-4
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Juillet 22, 2025 at 12:47 AM
-- Server version: 5.0.32
-- PHP Version: 5.2.0-8+etch7
-- 
-- Database: `usds_`
-- 

-- --------------------------------------------------------

-- Creation de la base de donnees

DROP DATABASE IF EXISTS movies;
CREATE DATABASE movies;
USE movies;

-- Table genres
CREATE TABLE genres (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

INSERT INTO genres (name) VALUES
('Action'), ('Romance'), ('Western'), ('Sci-Fi'),
('Comedy'), ('Drama'), ('Horror'), ('Thriller'),
('Animation'), ('Documentary');

-- Table movies
CREATE TABLE movies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    summary TEXT,
    duration INT,
    genre_id INT,
    producer VARCHAR(100),
    year YEAR,
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);

INSERT INTO movies (title, summary, duration, genre_id, producer, year) VALUES
('The Good, the Bad and the Ugly', 'Western classic', 178, 3, 'Tartan Movies', 1966),
('Inception', 'Dream thieves', 148, 4, 'Warner Bros', 2010),
('Tardis Adventures', 'Time travel', 125, 4, 'BBC Productions', 2005),
('Romance in Paris', 'Love story', 122, 2, 'Lionsgate UK', 2015),
('Action Hero', 'Explosions everywhere', 95, 1, 'Tartan Movies', 2020),
('The Longest Movie Ever', 'Epic journey', 432, 6, 'Long Productions', 1999),
('eXistenZ', 'Virtual reality', 97, 4, 'Dimension Films', 1999),
('Revolution', 'Political thriller', NULL, 5, 'Indie Productions', 2012),
('Last Tardigrade', 'Sci-fi horror', 88, 7, 'Creature Features', 2021),
('Western Sunset', 'Cowboy drama', 0, 3, 'Lionsgate UK', 1985),
('Retribution', 'Revenge plot', 105, 1, 'Tartan Movies', 2008),
('The Matrix', 'Virtual reality', 136, 4, 'Warner Bros', 1999),
('Forrest Gump', 'Life story', 142, 6, 'Paramount', 1994),
('Titanic', 'Ship sinking', 194, 2, '20th Century Fox', 1997),
('The Shawshank Redemption', 'Prison escape', 142, 6, 'Columbia Pictures', 1994),
('Pulp Fiction', 'Crime stories', 154, 1, 'Miramax', 1994),
('The Dark Knight', 'Batman vs Joker', 152, 1, 'Warner Bros', 2008),
('Fight Club', 'Underground fighting', 139, 7, '20th Century Fox', 1999),
('Inception 2', 'More dream layers', 148, 4, 'Warner Bros', 2025),
('Interstellar', 'Space travel', 169, 4, 'Paramount', 2014),
('The Godfather', 'Mafia story', 175, 6, 'Paramount', 1972),
('Gladiator', 'Roman general', 155, 1, 'Universal', 2000),
('The Silence of the Lambs', 'FBI and cannibal', 118, 7, 'Orion', 1991),
('Saving Private Ryan', 'WWII mission', 169, 1, 'DreamWorks', 1998),
('The Green Mile', 'Prison with magic', 189, 6, 'Warner Bros', 1999),
('Back to the Future', 'Time travel', 116, 4, 'Universal', 1985),
('The Avengers', 'Superhero team', 143, 1, 'Marvel', 2012),
('Avengers: Endgame', 'Final battle', 181, 1, 'Marvel', 2019),
('The Lion King', 'Animated lion', 88, 9, 'Disney', 1994),
('Aladdin', 'Street rat becomes prince', 90, 9, 'Disney', 1992),
('Beauty and the Beast', 'Tale as old as time', 84, 9, 'Disney', 1991),
('Mulan', 'Woman warrior', 120, 1, 'Disney', 1998),
('Toy Story', 'Toys come to life', 81, 9, 'Pixar', 1995),
('Toy Story 2', 'Toys rescue', 92, 9, 'Pixar', 1999),
('Toy Story 3', 'Toys in daycare', 103, 9, 'Pixar', 2010),
('Coco', 'Music in afterlife', 105, 9, 'Pixar', 2017),
('Up', 'Flying house', 96, 9, 'Pixar', 2009),
('The Incredibles', 'Superhero family', 115, 1, 'Pixar', 2004),
('Finding Nemo', 'Fish searching', 100, 9, 'Pixar', 2003),
('Finding Dory', 'Fish memory', 97, 9, 'Pixar', 2016),
('Ratatouille', 'Rat chef', 111, 9, 'Pixar', 2007),
('WALL-E', 'Robot cleanup', 98, 4, 'Pixar', 2008),
('Inside Out', 'Emotions in head', 95, 9, 'Pixar', 2015),
('Brave', 'Scottish princess', 93, 9, 'Pixar', 2012),
('Monsters, Inc.', 'Monsters in closet', 92, 9, 'Pixar', 2001),
('Monsters University', 'Monsters college', 104, 9, 'Pixar', 2013),
('Cars', 'Talking cars', 117, 9, 'Pixar', 2006),
('Cars 2', 'Cars spy', 106, 9, 'Pixar', 2011),
('Cars 3', 'Cars retirement', 109, 9, 'Pixar', 2017),
('The Terminator', 'Killer robot', 107, 4, 'Orion', 1984),
('Terminator 2: Judgment Day', 'Robot vs robot', 137, 4, 'TriStar', 1991),
('Terminator 3: Rise of the Machines', 'More robots', 109, 4, 'Warner Bros', 2003),
('Terminator: Dark Fate', 'New timeline', 128, 4, 'Paramount', 2019),
('Predator', 'Alien hunter', 107, 4, '20th Century Fox', 1987),
('Alien', 'Space horror', 117, 7, '20th Century Fox', 1979),
('Aliens', 'Colonial marines', 137, 7, '20th Century Fox', 1986),
('Alien 3', 'Prison planet', 114, 7, '20th Century Fox', 1992),
('Alien: Resurrection', 'Cloned alien', 109, 7, '20th Century Fox', 1997),
('Prometheus', 'Alien prequel', 124, 4, '20th Century Fox', 2012),
('Alien: Covenant', 'Engineers and aliens', 122, 7, '20th Century Fox', 2017),
('The Martian', 'Stranded on Mars', 144, 4, '20th Century Fox', 2015),
('Gravity', 'Space survival', 91, 4, 'Warner Bros', 2013),
('Arrival', 'Aliens arrive', 116, 4, 'Paramount', 2016),
('Blade Runner', 'Replicant hunter', 117, 4, 'Warner Bros', 1982),
('Blade Runner 2049', 'Replicant mystery', 164, 4, 'Warner Bros', 2017),
('Dune', 'Desert planet', 155, 4, 'Warner Bros', 2021),
('Star Wars: Episode IV - A New Hope', 'Galactic rebellion', 121, 4, 'Lucasfilm', 1977),
('Star Wars: Episode V - The Empire Strikes Back', 'Rebel defeat', 124, 4, 'Lucasfilm', 1980),
('Star Wars: Episode VI - Return of the Jedi', 'Final confrontation', 131, 4, 'Lucasfilm', 1983),
('Star Wars: Episode I - The Phantom Menace', 'Trade dispute', 136, 4, 'Lucasfilm', 1999),
('Star Wars: Episode II - Attack of the Clones', 'Clone army', 142, 4, 'Lucasfilm', 2002),
('Star Wars: Episode III - Revenge of the Sith', 'Rise of Vader', 140, 4, 'Lucasfilm', 2005),
('Rogue One: A Star Wars Story', 'Death Star plans', 133, 4, 'Lucasfilm', 2016),
('Solo: A Star Wars Story', 'Han Solo origin', 135, 4, 'Lucasfilm', 2018),
('The Exorcist', 'Demon possession', 122, 7, 'Warner Bros', 1973),
('Halloween', 'Masked killer', 91, 7, 'Compass International', 1978),
('A Nightmare on Elm Street', 'Dream killer', 91, 7, 'New Line', 1984),
('Friday the 13th', 'Camp killer', 95, 7, 'Paramount', 1980),
('Scream', 'Meta horror', 111, 7, 'Dimension', 1996),
('Get Out', 'Social horror', 104, 7, 'Universal', 2017),
('Hereditary', 'Family curse', 127, 7, 'A24', 2018),
('Midsommar', 'Cult horror', 147, 7, 'A24', 2019),
('The Witch', 'Colonial witch', 92, 7, 'A24', 2015),
('It', 'Evil clown', 135, 7, 'New Line', 2017),
('It Chapter Two', 'Adult losers club', 169, 7, 'New Line', 2019),
('The Conjuring', 'Haunted house', 112, 7, 'New Line', 2013),
('Annabelle', 'Haunted doll', 99, 7, 'New Line', 2014),
('The Nun', 'Demon nun', 96, 7, 'New Line', 2018),
('La Llorona', 'Weeping woman', 93, 7, 'New Line', 2019),
('A Quiet Place', 'Silent monsters', 90, 7, 'Paramount', 2018),
('Bird Box', 'Blindfolded survival', 124, 7, 'Netflix', 2018),
('The Platform', 'Vertical prison', 94, 7, 'Netflix', 2019),
('Hush', 'Deaf writer attacked', 81, 7, 'Netflix', 2016),
('Gerald''s Game', 'Handcuffed to bed', 103, 7, 'Netflix', 2017),
('1922', 'Murder confession', 102, 7, 'Netflix', 2017),
('In the Tall Grass', 'Mysterious field', 101, 7, 'Netflix', 2019),
('Doctor Sleep', 'Shining sequel', 152, 7, 'Warner Bros', 2019),
('The Shining', 'Hotel horror', 146, 7, 'Warner Bros', 1980);

-- Table subscriptions
CREATE TABLE subscriptions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(5,2) NOT NULL
);

INSERT INTO subscriptions (name, price) VALUES
('Basic', 9.99), ('Premium', 19.99), ('Gold', 29.99), ('Platinum', 49.99);

-- Table rooms
CREATE TABLE rooms (
    number INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    seats INT NOT NULL,
    floor INT NOT NULL
);

INSERT INTO rooms (number, name, seats, floor) VALUES
(101, 'Grand Hall', 150, 1),
(201, 'IMAX Room', 200, 2),
(301, 'VIP Lounge', 50, 3),
(102, 'Small Room', 30, 1),
(202, '3D Room', 120, 2),
(302, 'Director''s Club', 40, 3),
(103, 'Standard', 80, 1),
(203, 'Atmos Room', 100, 2),
(303, 'Luxury Box', 20, 3);

-- Table profiles
CREATE TABLE profiles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    lastname VARCHAR(50) NOT NULL,
    firstname VARCHAR(50) NOT NULL,
    birthdate DATE NOT NULL
);

INSERT INTO profiles (lastname, firstname, birthdate) VALUES
('Smith', 'John', '2000-05-15'),
('Johnson', 'Emma', '1999-12-03'),
('Williams', 'Liam', '2002-02-28'),
('Brown', 'Olivia', '2001-07-19'),
('Davis', 'Noah', '2003-11-30'),
('Miller', 'Ava', '1998-08-12'),
('Wilson', 'Isabella', '2004-01-22'),
('Moore', 'Sophia', '1997-03-07'),
('Taylor', 'Mia', '2005-09-18'),
('Anderson', 'Charlotte', '1996-06-25'),
('Thomas', 'Amelia', '2006-04-05'),
('Jackson', 'Harper', '1995-10-11'),
('White', 'Evelyn', '2007-07-30'),
('Harris', 'Abigail', '1994-12-08'),
('Martin', 'Emily', '2008-02-14'),
('Thompson', 'Elizabeth', '1993-11-19'),
('Garcia', 'Sofia', '2009-05-23'),
('Martinez', 'Ella', '1992-09-01'),
('Robinson', 'Scarlett', '2010-08-17'),
('Clark', 'Grace', '1991-04-29'),
('Rodriguez', 'Chloe', '2011-03-13'),
('Lewis', 'Victoria', '1990-10-31'),
('Lee', 'Riley', '2012-06-09'),
('Walker', 'Aria', '1989-07-04'),
('Hall', 'Lily', '2013-01-26'),
('Allen', 'Hannah', '1988-08-21'),
('Young', 'Layla', '2014-12-15'),
('Hernandez', 'Zoey', '1987-05-02'),
('King', 'Penelope', '2015-09-24'),
('Wright', 'Nora', '1986-02-27'),
('Lopez', 'Mila', '2016-10-10'),
('Hill', 'Camila', '1985-03-16'),
('Scott', 'Aubrey', '2017-11-05'),
('Green', 'Savannah', '1984-06-28'),
('Adams', 'Claire', '2018-04-20'),
('Baker', 'Eleanor', '1983-01-09'),
('Gonzalez', 'Stella', '2019-07-12'),
('Nelson', 'Hazel', '1982-12-01'),
('Carter', 'Violet', '2020-08-03'),
('Mitchell', 'Aurora', '1981-09-14'),
('Perez', 'Bella', '2021-05-06'),
('Roberts', 'Lucy', '1980-10-25'),
('Turner', 'Anna', '2022-02-11'),
('Phillips', 'Samantha', '1979-11-17'),
('Campbell', 'Leah', '2023-03-08'),
('Parker', 'Caroline', '1978-04-19'),
('Evans', 'Natalie', '2024-06-21'),
('Edwards', 'Genesis', '1977-07-22'),
('Collins', 'Emilia', '2025-01-13'),
('Stewart', 'Kennedy', '1976-08-15'),
('Sanchez', 'Valentina', '2026-09-26'),
('Morris', 'Ivy', '1975-03-04'),
('Rogers', 'Ariana', '2027-12-07'),
('Reed', 'Piper', '1974-05-18'),
('Cook', 'Maya', '2028-10-29'),
('Morgan', 'Elena', '1973-02-02'),
('Bell', 'Naomi', '2029-11-30'),
('Murphy', 'Paisley', '1972-09-11'),
('Bailey', 'Eliana', '2030-04-01'),
('Rivera', 'Julia', '1971-06-12'),
('Cooper', 'Athena', '2031-07-23'),
('Richardson', 'Kinsley', '1970-01-24'),
('Cox', 'Mary', '2032-08-14'),
('Howard', 'Margaret', '1969-12-05'),
('Ward', 'Lillian', '2033-05-16'),
('Torres', 'Allison', '1968-10-27'),
('Peterson', 'Sadie', '2034-03-18'),
('Gray', 'Alexa', '1967-07-28'),
('Ramirez', 'Eden', '2035-02-09'),
('James', 'Ximena', '1966-04-10'),
('Watson', 'Nova', '2036-11-21'),
('Brooks', 'Serenity', '1965-08-02'),
('Kelly', 'Peyton', '2037-06-13'),
('Sanders', 'Brielle', '1964-03-15'),
('Price', 'Rylee', '2038-09-24'),
('Bennett', 'Sydney', '1963-01-26'),
('Wood', 'Jade', '2039-12-17'),
('Barnes', 'Liliana', '1962-05-28'),
('Ross', 'Mackenzie', '2040-10-19'),
('Henderson', 'Kimberly', '1961-07-30'),
('Coleman', 'Faith', '2041-04-11'),
('Jenkins', 'Summer', '1960-11-12'),
('Perry', 'Jasmine', '2042-02-22'),
('Powell', 'Ruby', '1959-09-03'),
('Long', 'Eva', '2043-08-04'),
('Patterson', 'Nicole', '1958-06-15'),
('Hughes', 'Alice', '2044-01-05'),
('Flores', 'Gianna', '1957-12-16'),
('Washington', 'Isla', '2045-07-27'),
('Butler', 'Quinn', '1956-10-18'),
('Simmons', 'Khloe', '2046-05-29'),
('Foster', 'Delilah', '1955-03-10'),
('Gonzales', 'Sophie', '2047-11-20'),
('Bryant', 'Cora', '1954-02-21'),
('Alexander', 'Kaylee', '2048-09-01'),
('Russell', 'Lydia', '1953-08-12'),
('Griffin', 'Willow', '2049-04-02'),
('Diaz', 'Alyssa', '1952-01-13'),
('Hayes', 'Arianna', '2050-12-24');