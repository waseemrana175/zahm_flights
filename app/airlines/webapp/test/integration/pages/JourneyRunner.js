sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"airlines/test/integration/pages/AirlinesList.gen",
	"airlines/test/integration/pages/AirlinesObjectPage.gen"
], function (JourneyRunner, AirlinesListGenerated, AirlinesObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('airlines') + '/test/flp.html#app-preview',
        pages: {
			onTheAirlinesListGenerated: AirlinesListGenerated,
			onTheAirlinesObjectPageGenerated: AirlinesObjectPageGenerated
        },
        async: true
    });

    return runner;
});

