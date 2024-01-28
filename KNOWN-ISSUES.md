# Data Processing in TrainQuery - Known Issues

This is list of all the data processing issues I'm aware of in TrainQuery right now, all of which I hope to have fixed soon!

## Missing train services

TrainQuery incorrectly believes the following routes are "invalid", and therefore ignores and will not display any train taking them:

### Sandringham Line trains that either originate or terminate at Williamstown, Laverton, or Werribee.

To my knowledge, there are only a handful of these trains each day, almost all trains originate/terminate at Flinders Street (which TrainQuery handles correctly).

### Trains which travel only around the loop (completing a full lap rather than making their way out to the suburbs), known as "City Circle" trains.

These trains rarely run, and only during disruptions.

### Trains that have replacement bus timetables merged onto them.

An example of this is when buses replace trains between Caulfield and Richmond, and buses are shuttling passengers to Burnley from Caulfield instead of direct to Richmond. Sometimes when this has occurred in the past, train timetables on the Pakenham, Cranbourne, and Frankston lines will show an extra stop at Burnley with the time the bus is scheduled for. TrainQuery knows these trains shouldn't be stopping at Burnley and unfortunately rejects the whole service.

## Missing disruption messages

Some disruptions are ignored or not handled appropriately by TrainQuery:

### Any disruption beginning with "... Station:" is currently hidden.

The PTV API serves up so many trival disruptions that only affect a single station, such as a car park closure, escalator/lift outage, or changes to pedestrian access. All these disruptions need to be shown, but they aren't the same severity as something like a full line closure, so right now they're completely hidden. Hiding them also has the unfortunate side effect of hiding things like station closures, which actually are relatively high severity.

### Cancelled trains are not handled well yet.

Currently, a train will only show as being cancelled when a disruption message is provided by the PTV API. These messages may take up to 5 mins to show up from when the cancellation is posted by PTV, and will be shown on every train on the line.

## Extra train services

Some services will be shown, which aren't train services at all! They're actually replacement bus services. For example, while Narre Warren has been closed, a train running from Berwick to Hallam and vice-versa has been showing up on TrainQuery, but it's actually the replacement shuttle bus.

## Weirdness at midnight

Around midnight, TrainQuery will sometimes believe trains are running an entire day ahead of schedule because it applies the live departure time of tonight's train to tomorrow night's train instead!
