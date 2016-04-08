package org.collectionspace.qa.records;

public class ObjectExit extends Record {

    public ObjectExit(){
		fieldSelectorByLabel.put("Exit Number", "csc-objectexit-exitNumber pattern-chooser-input");
		// fieldSelectorByLabel.put("Current Owner", "input-alpha csc-objectexit-currentOwner");
		fieldSelectorByLabel.put("Exit Date", "csc-objectexit-exitDateGroup cs-structuredDate-input");
		// fieldSelectorByLabel.put("Depositor", "input-alpha csc-objectexit-depositor");
		fieldSelectorByLabel.put("Exit Note", "input-textarea csc-objectexit-exitNote");
		fieldSelectorByLabel.put("Packing Note", "input-textarea csc-objectexit-packingNote");

		xpathMap.put("Current Owner", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div[1]/div/div[2]/input[2]");
		xpathMap.put("Depositor"    , "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/input[2]");


    }
}
