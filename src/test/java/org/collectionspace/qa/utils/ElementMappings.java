package org.collectionspace.qa.utils;

import java.util.HashMap;

public class ElementMappings {
	private HashMap<String, String> mappings = new HashMap<>();

	public ElementMappings() {

		// Group
		mappings.put("Title", "csc-group-title");
        mappings.put("Group Owner", "cs-autocomplete-input");

        // Loan In 
        mappings.put("Loan In Number", "csc-loanIn-loanInNumber pattern-chooser-input");
        mappings.put("Loan Status Note", "csc-loanin-loanStatusNote");
        mappings.put("Loan Status Date", "csc-loanin-loanStatusDate fl-force-left input-date csc-calendar-date");
        mappings.put("Lender", "csc-loanIn-lender"); //might be wrong
        mappings.put("Lender's Contact", "csc-loanIn-lendersContact");
        mappings.put("Lender's Authorizer", "csc-loanIn-lendersAuthorizer");
        mappings.put("Authorization Date", "csc-loanIn-lendersAuthorizerDate fl-force-left input-date csc-calendar-date");
		mappings.put("Borrower's Contact", "csc-loanin-borrowersContact");
		mappings.put("Borrower's Authorizer", "csc-loanin-borrowersAuthorizer");
		mappings.put("Borrower's Authorization Date", "csc-loanin-borrowersAuthorizationDate fl-force-left input-date csc-calendar-date");
		mappings.put("Loan In Conditions", "input-textarea csc-loanIn-loanInNote");
		mappings.put("Loan In Note", "input-textarea csc-loanIn-loanInConditions");
		mappings.put("Loan In Date", "csc-loanIn-loanInDate fl-force-left input-date csc-calendar-date");
		mappings.put("Loan Return Date", "csc-loanIn-loanReturnDate fl-force-left input-date csc-calendar-date");
		mappings.put("Loan Renewal Application Date", "csc-loanIn-loanRenewalApplicationDate fl-force-left input-date csc-calendar-date");

	}

	public String getElement(String key) {
		return mappings.get(key);
	}
		


}

