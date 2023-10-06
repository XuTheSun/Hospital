//
//  HospitalDetailVC.swift
//  Hospital
//
//  Created by Xu' Guan on 10/3/23.
//

import UIKit

class HospitalDetailVC: UIViewController {
    
    @IBOutlet weak var labelHospName: UILabel!
    @IBOutlet weak var tfHospName: UITextField!
    @IBOutlet weak var labelHospAddr: UILabel!
    @IBOutlet weak var tfHospAddr: UITextField!
    @IBOutlet weak var labelOpdContact: UILabel!
    @IBOutlet weak var tfOpdContact: UITextField!
    @IBOutlet weak var labelWebsite: UILabel!
    @IBOutlet weak var tfWebsite: UITextField!
    @IBOutlet weak var labelSingleNum: UILabel!
    @IBOutlet weak var tfSingleNum: UITextField!
    @IBOutlet weak var labelDocNum: UILabel!
    @IBOutlet weak var tfDocNum: UITextField!
    @IBOutlet weak var labelNurseNum: UILabel!
    @IBOutlet weak var tfNurseNum: UITextField!
    @IBOutlet weak var labelEmgContact: UILabel!
    @IBOutlet weak var tfEmgContact: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initContent()
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    
    private func initContent(){
        self.title = Constants.Strings.hospital_add_title
        labelHospName.text = Constants.Strings.hospital_add_name
        labelHospAddr.text = Constants.Strings.hospital_add_address
        labelOpdContact.text = Constants.Strings.hospital_add_opd_contact
        labelWebsite.text = Constants.Strings.hospital_add_website
        labelSingleNum.text = Constants.Strings.hospital_add_single_num
        labelDocNum.text = Constants.Strings.hospital_add_doc_number
        labelNurseNum.text = Constants.Strings.hospital_add_nurse_num
        labelEmgContact.text = Constants.Strings.hospital_add_emg_contact
        btnSubmit.setTitle(Constants.Strings.hospital_add_btn_submit, for: UIControl.State.normal)
        btnSubmit.setTitle(Constants.Strings.hospital_add_btn_submit, for: UIControl.State.selected)
    }
    
    private func checkInput() -> Bool{
        return true
    }
    

    @IBAction func submit(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
        // testing UserDefault
        var dic2: [String: Any] = ["name":"123", "address":"here","opd": "123", "website": "www.aaa.com", "single_num": 0, "doctor_num": 0, "nursing_num": 0, "emg_contact": "123123123", "patients": [["name":"123", "address":"here", "contact": "me", "doctor": "me", "room_num": 100, "cashless": false, "med_history": "None"], ["name":"123", "address":"here", "contact": "me", "doctor": "me", "room_num": 100, "cashless": false, "med_history": "None"]]]
        UserDefaults.standard.set([dic2], forKey: Constants.Strings.key_hospitals)
        let result = UserDefaults.standard.array(forKey: Constants.Strings.key_hospitals)
        print(result)
    }
 

}
