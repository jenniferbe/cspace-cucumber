package org.collectionspace.qa.records;

public class Group extends Record {

    public Group(){

        requiredMap.put("csc-group-title", "My Group Title");
        
        fieldMap.put(".csc-group-owner", "Chris Hendricks");

     	fieldSelectorByLabel.put("Title", "csc-group-title");
        fieldSelectorByLabel.put("Group Owner", "input-autocomplete csc-group-owner");
        fieldSelectorByLabel.put("Scope Note", "input-textarea csc-group-scopeNote");
           
        xpathMap.put("Group Owner", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div[2]/div/div[2]/input[2]");
    }
}
