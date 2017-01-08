//
//  ViewController.swift
//  TempNote
//
//  Created by Takeshi Tanaka on 2017/01/07.
//  Copyright © 2017 p0dee. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    lazy var textView = NSTextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        setUpConstraints()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
    }
    
    //MARK: Set Up
    private func setUpViews() {
        view.addSubview(textView)
        textView.insertText("Initial text", replacementRange: NSMakeRange(0, 0))
    }

    private func setUpConstraints() {
        textView.translatesAutoresizingMaskIntoConstraints = false
        var cstrs = [NSLayoutConstraint]()
        cstrs.append(NSLayoutConstraint(item: textView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 0.0))
        cstrs.append(NSLayoutConstraint(item: textView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0.0))
        cstrs.append(NSLayoutConstraint(item: textView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: 0.0))
        cstrs.append(NSLayoutConstraint(item: textView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 0.0))
        NSLayoutConstraint.activate(cstrs)
        view.layoutSubtreeIfNeeded()
    }

}

