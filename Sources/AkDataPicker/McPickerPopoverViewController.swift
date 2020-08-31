//
//  B.swift
//  McPickerData
//
//  Created by Developer 4 on 31/08/2020.
//  Copyright © 2020 Developer 4. All rights reserved.
//

import UIKit

internal class McPickerPopoverViewController: UIViewController {

    weak var mcPicker: McPicker?

    internal convenience init(mcPicker: McPicker) {
        self.init(nibName: nil, bundle: nil)
        self.mcPicker = mcPicker
    }

    internal required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    private override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        mcPicker!.sizeViews()
        mcPicker!.addAllSubviews()
        self.view.addSubview(mcPicker!)
        self.preferredContentSize = mcPicker!.popOverContentSize
    }
}
