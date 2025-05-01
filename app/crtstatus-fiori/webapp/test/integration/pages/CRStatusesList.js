sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'ns1.crtstatusfiori',
            componentId: 'CRStatusesList',
            contextPath: '/CRStatuses'
        },
        CustomPageDefinitions
    );
});