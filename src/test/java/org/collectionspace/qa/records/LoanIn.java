 package org.collectionspace.qa.records;

public class LoanIn extends Record {

    public LoanIn(){
        fieldSelectorByLabel.put("Loan In Number", "csc-loanIn-loanInNumber");
        fieldSelectorByLabel.put("Loan Status Note", "csc-loanin-loanStatusNote");
        fieldSelectorByLabel.put("Loan Status Date", "csc-loanin-loanStatusDate");
        // fieldSelectorByLabel.put("Lender", "csc-loanIn-lender"); // 
        // fieldSelectorByLabel.put("Lender's Contact", "csc-loanIn-lendersContact"); //
        // fieldSelectorByLabel.put("Lender's Authorizer", "csc-loanIn-lendersAuthorizer"); //
        fieldSelectorByLabel.put("Authorization Date", "csc-loanIn-lendersAuthorizerDate fl-force-left input-date csc-calendar-date");
		// fieldSelectorByLabel.put("Borrower's Contact", "csc-loanin-borrowersContact"); //
		// fieldSelectorByLabel.put("Borrower's Authorizer", "csc-loanin-borrowersAuthorizer"); //
		fieldSelectorByLabel.put("Borrower's Authorization Date", "csc-loanin-borrowersAuthorizationDate fl-force-left input-date csc-calendar-date");
		fieldSelectorByLabel.put("Loan In Conditions", "input-textarea csc-loanIn-loanInNote");
		fieldSelectorByLabel.put("Loan In Note", "input-textarea csc-loanIn-loanInConditions");
		fieldSelectorByLabel.put("Loan In Date", "csc-loanIn-loanInDate fl-force-left input-date csc-calendar-date");
		fieldSelectorByLabel.put("Loan Return Date", "csc-loanIn-loanReturnDate fl-force-left input-date csc-calendar-date");
		fieldSelectorByLabel.put("Loan Renewal Application Date", "csc-loanIn-loanRenewalApplicationDate fl-force-left input-date csc-calendar-date");

        fieldSelectorByLabel.put("Lender",                "//*[@id=\"repeat::-1\"]/td[2]/input[2]"); // 
        fieldSelectorByLabel.put("Lender's Contact",      "//*[@id=\"repeat::-1\"]/td[3]/input[2]"); //
        fieldSelectorByLabel.put("Lender's Authorizer",   "//*[@id=\"repeat::-1\"]/td[4]/input[2]"); //
        fieldSelectorByLabel.put("Borrower's Contact",    "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[4]/div/div[2]/table/tbody/tr/td[1]/input[2]"); //
        fieldSelectorByLabel.put("Borrower's Authorizer", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[4]/div/div[2]/table/tbody/tr/td[2]/input[2]"); //

      
        
    }
}
