# Twitter Recommender

### project objectives

Development of a simple recommendation algorithm for a limited network of individuals extracted through the Twitter API.

## Getting Started

Twitter API v2 was used to collect a 3 degree depth tree with approximately 50 users and 50 connections starting from my own Twitter account and evolving from my followers. Not all of these users are public, so the number of connections refers to public users only.

### Information extracted from users

1) User ID
2) Username
3) Name
4) Followers count
5) Followers (only public)
6) Following count
7) Tweets count
8) Listed count


### Getting to know the 3 degree connection tree

1) 53 nodes
2) Diameter: 4

### Cost of time to extract more data

To build a recommender system, more data would be needed, however, the limit of requests per minute would greatly limit my ability to gather the necessary information in a short time.

1) Users: 15 requests per 15-minute. To gather information from followers of 80 thousand users, for example, I would need to run my code for 56 consecutive days.

2) Infos about users: 900 requests per 15 min. Considering that each user has an average of 20 followers, with 80 thousand extractions in the previous step, I would have to search for 1,600,000 profile details. That would be a little less expensive, but it would still take another 19 days.


## Exploring public Tweeter DB

To solve this problem I used a public dataset developed by Stanford University called "Social circles: Twitter".

### More details about "Social circles: Twitter" network 

To facilitate the network exploration I used a library called https://networkx.org/

Below you can see some information about the network:

Nodes: 81306
Connections: 2.420.766
Density: 0,04% 
Degree of connections: Mean (33), Median (15)

### Exploring relationship between set of users

Commonality index definition: for nodes A and B, the commonality index between A and B is calculated through the number of connections that A and B have in common devided by the total number of connections of node A.

Commonality index: Mean (12%), Median (6%)

## Next Step: simple recommendation algorithm design

Now with the data in hand and knowing the network, the next step is actually building the recommender system.

It could be done using the commonality index described above.

Let's say that the commonality index between nodes A and B is 80%.
This means that if node A has 100 connections, 80 of them node B will also have in common.
So, lets imagine that node B has 120 connections in total, I could recommend 120-80 = 40 connections for node A.
