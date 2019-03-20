//
//  ViewController.swift
//  FlagPhoneNumber
//
//  Created by Aurélien Grifasi on 06/08/2017.
//  Copyright (c) 2017 Aurélien Grifasi. All rights reserved.
//

import UIKit
import FlagPhoneNumber

class ViewController: UIViewController {
  private lazy var countryPicker: FPNCountryPicker = FPNCountryPicker()

	var phoneNumberTextField: UITextField!

	override func viewDidLoad() {
		super.viewDidLoad()

		title = "FlagPhoneNumber"

		// To use your own flag icons, uncommment the line :
		//		Bundle.FlagIcons = Bundle(for: ViewController.self)

		phoneNumberTextField = UITextField(frame: CGRect(x: 0, y: 0, width: view.bounds.width - 16, height: 50))
		phoneNumberTextField.borderStyle = .roundedRect

    phoneNumberTextField.inputView = countryPicker

		// Example of customizing the textField input accessory view
		//		let items = [
		//			UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.save, target: self, action: nil),
		//			UIBarButtonItem(title: "Item 1", style: .plain, target: self, action: nil),
		//			UIBarButtonItem(title: "Item 2", style: .plain, target: self, action: nil)
		//		]
		//		phoneNumberTextField.textFieldInputAccessoryView = getCustomTextFieldInputAccessoryView(with: items)

		//		phoneNumberTextField.placeholder = "Phone Number"

		// Set the country list
		//		phoneNumberTextField.setCountries(including: [.FR, .ES, .IT, .BE, .LU, .DE])

		// Exclude countries from the list
		//		phoneNumberTextField.setCountries(excluding: [.AM, .BW, .BA])

		// Set the flag image with a region code
		//		phoneNumberTextField.setFlag(for: "FR")

		// Set the phone number directly
		//		phoneNumberTextField.set(phoneNumber: "+33612345678")

		view.addSubview(phoneNumberTextField)

		phoneNumberTextField.center = view.center
	}

	private func getCustomTextFieldInputAccessoryView(with items: [UIBarButtonItem]) -> UIToolbar {
		let toolbar: UIToolbar = UIToolbar()

		toolbar.barStyle = UIBarStyle.default
		toolbar.items = items
		toolbar.sizeToFit()

		return toolbar
	}
}
