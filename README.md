Hubbubbly
=========

_"What's the hubbub, bub?"_

Hubbubbly is designed for local interest groups, providing a curated set of events, news items, and
a directory of interested people.  We refer to the collection as a Hub.  

_Who's it for?_

Anyone involved with an interest group who wants to establish a central reference point for
getting information out.

_Such as?_

The project was started to support the CLT-area tech groups: startup groups, user experience,
ruby, functional programming, founders--there is a lot of overlap between these groups, and
there was no central place one could go to see the various tech events scattered around the
area.  Hubbubbly was conceived to provide a primary point of reference.

_No, it's not a blog_ and its article creation facility is primitive.  It's an information depot, a
Hub around which an interest group can rotate.


### Participants

* Curator: runs the site, adds and approves events/feeds, promotes Member to Contributor?
* Contributor: can submit suggestions for feeds/calendars, moderate feeds/calendars

Features
--------

### Release 1

* Authentication and registration via Devise for Curators
* Calendars that import calendar feeds via iCal
* News Feeds that import articles via RSS
* Supporting admin interface
* Contributors can view only

### Release 2

* Sign in / registration via Omniauth for Contributors/Curators
* Adding events and articles
* An administrative interface for:
  * Promoting members to Curators
* Front Page showing both articles and events
* Links page / blog roll
* Article bubbling by Contributors (See YC)

### Release 3

* Contributor feeds/calendars

### Future Releases

* Multiple hosted hubs
 * Select by domain name?
 * Select by subdirectory?
* Hub settings:
 * Probationary calendars and feeds
 * Feed/Calendar submissions from members
* Commentary around events and articles?
* Topics Forum 
* Rails engine for local deployment?
* Unified membership view / personal view
* Personal (private) feeds/calendars
* Feeds across multiple hubs?

### Commercial Endeavors

* Ensure scalability
* Provide site registration
* Freemium! Sponsors get:
 * Customizable CSS
 * Multiple Curators?

Work Area, Rambling
-------------------

### Article/Feed Bubbling
* Contributors may bubble an article up on any public feed.
* FP displays articles in order of popularity, time-adjusted.

### Curator Tasks
* Add Event to Hub

### Targeted Calendars:
* Google
* Meetup
* Myspace
* Some Band Stuff (Last.fm, etc.)

### Contributor Tasks
* Add Event to Hub
* Add external calendar to profile

### Contributor Signup
* Sign up using Omniauth, register normally.
* Once signed up, a Member may belong to multiple Hubs.

### Friend Following
* Follow another Contributor from the same Hub.

# Social Media Publication
* Publish tweets / blog feeds / short messages in the 'from our members' sidebar for each Hub?

# Views

## Front Page

Displays upcoming events, most popular feed items, and any sticky feed items, profile pictures 
of hub Contributors, with links to their contributions/profile.

## Contributor Page

Displays basic user information and all public contributions to the hub.

_Possible improvement: participation score -- how many of their suggested feeds have been adopted by the curator, how many of the articles on their feeds have been bubbled, how many of their events have been attended.  &c._

## All Contributions Page

Displays Hub feeds, and all public feeds associated with that hub.

## Search Page

Search results across contributions.

Displays contributor's photo, public feeds and events, and 

## Template Management
* Customizable attributes for page templates: font, background color, etc.
* Advanced template management for real money?
