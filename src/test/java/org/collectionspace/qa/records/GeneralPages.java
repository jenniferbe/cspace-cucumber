package org.collectionspace.qa.records;

public class GeneralPages extends Record{
    public GeneralPages() {

    	fieldSelectorByLabel.put("Advanced Search", "csc-searchBox-advancedSearch");
    	fieldSelectorByLabel.put("Save", "csc-save");

    	xpathMap.put("Ok", "//input[@value=\"OK\"]");
    }
}
