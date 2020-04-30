namespace alteaup.solutions.systems;

using {
        Currency,
        managed,
        cuid
} from '@sap/cds/common';

@cds.odata.valuelist
entity Servers : cuid, managed {

        @title       : 'Hostname'
        @description : 'Hostname'
        hostname   : String(50);

        @title       : 'IP Address'
        @description : 'IP Address'
        ip_address : String(15);

        systems    : Association to many Systems
                             on systems.server = $self;

}

entity Systems : cuid, managed {

        @title       : 'System Name'
        @description : 'Name of the System'
        name        : String(50);

        @title       : 'Description'
        @UI.MultiLineText
        description : String(1000);

        @title       : 'Server'
        @Common      : {
                Text            : server.hostname,
                TextArrangement : #TextOnly
        }
        server      : Association to Servers;

}
