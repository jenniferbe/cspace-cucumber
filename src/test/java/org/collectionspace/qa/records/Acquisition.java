package org.collectionspace.qa.records;

public class Acquisition extends Record {

    public Acquisition(){
		fieldSelectorByLabel.put("Acquisition Reference Number",  "csc-acquisition-numberPatternChooser-reference-number pattern-chooser-input");
		fieldSelectorByLabel.put("Accession Date", 				  "csc-acquisition-accessionDateGroup cs-structuredDate-input");
		fieldSelectorByLabel.put("Acquisition Authorizer",		  "csc-acquisition-acquisitionAuthorizer"); //
		fieldSelectorByLabel.put("Acquisition Authorizer date",   "csc-acquisition-acquisitionAuthorizerDate fl-force-left input-date csc-calendar-date");
		fieldSelectorByLabel.put("Acquisition Date", 		 	  "csc-acquisitionDateGroup-acquisitionDateGroup cs-repeatable-content cs-structuredDate-input");
		fieldSelectorByLabel.put("Acquisition Source", 		 	  "csc-acquisition-acquisitionSource cs-repeatable-content"); //
		fieldSelectorByLabel.put("Owner", 					 	  "csc-acquisition-owner cs-repeatable-content"); //
		fieldSelectorByLabel.put("Transfer of Title Number", 	  "csc-acquisition-transfer-of-title-number");
		fieldSelectorByLabel.put("Group purchase price",	 	  "input-numeric-medium csc-acquisition-group-purchase-price-value");
		fieldSelectorByLabel.put("Object offer price",   	 	  "input-numeric-medium csc-acquisition-object-offer-price-value");
		fieldSelectorByLabel.put("Object purchaser offer price",  "input-numeric-medium csc-acquisition-object-purchase-offer-price-value");
		fieldSelectorByLabel.put("Object purchase price",         "input-numeric-medium csc-acquisition-object-purchase-price-value");
		fieldSelectorByLabel.put("Original Object purchase price","input-numeric-medium csc-acquisition-original-object-purchase-price-value");
		fieldSelectorByLabel.put("Acquisition Reason",			  "input-textarea csc-acquisition-acquisition-reason");
		fieldSelectorByLabel.put("Acquisition Note",			  "input-textarea csc-acquisition-acquisition-note");
		fieldSelectorByLabel.put("Acquisition Provisos",		  "input-textarea csc-acquisition-acquisition-provisos");
		fieldSelectorByLabel.put("Value",						  "csc-acquisition-acquisitionFundingValue");
		fieldSelectorByLabel.put("Funding Source",				  "csc-acquisition-acquisitionFundingSource"); //
		fieldSelectorByLabel.put("Source Provisos",				  "csc-acquisition-acquisitionFundingSourceProvisos");
		fieldSelectorByLabel.put("Credit Line",					  "csc-acquisition-creditLine");
		fieldSelectorByLabel.put("Field Collection Event Name",	  "csc-acquisition-fieldCollectionEventName cs-repeatable-content");



		xpathMap.put("Acquisition Authorizer",		  "//*[@id=\"primaryTab\"]/div/div[3]/div[1]/div[2]/div[1]/div[1]/div[3]/div[2]/table/tbody/tr/td[1]/input[2]");
		xpathMap.put("Acquisition Source", 		 	  "//*[@id=\"fluid-id-2ciealeo-1109\"]/ul/li/input[3]");
		xpathMap.put("Owner", 					 	  "//*[@id=\"fluid-id-2ciealeo-1164\"]/ul/li/input[3]");
		xpathMap.put("Funding Source",				  "//*[@id=\"repeat::\"]/td[4]/input[2]");

      
        
    }
}
