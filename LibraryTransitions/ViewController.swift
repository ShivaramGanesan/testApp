//
//  ViewController.swift
//  LibraryTransitions
//
//  Created by shivaram-pt2458 on 26/02/19.
//  Copyright © 2019 shivaram-pt2458. All rights reserved.
//

import UIKit
import Hero

class ViewController: UIViewController {

    @IBOutlet weak var toNextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        
        toNextButton.addTarget(self, action: #selector(nextPage), for: .touchDown)
        toNextButton.hero.id = "toNextPage"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func nextPage(){
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        secondVC?.hero.isEnabled = true
        self.navigationController?.pushViewController(secondVC!, animated: true)
        
        present(secondVC!, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

