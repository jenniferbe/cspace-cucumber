package org.collectionspace.qa.records;

public class LoanOut extends Record {

    public LoanOut(){
		fieldSelectorByLabel.put("Loan Out Number", "csc-loanOut-loanOutNumber pattern-chooser-input");
		fieldSelectorByLabel.put("Lender's Authorizer", "csc-loanOut-lendersAuthorizer"); //autofill
		fieldSelectorByLabel.put("Lender's Contact", "csc-loanOut-lendersContact"); //autofill
		fieldSelectorByLabel.put("Lender's Authorization Date", "csc-loanOut-lendersAuthorizationDate fl-force-left input-date csc-calendar-date");
		fieldSelectorByLabel.put("Borrower", "csc-loanOut-borrower"); // autofill
		fieldSelectorByLabel.put("Borrower's Contact", "csc-loanOut-lendersContact"); // autofill
		fieldSelectorByLabel.put("Borrower's Authorizer", "csc-loanout-borrowersAuthorizer"); //autofill
		fieldSelectorByLabel.put("Borrower's Authoriztion Date", "csc-loanout-borrowersAuthorizationDate fl-force-left input-date csc-calendar-date");
		fieldSelectorByLabel.put("Loan Out Conditions", "input-textarea csc-loanOut-loanOutConditions");
		fieldSelectorByLabel.put("Loan Out Note", "input-textarea csc-loanOut-loanOutNote");
		fieldSelectorByLabel.put("Loan Status Date", "csc-loanOut-loanedObjectStatusDate fl-force-left input-date csc-calendar-date");
		fieldSelectorByLabel.put("Loan Status Note", "csc-loanOut-loanedObjectStatusNote");
		fieldSelectorByLabel.put("Loan Out Date", "csc-loanOut-loanOutDate fl-force-left input-date csc-calendar-date");
		fieldSelectorByLabel.put("Loan Return Date", "csc-loanOut-loanReturnDate fl-force-left input-date csc-calendar-date"); 
		fieldSelectorByLabel.put("Loan Renewal Application Date", "csc-loanOut-loanRenewalApplicationDate fl-force-left input-date csc-calendar-date");

    }
}
