
# beeKeep
### the bees are in trouble, and they need our help.
<p>Bees and humans have a complex symbiotic relationship. Since early recorded history, humans have helped bees thrive in harsh environments and climates, while bees provide a wealth of products and services that we are deeply rooted in. Despite this, little has been done to curb the alarmingly rapid extinction of the bee population. If bees go extinct, not only do we loose the food, medical, and utility products they provide us, but our agricuture system as we know it would be crippled. The focus of beeKeep is to create a fast, realtime interface to help solve this problem. Extending that - I hope to make this a strong educational platform for creating awareness around a very important issue.</p>

## Technologies Used:

* Ruby on Rails
* JQuery
* JavaScript
* ZURB Foundation
* GoogleMaps API
* GoogleGeocoder API
* Twilio API for SMS
* SASS
* PostgreSQL

## Preview Screenshots:

### Swarm Report:
![Report Form](https://cloud.githubusercontent.com/assets/11710882/8757862/f4a82bfa-2c92-11e5-8681-4ed8b96b019b.png)
### Login Form:
![Login Form](https://cloud.githubusercontent.com/assets/11710882/8757863/f653ad3a-2c92-11e5-8e76-82ea3557d9e7.png)
### Dashboard Header:
![Dashboard](https://cloud.githubusercontent.com/assets/11710882/8757869/fa027cf4-2c92-11e5-839f-20ed83bf6cd2.png)
### Tracking Map
![Tracking Map](https://cloud.githubusercontent.com/assets/11710882/8757868/f929fe74-2c92-11e5-834f-ef106fcabe51.png)
### Responsive Dashboard View:
![Mobile Response](https://cloud.githubusercontent.com/assets/11710882/8757864/f742fe62-2c92-11e5-9750-85a8548d9e0e.png)

## Current Features:
* Allows any user to report a swarm they find, based on location, description, and optional contact information ( for home-based swarms and removal )
* Allows beekeepers to access a dashboard to interface with these reports, as well as manage the swarms they have already 'claimed' to capture
* When a swarm report is submitted to beeKeep - an SMS notification is sent to beekepers alerting them of a new swarm, and the location. This allows them to decide if they are interested, login, and claim a swarm to capture ( on a first come, first serve basis )
* The dashboard features indlude:
  * A interface that allows a beekeeper to get a listing of 'active' unclaimed swarms, based on location and description, and claim them to capture
  * When a beekeeper claims a swarm, they are given access to contact information ( if necessary ) - and they may return it to the open pool if a reason should arise
  * Beekeepers have access to a visual map with markers/infoboxes that show each active swarm
  * When a beekeeper completes a capture, he can 'complete' it and deactivate the swarm

## Coming Soon:
* Ability to set SMS notifications and dashboard based on distance to a swarm report
* Organized and quicker dashboard interface for tracking swarms
* More interactive map features:
 * Swarm listings will be mapped to markers for easy location, potentially with a sidebar
* Oauth login options
* Comprehensive data analytics for personal reference, but also as a API service for researchers/developers
* Customizeable profile options such as an avatar
* Open chat for beekepers

## Mockups:
![beeKeep Mockups](https://cloud.githubusercontent.com/assets/11710882/8757890/1df96262-2c93-11e5-8516-46ed12fec6ce.png)

