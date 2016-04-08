package org.collectionspace.qa.records;

public class LocationMovementInventory extends Record {

    public LocationMovementInventory(){

      fieldSelectorByLabel.put("Reference Number",         "csc-movement-movementReferenceNumber pattern-chooser-input");
      fieldSelectorByLabel.put("Normal Location",          "input-alpha csc-movement-normalLocation"); //
      fieldSelectorByLabel.put("Current Location",         "csc-movement-currentLocation"); //
      fieldSelectorByLabel.put("First Note",               "csc-movement-currentLocationNote");
      fieldSelectorByLabel.put("Location Date",            "csc-movement-locationDate fl-force-left input-date csc-calendar-date");
      fieldSelectorByLabel.put("Contact",                  "input-alpha csc-movement-movementContact"); //
      fieldSelectorByLabel.put("Planned removal date",     "csc-movement-plannedRemovalDate fl-force-left input-date csc-calendar-date");
      fieldSelectorByLabel.put("Removal date",             "csc-movement-removalDate fl-force-left input-date csc-calendar-date");
      fieldSelectorByLabel.put("Second Note",              "input-textarea csc-movement-movementNote");
      fieldSelectorByLabel.put("Inventory Date",           "csc-movement-inventoryDate fl-force-left input-date csc-calendar-date");
      fieldSelectorByLabel.put("Next Inventory Date",      "csc-movement-nextInventoryDate fl-force-left input-date csc-calendar-date");
      fieldSelectorByLabel.put("Second Contact",           "input-alpha csc-movement-inventoryContact cs-repeatable-content"); //
      fieldSelectorByLabel.put("Third Note",               "input-textarea csc-movement-inventoryNote");


      xpathMap.put("Normal Location",          "//*[@id=\"primaryTab\"]/div/div[3]/div[1]/div[2]/div[1]/div[2]/div/div[2]/input[2]"); //
      xpathMap.put("Current Location",         "//*[@id=\"primaryTab\"]/div/div[3]/div[1]/div[2]/div[2]/div/div[2]/table/tbody/tr/td[1]/input[2]"); //
      xpathMap.put("Contact",                  "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div[1]/div[2]/div/div[2]/input[2]"); //
      xpathMap.put("Second Contact",           "//*[@id=\"fluid-id-5jxc7z9x-1204\"]/ul/li/input[3]"); 

    }
}
