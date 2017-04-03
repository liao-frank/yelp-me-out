#yelp me out

'yelp me out' is a food recommender that focuses on basic qualities that a hungry person might be looking for:

- Location (accepts a range of formats handled by Yelp API, or alternatively, HTML5 coordinates)
- Price
- Basic Categories/Sorting
- Distance

The app in built on Ruby on Rails and deployed through heroku. The direct API communication was derived from Tomer Elmalem's publicly available example code; Elmalem is currently an employee for Yelp. Links are below and basic screenshots are attached.

**Main References:** 

Elmalem's Reference Code - https://github.com/Yelp/yelp-fusion/tree/master/f...

The deployed 'yelp me out' site - https://stormy-mesa-60847.herokuapp.com/

A repo of code - https://github.com/liao-frank/yelp-me-out

**Other references:**

yelp - https://www.yelp.com/developers/

materialize front-end framework - http://materializecss.com/

**Notes****

- Labels on coordinate fields were wonky. There were issues getting it to display correctly after coming out of hiding, so those labels are left out. There could be some incompatibility issues with the front-end framework I was using.

- Coordinate activation is implemented as a radio button so that it is not undo-able. There issues with being able to deactivate it again so for now, users must refresh the page if they change their mind about using the coordinates.

- The JSON request is displayed under "Check out these places" on the results page for anyone who is interested in seeing if it actually contains what it should. It will contain some extraneous hashes for things used by Rails and for some interactive form fields I was using.

- Materialize buttons will continually ripple and change color if the form doesn't submit due to validation problems.

- The rating sort is not strictly sorted by the rating value, but by an adjusted rating value that takes into account the number of ratings, similar to a bayesian average. This is so a business with 1 rating of 5 stars doesn’t immediately jump to the top.

- The distance slider field is HTML5 only. Default value is 5 mi for those who cannot access it.

Frank Liao

fliao@andrew.cmu.edu

Carnegie Mellon University
