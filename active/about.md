# About TrainQuery

TrainQuery is an unofficial guide to help you navigate Melbourne's train network. You can search for any suburban or regional train station to view upcoming departures, and adjust the departure time or filter to further refine the results.

## Can you trust this site?

**Well... somewhat.**

At the moment, this site pulls its timetables from the Department of Transport's [GTFS data feed](https://discover.data.vic.gov.au/dataset/timetable-and-geographic-information-gtfs), however I'm only using the static "[GTFS Schedule](https://gtfs.org/schedule/)" data right now. That means TrainQuery should always spit out the correct departure times according to the timetable (even temporary timetables for planned disruptions), but it won't react to unplanned disruptions or have live departure times just yet. I'm still working on integrating the [realtime feed](https://discover.data.vic.gov.au/dataset/gtfsr-metro-trains-vehicle-positions), but hopefully it won't be too long before that's done.

The GTFS feed is the same data you'll see used on many other sites that provide train timetables in Melbourne (such as Google Maps) so _in theory_ this site should be just as trustworthy as them (at least once I've finished the realtime stuff). Unfortunately the GTFS feed itself is far from perfect, and it's not uncommon to see anomalies such as services missing from the feed, or replacement buses being presented as train services. In future I'm planning to use the [PTV API](https://www.ptv.vic.gov.au/footer/data-and-reporting/datasets/ptv-timetable-api/) to enhance the quality of what gets shown here by providing a "second opinion", as well as to make disruption messages available on the site.

## Hmm ok, why bother lol?

Well it's all just a bit of fun. I'm a uni student exercising my web dev skills! Besides, if you just want to check the timetables keeping all that in mind, then this site is a great way to do that 😉.

Thanks for checking it out!
