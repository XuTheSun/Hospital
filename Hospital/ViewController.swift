//
//  ViewController.swift
//  Hospital
//
//  Created by Xu' Guan on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var labelList: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        initContents()
    }

    private func initContents(){
        labelList.text = Constants.Strings.hospital_list_title
        btnAdd.setTitle(Constants.Strings.hospital_list_btn_add, for: UIControl.State.normal)
        btnAdd.setTitle(Constants.Strings.hospital_list_btn_add, for: UIControl.State.selected)
        
    }
    
    @IBAction func addHospital(_ sender: Any) {
//        self.performSegue(withIdentifier: Constants.Strings.seg_home_to_detail, sender: nil)
        let sb_main = UIStoryboard(name: "Main", bundle: nil)
        var vc_detail: HospitalDetailVC = sb_main.instantiateViewController(withIdentifier: Constants.Strings.id_vc_hospital_detail) as! HospitalDetailVC
//        vc_detail.hospital_data = "hospital name"
        self.navigationController?.pushViewController(vc_detail, animated: true)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        switch segue.identifier {
//        case Constants.Strings.seg_home_to_detail:
//            guard var vc_detail = segue.destination as? HospitalDetailVC else {return}
//            vc_detail.hospital_data = "hospital name"
//        default:
//            print("Tag: HomePage; No such segue identifier.")
//
//        }
    }
    
}

