
//Ross Spafford
//CPSC 5330
//Spring 2025
//Assignment 1


import Foundation

func Payment(loanAmount: Int, numberOfPayments: Int, interestRate: Float) -> Float {
    let loan = Float(loanAmount)
    let rate = interestRate / 100.0
    let n = Float(numberOfPayments)
        
    //using formula from https://financeformulas.net/Loan_Payment_Formula.html
    let payment = (rate * loan) / (1 - pow(1 + rate, -n))
    
    return payment
}

// Testing the function with the provided scenarios

// Scenario 1: 2-month loan of $20,000, 4.4% APR, compounded monthly
let loan1 = Payment(loanAmount: 20000, numberOfPayments: 2, interestRate: 4.4 / 12)
print(String(format: "Monthly Payment for Scenario 1: $%.2f", loan1))

// Scenario 2: 30-year loan of $150,000, 5% APR, one annual payment each year for 30 years
let loan2 = Payment(loanAmount: 150000, numberOfPayments: 30, interestRate: 5.0)
print(String(format: "Annual Payment for Scenario 2: $%.2f", loan2))
