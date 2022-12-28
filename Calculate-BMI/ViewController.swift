//
//  ViewController.swift
//  Calculate-BMI
//
//  Created by Shashwat Panda on 27/12/22.
//

import UIKit

class ViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var currentWeight: UILabel!
    @IBOutlet weak var currentHeight: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        currentHeight.text = String(format: "%.2f", sender.value) + "m"
        calculatorBrain.height = sender.value
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        currentWeight.text = String(format: "%.2f", sender.value) + "Kg"
        calculatorBrain.weight = sender.value
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calculateBmi()
        calculatorBrain.returnAdvice()
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
        let resultsVC = segue.destination as! ResultsViewController
            resultsVC.bmiValue = calculatorBrain.bmiValue
            resultsVC.advice = calculatorBrain.advice
            resultsVC.color = calculatorBrain.color
        }
    }
}

