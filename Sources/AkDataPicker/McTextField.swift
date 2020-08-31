//
//  C.swift
//  McPickerData
//
//  Created by Developer 4 on 31/08/2020.
//  Copyright © 2020 Developer 4. All rights reserved.
//

import UIKit
open class McTextField: UITextField {

    public var doneHandler: McPicker.DoneHandler = { _ in }
    public var cancelHandler: McPicker.CancelHandler?
    public var selectionChangedHandler: McPicker.SelectionChangedHandler?
    public var textFieldWillBeginEditingHandler: ((_ selections: [Int:String]) -> Void)?

    public var inputViewMcPicker: McPicker? {
        didSet {
            self.delegate = inputViewMcPicker
        }
    }
}
