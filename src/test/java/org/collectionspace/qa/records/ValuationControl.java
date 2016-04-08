package org.collectionspace.qa.records;

public class ValuationControl extends Record {

    public ValuationControl(){
    	fieldSelectorByLabel.put("Valuation Control Reference Number", "csc-valuationcontrol-valuationcontrolRefNumber pattern-chooser-input");
    	fieldSelectorByLabel.put("Source", "csc-valuationcontrol-valueSource");
    	fieldSelectorByLabel.put("Date", "csc-valuationcontrol-valueDate fl-force-left input-date csc-calendar-date");
    	fieldSelectorByLabel.put("Renewal Date", "csc-valuationcontrol-valueRenewalDate fl-force-left input-date csc-calendar-date");
    	fieldSelectorByLabel.put("Note", "input-textarea csc-valuationcontrol-valueNote");

    	xpathMap.put("Source", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div[2]/div[1]/div[2]/input[2]");
        
    }
}
