package org.collectionspace.qa.records;

public class ConditionCheck extends Record {

    public ConditionCheck(){


        fieldSelectorByLabel.put("Condition Check/Assessment Reference Number",    "csc-conditioncheck-numberPatternChooser-reference-number");
        fieldSelectorByLabel.put("Next Condition Check/Assessment Date",           "csc-conditioncheck-nextConditionCheckDate");
        fieldSelectorByLabel.put("Condition Check/Assessment Date",                "csc-conditioncheck-conditionCheckAssessmentDate");
        fieldSelectorByLabel.put("Condition Check/Assessment Note",                "csc-conditioncheck-conditionCheckNote");
        fieldSelectorByLabel.put("Earliest Next Condition Check/Assessment Date",  "csc-conditioncheck-nextConditionCheckDateStart");
        fieldSelectorByLabel.put("Latest Next Condition Check/Assessment Date",    "csc-conditioncheck-nextConditionCheckDateEnd");
        fieldSelectorByLabel.put("Earliest Condition Check/Assessment Date",       "csc-conditioncheck-conditionCheckAssessmentDateStart");
        fieldSelectorByLabel.put("Latest Condition Check/Assessment Date",         "csc-conditioncheck-conditionCheckAssessmentDateEnd");
        fieldSelectorByLabel.put("Display Recommendations",                        "csc-conditioncheck-displayRecommendations");
        fieldSelectorByLabel.put("Handling Recommendations",                       "csc-conditioncheck-handlingRecommendations");


        dropDownMap.put("Object Audit Category",                                   "csc-conditioncheck-objectAuditCategory");
        dropDownMap.put("Condition",                                               "csc-conditioncheck-condition");
        dropDownMap.put("Conservation Treatment Priority",                         "csc-conditioncheck-conservationTreatmentPriority");



    }
}
