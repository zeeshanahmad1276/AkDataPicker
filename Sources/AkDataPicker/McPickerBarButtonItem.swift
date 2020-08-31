//
//  A.swift
//  McPickerData
//
//  Created by Developer 4 on 31/08/2020.
//  Copyright © 2020 Developer 4. All rights reserved.
//

import UIKit

open class McPickerBarButtonItem: UIBarButtonItem {

    /**
        A bar button to close McPicker with selections.
     
        - parameter mcPicker: Target instance
        - parameter title: Optionally set a custom title
        - parameter barButtonSystemItem: Optionally set UIBarButtonSystemItem or omit for default: .done. NOTE: This option is ignored when title is non-nil.
     
        - returns: McPickerBarButtonItem
     */
    public class func done(mcPicker: McPicker, title: String? = nil, barButtonSystemItem: UIBarButtonItem.SystemItem = .done) -> McPickerBarButtonItem {

        if let buttonTitle = title {
            return self.init(title: buttonTitle, style: .plain, target: mcPicker, action: #selector(McPicker.done))
        }

        return self.init(barButtonSystemItem: barButtonSystemItem, target: mcPicker, action: #selector(McPicker.done))
    }

    /**
         A bar button to close McPicker with out selections.
         
         - parameter mcPicker: Target instance
         - parameter title: Optionally set a custom title
         - parameter barButtonSystemItem: Optionally set UIBarButtonSystemItem or omit for default: .done. NOTE: This option is ignored when title is non-nil.
         
         - returns: McPickerBarButtonItem
     */
    public class func cancel(mcPicker: McPicker, title: String? = nil, barButtonSystemItem: UIBarButtonItem.SystemItem = .cancel) -> McPickerBarButtonItem {

        if let buttonTitle = title {
            return self.init(title: buttonTitle, style: .plain, target: mcPicker, action: #selector(McPicker.cancel))
        }

        return self.init(barButtonSystemItem: barButtonSystemItem, target: mcPicker, action: #selector(McPicker.cancel))
    }

    public class func flexibleSpace() -> McPickerBarButtonItem {
        return self.init(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    }

    public class func fixedSpace(width: CGFloat) -> McPickerBarButtonItem {
        let fixedSpace =  self.init(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        fixedSpace.width = width
        return fixedSpace
    }
}
