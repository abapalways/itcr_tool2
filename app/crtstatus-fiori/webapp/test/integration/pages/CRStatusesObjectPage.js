sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ns1.crtstatusfiori',
            componentId: 'CRStatusesObjectPage',
            contextPath: '/CRStatuses'
        },
        CustomPageDefinitions
    );
});