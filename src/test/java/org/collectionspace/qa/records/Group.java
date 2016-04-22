package org.collectionspace.qa.records;

public class Group extends Record {

    public Group(){

        requiredMap.put("csc-group-title", "My Group Title");

        fieldMap.put(".csc-group-owner", "Chris Hendricks");

// <input class="cs-autocomplete-input" tabindex="">
// /<input class="cs-autocomplete-input" tabindex="">
//*[@id="fluid-id-5qtoa643-1053"]/ul/li/input[3]
//*[@id="repeat::.csc-group-owner"/]

//*[@id="repeat::.csc-group-owner"]/input[@class="cs-autocomplete-input"]
        fieldSelectorByLabel.put("Group Owner", "cs-autocomplete-input");
     	fieldSelectorByLabel.put("Title", "csc-group-title");
        fieldSelectorByLabel.put("Scope Note", "csc-group-scopeNote");
        // xpathMap.put("Group Owner", "//*[@id=\"repeat::.csc-group-owner\"]/input[@class=\"cs-autocomplete-input\"]");
        // xpathMap.put("Group Owner", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div[2]/div/div[2]/input[2]");
    }
}
