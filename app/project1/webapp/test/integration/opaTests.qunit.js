sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/project1/test/integration/FirstJourney',
		'ns/project1/test/integration/pages/ChangeRequestsList',
		'ns/project1/test/integration/pages/ChangeRequestsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ChangeRequestsList, ChangeRequestsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheChangeRequestsList: ChangeRequestsList,
					onTheChangeRequestsObjectPage: ChangeRequestsObjectPage
                }
            },
            opaJourney.run
        );
    }
);