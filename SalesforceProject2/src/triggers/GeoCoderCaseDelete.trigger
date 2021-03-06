/**
 * Developed by Timba Software Corp. www.timbasoftware.com admin@timbasoftware.com
 * @author Guillermo Freire <guillermo.freire@gmail.com>
 */
 trigger GeoCoderCaseDelete on Case (before delete) {
	for(Case c: trigger.old){	
			delete [SELECT Id,ParentId__c FROM GeoCodedLocation__c WHERE ParentId__c = :c.id];	
		} //test
}