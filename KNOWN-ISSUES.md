# Data Processing in TrainQuery - Known Issues

This is list of all the data processing issues I'm aware of in TrainQuery right now, all of which I hope to have fixed soon!

## Missing disruption messages

Some disruptions are ignored or not handled appropriately by TrainQuery:

- **Any disruption beginning with "... Station:" is currently hidden.** The PTV API serves up so many trival disruptions that only affect a single station, such as a car park closure, escalator/lift outage, or changes to pedestrian access. All these disruptions should be surfaced to the relevant users somehow, but they aren't the same severity as something like a partial line closure, so right now they're completely hidden. Hiding them also has the unfortunate side effect of hiding things like station closures, which actually are relatively high severity.

- **Cancelled trains are not handled well yet.** Currently, a train will only show as being cancelled when a disruption message is provided by the PTV API. These messages may take up to 5 minutes to show up from when the cancellation is posted by PTV, and will be shown on every train on the line.

## Extra train services

Some services will be shown which aren't train services at all! They're actually replacement bus services. For example, while Narre Warren has been closed, a train running from Berwick to Hallam and vice-versa has been showing up on TrainQuery, but it's actually the replacement shuttle bus.
