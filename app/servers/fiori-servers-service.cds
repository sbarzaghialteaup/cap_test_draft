using Services from '../../srv/services';

////////////////////////////////////////////////////////////////////////////
//
//	Products Object Page
//
annotate Services.Servers with @(
	UI: {
		HeaderInfo: {
			TypeName: 'Server',
			TypeNamePlural: 'Servers'
		},
		Identification: [
			{Value: hostname}
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: 'Identification', Target: '@UI.Identification'},
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>General}', Target: '@UI.FieldGroup#General'},
		],
		FieldGroup#General: {
			Data: [
				{Value: ip_address}
			]
		}
	}
);

////////////////////////////////////////////////////////////////////////////
//
//	Products List Page
//
annotate Services.Servers with @(
	UI: {
		SelectionFields: [ hostname ],
		LineItem: [
			{Value: hostname},
			{Value: ip_address}
		]
	}
);
