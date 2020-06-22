-- a list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND (membercost < monthlymaintenance/50.0);

-- a list of all facilities with the word 'Tennis' in their name
SELECT * FROM cd.facilities WHERE name LIKE '%Tennis%';
 
-- the details of facilities with ID 1 and 5
SELECT * FROM cd.facilities WHERE facid IN (1,5);

-- a list of members who joined after the start of September 2012
SELECT memid, surname, firstname, joindate 
FROM cd.members WHERE joindate >= '2012-09-01';

-- an ordered list of the first 10 surnames in the members table
SELECT DISTINCT surname FROM cd.members
ORDER BY  surname LIMIT 10;

-- signup date of your last member
SELECT MAX(joindate) AS latest_signup FROM cd.members;

-- # of facilities that have a cost to guests of 10 or more
SELECT COUNT(*) FROM cd.facilities WHERE guestcost >= 10;

-- a list of the total number of slots booked per facility in the month of September 2012
SELECT facid, sum(slots) AS "Total Slots" FROM cd.bookings 
WHERE starttime >= '2012-09-01' AND starttime < '2012-10-01' 
GROUP BY facid ORDER BY SUM(slots);

-- list of facilities with more than 1000 slots booked
SELECT facid, sum(slots) AS total_slots FROM cd.bookings 
GROUP BY facid HAVING SUM(slots) > 1000 ORDER BY facid;

--  a list of the start times for bookings for tennis courts, for the date '2012-09-21
SELECT cd.bookings.starttime AS start, cd.facilities.name AS name 
FROM cd.facilities 
INNER JOIN cd.bookings ON cd.facilities.facid = cd.bookings.facid 
WHERE cd.facilities.facid IN (0,1) 
AND cd.bookings.starttime >= '2012-09-21' 
AND cd.bookings.starttime < '2012-09-22' 
ORDER BY cd.bookings.starttime;

--  a list of the start times for bookings by members named 'David Farrell'
SELECT cd.bookings.starttime FROM cd.bookings 
INNER JOIN cd.members ON cd.members.memid = cd.bookings.memid 
WHERE cd.members.firstname='David' AND cd.members.surname='Farrell';












