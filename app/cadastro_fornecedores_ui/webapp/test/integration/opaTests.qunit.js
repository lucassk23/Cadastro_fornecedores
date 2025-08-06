sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'cadastrofornecedoresui/test/integration/FirstJourney',
		'cadastrofornecedoresui/test/integration/pages/FornecedoresList',
		'cadastrofornecedoresui/test/integration/pages/FornecedoresObjectPage',
		'cadastrofornecedoresui/test/integration/pages/MateriaisObjectPage'
    ],
    function(JourneyRunner, opaJourney, FornecedoresList, FornecedoresObjectPage, MateriaisObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('cadastrofornecedoresui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheFornecedoresList: FornecedoresList,
					onTheFornecedoresObjectPage: FornecedoresObjectPage,
					onTheMateriaisObjectPage: MateriaisObjectPage
                }
            },
            opaJourney.run
        );
    }
);