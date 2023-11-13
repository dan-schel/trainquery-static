# About TrainQuery

TrainQuery is an unofficial guide to help you navigate Melbourne's train network. You can search for any suburban or regional train station to view upcoming departures, and adjust the departure time or filter to further refine the results.

## Can you trust this site?

**Well... somewhat.**

At the moment, this site pulls its timetables from the Department of Transport's [GTFS data feed](https://discover.data.vic.gov.au/dataset/timetable-and-geographic-information-gtfs), however I'm only using the static "[GTFS Schedule](https://gtfs.org/schedule/)" data right now. That means TrainQuery should always spit out the correct departure times according to the timetable (even temporary timetables for planned disruptions), but it won't react to unplanned disruptions or have live departure times just yet. In the very near future I'll be working on integrating the [realtime feed](https://discover.data.vic.gov.au/dataset/gtfsr-metro-trains-vehicle-positions) which will provide those features. That's not to say TrainQuery won't tell you about live disruptions at all, it pulls disruption messages from the [PTV API](https://www.ptv.vic.gov.au/footer/data-and-reporting/datasets/ptv-timetable-api/) and will display those on the affected services, it's just that the timetables and departure times won't be updated live.

The GTFS feed is the same data you'll see used on many other sites that provide train timetables in Melbourne (such as Google Maps) so *in theory* this site should be just as trustworthy as them (at least once I've finished the realtime stuff). Unfortunately, the GTFS feed itself is far from perfect, and it's not uncommon to see anomalies such as services missing from the feed, or replacement buses being presented as train services. To combat this, I'm planning to also use the PTV API in the future to enhance the quality of what gets shown here by providing a "second opinion".

## Why bother?

My initial motivation for starting this project was a few gripes I have with the PTV App, especially around the way it handles regional train stations and its search feature. For example, if you search "Richmond" you'll get two options. You'll need to choose "Richmond Station" if you want the suburban departures, and "Richmond Railway Station" for the regional departures. The order of results is also quite annoying. At the time of writing, searching "Geelong" lists Geelong Railway Station in 7th, below a tram stop and 3 bus stops in Footscray! Unfortunately it's like that for most regional stations.

If search was the only issue, it'd be fine, but speaking of Geelong, tapping into it shows 8 different routes with no indication which ones are buses, and many list their next two departures as the same service. There's even a route titled "Towards Geelong"! But it isn't just regional trains, suburban trains get to partake in some general weirdness too! Did you know Pakenham/Cranbourne trains run express through Burnley?

Anyway, I thought I'd try my hand at solving some of these problems and making something of my own. If I'm honest, the main reason I'm doing this is because it's all just a bit of fun, and an excuse to practice my web dev skills and learn a few new things!

Thanks for checking it out!
