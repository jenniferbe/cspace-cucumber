package org.collectionspace.qa.records;

/* Used to store information about fields in that class,
   such as selectors to use to operate on fields, labels,
   and values to add when filling in fields */

public class AdvancedSearch extends Record {

    public AdvancedSearch(){
    	dropDownMap.put("record type", "//*[@id=\"recordTypeSelect\"]");
    	dropDownMap.put("Field-based search", "//*[@id=\"step2SubHeader2AndOr-selection\"]");

    }
}
