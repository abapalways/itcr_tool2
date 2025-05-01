sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns1/crtstatusfiori/test/integration/FirstJourney',
		'ns1/crtstatusfiori/test/integration/pages/CRStatusesList',
		'ns1/crtstatusfiori/test/integration/pages/CRStatusesObjectPage'
    ],
    function(JourneyRunner, opaJourney, CRStatusesList, CRStatusesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns1/crtstatusfiori') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCRStatusesList: CRStatusesList,
					onTheCRStatusesObjectPage: CRStatusesObjectPage
                }
            },
            opaJourney.run
        );
    }
);