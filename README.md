keriaka
=======

A simple app for tracking maize prices in Tanzania. A marketer in the local market of Dar es Salaam
can login, create a commodity if needed, and tabulate the prices in the lowest denomination.
for each commodity and vendor. These prices are collected and published on the commodities' home
page. 

SMS publishing
---------------

A farmer can make a SMS request to the app with the commodity name and receive the five 
latest prices recorded. The farmer can then make the decision to sell and to which buyer.
This is so they are informed and not subject to the whims of the first buyer they find.

API for phone users
-------------------

A user can use the api to GET five most recent prices for a commodity in the form of 
/api/V1/commodities/:commodity_id/prices

To POST a price, you must get a token.

curl -d "email=you@example.com" -d "password=mypw" http://localhost:3001/api/v1/tokens

