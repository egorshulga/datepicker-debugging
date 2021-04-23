//
//  ViewController.swift
//  datepicker-debugging
//
//  Created by Egor Shulga on 23.04.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var regularDatePicker: UIDatePicker!
    @IBOutlet weak var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
    }
}

extension ViewController : UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == field {
            let datePickerAsInputView = UIDatePicker()
            datePickerAsInputView.datePickerMode = .dateAndTime
            datePickerAsInputView.preferredDatePickerStyle = .wheels
            field.inputView = datePickerAsInputView
        }
    }
}
