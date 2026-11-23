using zahm.flights from '../db/schema';

service FlightService {
    @odata.draft.enabled
    entity Airlines    as projection on flights.Airlines{
    *,
    (
      select from flights.Connections {
        count(*) as anzahl : Integer
      } where Airline.AirlineID = Airlines.AirlineID
    ) as AnzahlVerbindungen : Integer
  };
    entity Connections as projection on flights.Connections;
}
