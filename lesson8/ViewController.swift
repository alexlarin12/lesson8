//
//  ViewController.swift
//  lesson8
//
//  Created by пользователь on 08/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    
   
    
    
    @IBOutlet weak var buttonTap: UIButton!
    @IBAction func buttonTapAction(_ sender: Any) {
      let st = UIStoryboard(name: "Main", bundle: nil)
      let vc = st.instantiateViewController(withIdentifier: "GreenViewController") as!GreenViewController
        self.present(vc,animated: true, completion: nil)
    }
    
    @IBOutlet weak var scrollPhotoView: UIScrollView!
    
    @IBAction func buttonPree(_ sender: UIButton) {
    }
    
    @IBAction func buttonNavigation(_ sender: UIButton) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       
        // Do any additional setup after loading the view.
    }
}

       
        
        
        
        
   
    


