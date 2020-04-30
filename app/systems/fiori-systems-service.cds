////////////////////////////////////////////////////////////////////////////
//
//	Systems List Page
//
annotate Services.Systems with @(
	UI: {
		SelectionFields: [ name ],
		LineItem: [
			{Value: name	}
		]
	}
);

////////////////////////////////////////////////////////////////////////////
//
//	Systems Object Page
//
annotate Services.Systems with @(
	UI: {
		HeaderInfo: {
			TypeName: 'System',
			TypeNamePlural: 'Systems'
		},
		Identification: [
			{Value: name}
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: 'Identification', Target: '@UI.Identification'},
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>General}', Target: '@UI.FieldGroup#General'},
		],
		FieldGroup#General: {
			Data: [
				{Value: description},
				{Value: server_ID},
				{Value: server.hostname},

			]
		}
	}
);
