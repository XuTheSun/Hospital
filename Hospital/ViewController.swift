//
//  ViewController.swift
//  Hospital
//
//  Created by Xu' Guan on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnAdd: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        initContents()
    }

    private func initContents(){
        self.navigationItem.title = Constants.Strings.hospital_list_title
        btnAdd.setTitle(Constants.Strings.hospital_list_btn_add, for: UIControl.State.normal)
        btnAdd.setTitle(Constants.Strings.hospital_list_btn_add, for: UIControl.State.selected)

    }

    @IBAction func addHospital(_ sender: Any) {
        print("asdasdasdasd")
        let sb_main = UIStoryboard(name: "Main", bundle: nil)
        let vc_detail: HospitalDetailVC = sb_main.instantiateViewController(withIdentifier: Constants.Strings.id_vc_hospital_detail) as! HospitalDetailVC
//        vc_detail.hospital_data = "hospital name"
        self.navigationController?.pushViewController(vc_detail, animated: true)
        
        
    }

    
}

