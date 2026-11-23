namespace zahm.flights;

entity Airlines {
    key AirlineID   : String(3);
        Name        : String(100);
        Connections : Association to many Connections
                          on Connections.Airline = $self;
}

entity Connections {
    key ConnectionID  : String(4);
        Airline       : Association to Airlines;
        DepartureCity : String(50);
        ArrivalCity   : String(50);
}
