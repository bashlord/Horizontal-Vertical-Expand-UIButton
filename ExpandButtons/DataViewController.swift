//
//  DataViewController.swift
//  ExpandButtons
//
//  Created by John Jin Woong Kim on 9/7/17.
//  Copyright © 2017 John Jin Woong Kim. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""
    var keyWindowFrame:CGRect!
    
    var expandButton0:ButtonLauncher!
    var expandButton1: ButtonLauncher!
    /*
     lazy var uploadButton: ButtonLauncher = {
     //let b = ButtonLauncher()
     let b = ButtonLauncher(frame: CGRect(origin: .zero, size: CGSize(width: 80, height: 80)))
     b.favoritesCollectionView = self
     b.setFlag(flag: 11)
     return b
     }()
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        keyWindowFrame = UIScreen.main.bounds
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }
    
    func initButtons(flag:Int){
        if flag == 0{// showcase horizontal buttons
            expandButton0 = ButtonLauncher(frame: CGRect(origin: CGPoint(x: 20, y: 50), size: CGSize(width: 60, height: 60)))
            expandButton1 = ButtonLauncher(frame: CGRect(x: UIScreen.main.bounds.width-80, y: UIScreen.main.bounds.height-80, width: 60, height: 60))
            view.addSubview(expandButton0)
            view.addSubview(expandButton1)
            
            expandButton1.setFlag(flag: 0, expandFlag: 1, rootIndex: 4, numOfExpanded: 5)
            expandButton0.setFlag(flag: 0, expandFlag: 0, rootIndex: 0, numOfExpanded: 5)
        }else{// showcase vertical buttons
            expandButton0 = ButtonLauncher(frame: CGRect(origin: CGPoint(x: 20, y: 50), size: CGSize(width: 60, height: 60)))
            expandButton1 = ButtonLauncher(frame: CGRect(x: UIScreen.main.bounds.width-80, y: UIScreen.main.bounds.height-80, width: 60, height: 60))
            view.addSubview(expandButton0)
            view.addSubview(expandButton1)
            
            expandButton1.setFlag(flag: 1, expandFlag: 1, rootIndex: 5, numOfExpanded: 6)
            expandButton0.setFlag(flag: 1, expandFlag: 0, rootIndex: 0, numOfExpanded: 6)
        }
        
    }


}

