package org.collectionspace.qa.records;

public class LoanOut extends Record {

    public LoanOut(){

      // fieldSelectorByLabel.put("Borrower", "csc-loanout-borrower"); // autofill
      fieldSelectorByLabel.put("Borrower's Authorization Date", "csc-loanout-borrowersAuthorizationDate");
      // fieldSelectorByLabel.put("Borrower's Authorizer", "csc-loanout-borrowersAuthorizer"); //autofill
      // fieldSelectorByLabel.put("Borrower's Contact", "csc-loanout-borrowersContact"); // autofill
      fieldSelectorByLabel.put("Lender's Authorization Date", "csc-loanout-lendersAuthorizationDate");
      // fieldSelectorByLabel.put("Lender's Authorizer", "csc-loanout-lendersAuthorizer"); //autofill
      // fieldSelectorByLabel.put("Lender's Contact", "csc-loanout-lendersContact"); //autofill
      fieldSelectorByLabel.put("Loan Out Conditions", "csc-loanOut-loanOutConditions");
      fieldSelectorByLabel.put("Loan Out Date", "csc-loanout-loanOutDate");
      fieldSelectorByLabel.put("Loan Out Note", "csc-loanout-loanOutNote");
      fieldSelectorByLabel.put("Loan Out Number", "csc-loanout-loanOutNumber");
      fieldSelectorByLabel.put("Loan Purpose", "csc-loanout-loanPurpose");
      fieldSelectorByLabel.put("Loan Renewal Application Date", "csc-loanout-loanRenewalApplicationDate");
      fieldSelectorByLabel.put("Loan Return Date", "csc-loanout-loanReturnDate");
      fieldSelectorByLabel.put("Loan Status", "csc-loanout-loanStatus");
      fieldSelectorByLabel.put("Loan Status Date", "csc-loanout-loanStatusDate");
      fieldSelectorByLabel.put("Loan Status Note", "csc-loanout-loanStatusNote");
      fieldSelectorByLabel.put("Loans Out Information", "csc-loanout-loanoutInformation");

      xpathMap.put("Borrower", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[3]/div/div[2]/table/tbody/tr/td[1]/input[2]"); // autofill
      xpathMap.put("Borrower's Authorizer", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[3]/div/div[2]/table/tbody/tr/td[3]/input[2]"); //autofill
      xpathMap.put("Borrower's Contact", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[3]/div/div[2]/table/tbody/tr/td[2]/input[2]"); // autofill
      xpathMap.put("Lender's Authorizer", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div/div[2]/table/tbody/tr/td[1]/input[2]"); //autofill
      xpathMap.put("Lender's Contact", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div/div[2]/table/tbody/tr/td[2]/input[2]"); //autofill
 
    }
}
