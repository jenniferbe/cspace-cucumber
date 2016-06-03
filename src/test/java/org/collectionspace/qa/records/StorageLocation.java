package org.collectionspace.qa.records;

public class StorageLocation extends Record {

    public StorageLocation() {

        requiredMap.put("csc-locationAuthority-termDisplayName", "A Storage Location among the stars");

        // ----- Start of entries generated by an automated script -----
        //
        // (Note: These require review by a human.)
        // (Note: Entries for structured date fields are not yet generated.)

        fieldSelectorByLabel.put("Access Note", "csc-location-accessNote");
        fieldSelectorByLabel.put("Address", "csc-location-address");
        fieldSelectorByLabel.put("Broader Context", "csc-hierarchy-broaderContext");
        fieldSelectorByLabel.put("Broader object type", "csc-hierarchy-broaderContextType");
        fieldSelectorByLabel.put("Condition Note", "csc-location-conditionGroup");
        fieldSelectorByLabel.put("Condition Note", "csc-location-conditionNote");
        fieldSelectorByLabel.put("Date", "csc-location-conditionNoteDate");
        fieldSelectorByLabel.put("Display Name", "csc-locationAuthority-termDisplayName");
        fieldSelectorByLabel.put("Equivalent Context", "csc-hierarchy-equivalentContexts");
        fieldSelectorByLabel.put("Formatted Display Name", "csc-locationAuthority-termFormattedDisplayName");
        fieldSelectorByLabel.put("Language", "csc-locationAuthority-termLanguage");
        fieldSelectorByLabel.put("Location Term Group(s)", "csc-location-preferredLocation");
        fieldSelectorByLabel.put("Name", "csc-locationAuthority-termName");
        fieldSelectorByLabel.put("Narrower Context", "csc-hierarchy-narrowerContext");
        fieldSelectorByLabel.put("Object component type", "csc-hierarchy-narrowerContextType");
        fieldSelectorByLabel.put("Pref for Lang", "csc-locationAuthority-termPrefForLang");
        fieldSelectorByLabel.put("Qualifier", "csc-locationAuthority-termQualifier");
        fieldSelectorByLabel.put("Related Term", "csc-hierarchy-relatedTerms");
        fieldSelectorByLabel.put("Security Note", "csc-location-securityNote");
        fieldSelectorByLabel.put("Source", "csc-locationAuthority-termSource");
        fieldSelectorByLabel.put("Source Detail", "csc-locationAuthority-termSourceDetail");
        fieldSelectorByLabel.put("Source ID", "csc-locationAuthority-termSourceID");
        fieldSelectorByLabel.put("Source Note", "csc-locationAuthority-termSourceNote");
        fieldSelectorByLabel.put("Storage Location Information", "csc-location-locationTermInformation");
        fieldSelectorByLabel.put("Storage Location Record Type", "csc-location-locationType");
        fieldSelectorByLabel.put("Term Flag", "csc-locationAuthority-termFlag");
        fieldSelectorByLabel.put("Term Status", "csc-locationAuthority-termStatus");
        fieldSelectorByLabel.put("Term Type", "csc-locationAuthority-termType");

        // Entries above with duplicate text labels, to be checked by a human.
        //
        // Some may represent labels for headers above repeatable fields/groups.
        // Duplicate text label: Condition Note (appears 2 times)

        // Messagekeys in the 'uispec' file not matched by text labels
        // in the message bundles file (e.g. 'core-messages.properties').
        //
        // Some of these may be record metadata that is never displayed
        // in the UI. If so, they can be added to the script's stoplist.
        //
        // In other instances, these may represent messagekeys for section
        // headers in the record, rather than for fields.
        //
        // Finally, these may represent sub-records (e.g. Contact in
        // Person and Organization) or other sub-data structures.
        //
        // Not found: text label for message key 'hierarchy-domaindataLabel'
        // Not found: text label for message key 'hierarchy-equivalentContextLabel'
        // Not found: text label for message key 'hierarchy-equivalentInformationLabel'
        // Not found: text label for message key 'hierarchy-hierarchyInformationLabel'
        // Not found: text label for message key 'hierarchy-narrowerContextsLabel'
        // Not found: text label for message key 'hierarchy-relatedTermLabel'
        // Not found: text label for message key 'locationAuthority-locTermGroupLabel'
        // Not found: text label for message key 'locationAuthority-termInformationLabel'

        // ----- End of entries generated by an automated script -----
      
      }
}