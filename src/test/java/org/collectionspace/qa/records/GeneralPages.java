package org.collectionspace.qa.records;

public class GeneralPages extends Record{
    public GeneralPages() {

    	fieldSelectorByLabel.put("Advanced Search", "csc-searchBox-advancedSearch");
    	fieldSelectorByLabel.put("Save", "csc-save");
        fieldSelectorByLabel.put("Advanced Search search", "csc-advancedSearch-searchButton");
        
    	xpathMap.put("Ok", "//input[@value=\"OK\"]");
        // xpathMap.put("search", "//input[@value=\"Search\"]");
    }
}
