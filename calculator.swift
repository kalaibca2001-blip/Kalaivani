import Foundation

print("----- Simple Swift Calculator -----")

print("Enter first number:")
if let firstInput = readLine(), let number1 = Double(firstInput) {
    
    print("Choose operation (+, -, *, /):")
    if let operation = readLine() {
        
        print("Enter second number:")
        if let secondInput = readLine(), let number2 = Double(secondInput) {
            
            var result: Double?
            
            switch operation {
            case "+":
                result = number1 + number2
            case "-":
                result = number1 - number2
            case "*":
                result = number1 * number2
            case "/":
                if number2 != 0 {
                    result = number1 / number2
                } else {
                    print("Error: Division by zero is not allowed.")
                }
            default:
                print("Invalid operation selected.")
            }
            
            if let finalResult = result {
                print("Result: \(finalResult)")
            }
            
        } else {
            print("Invalid second number.")
        }
        
    }
    
} else {
    print("Invalid first number.")
}
