 package org.collectionspace.qa.records;

public class LoanIn extends Record {

    public LoanIn() {
      
    fieldSelectorByLabel.put("Authorization Date", "csc-loanIn-lendersAuthorizerDate fl-force-left input-date csc-calendar-date");
    // fieldSelectorByLabel.put("Authorization Date", "csc-loanin-lendersAuthorizationDate");
    fieldSelectorByLabel.put("Borrower's Authorization Date", "csc-loanin-borrowersAuthorizationDate");
    // fieldSelectorByLabel.put("Borrower's Authorizer", "csc-loanin-borrowersAuthorizer");
    // fieldSelectorByLabel.put("Borrower's Contact", "csc-loanin-borrowersContact");
    // fieldSelectorByLabel.put("Lender", "csc-loanIn-lender");
    // fieldSelectorByLabel.put("Lender's Authorizer", "csc-loanin-lendersAuthorizer");
    // fieldSelectorByLabel.put("Lender's Contact", "csc-loanin-lendersContact");
    fieldSelectorByLabel.put("Loan In Conditions", "csc-loanin-loanInConditions");
    fieldSelectorByLabel.put("Loan In Date", "csc-loanin-loanInDate");
    fieldSelectorByLabel.put("Loan In Note", "csc-loanin-loanInNote");
    fieldSelectorByLabel.put("Loan In Number", "csc-loanin-loanInNumber");
    fieldSelectorByLabel.put("Loan Purpose", "csc-loanin-loanPurpose");
    fieldSelectorByLabel.put("Loan Renewal Application Date", "csc-loanin-loanRenewalApplicationDate");
    fieldSelectorByLabel.put("Loan Return Date", "csc-loanin-loanReturnDate");
    fieldSelectorByLabel.put("Loan Status", "csc-loanin-loanStatus");
    fieldSelectorByLabel.put("Loan Status Date", "csc-loanin-loanStatusDate");
    fieldSelectorByLabel.put("Loan Status Note", "csc-loanin-loanStatusNote");

    fieldSelectorByLabel.put("Lender",                "//*[@id=\"repeat::-1\"]/td[2]/input[2]"); // 
    fieldSelectorByLabel.put("Lender's Contact",      "//*[@id=\"repeat::-1\"]/td[3]/input[2]"); //
    fieldSelectorByLabel.put("Lender's Authorizer",   "//*[@id=\"repeat::-1\"]/td[4]/input[2]"); //
    fieldSelectorByLabel.put("Borrower's Contact",    "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[4]/div/div[2]/table/tbody/tr/td[1]/input[2]"); //
    fieldSelectorByLabel.put("Borrower's Authorizer", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[4]/div/div[2]/table/tbody/tr/td[2]/input[2]"); //

    }
}
