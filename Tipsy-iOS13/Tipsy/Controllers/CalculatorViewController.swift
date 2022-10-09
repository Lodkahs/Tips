
import UIKit

class CalculatorViewController: UIViewController {
    
    var tipsNumber = 0.1
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalBill = "0.0"
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let numberWithoutPercentage = String(buttonTitle.dropLast())
        let doubleNumber = Double(numberWithoutPercentage)!
        
        tipsNumber = doubleNumber/100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        print(sender.value)//double
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        //let percentageIntoDouble = String(format: "%.\(tipsNumber)f", self)
        
        let sumField = Double(billTextField.text!)
        
        let billTotal = sumField! * (1+tipsNumber) / Double(numberOfPeople)
        
        
        finalBill = String(billTotal)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.splitNumber = numberOfPeople
            destinationVC.tips = tipsNumber
            destinationVC.finalResult = finalBill
            
        }
    }
    
}
