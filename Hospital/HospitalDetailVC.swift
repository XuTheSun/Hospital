//
//  HospitalDetailVC.swift
//  Hospital
//
//  Created by Xu' Guan on 10/3/23.
//

import UIKit

class HospitalDetailVC: UIViewController {
    
    var hospital_data = ""
    
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
        self.navigationItem.leftBarButtonItem?.title = Constants.Strings.navi_back
        self.navigationItem.backBarButtonItem?.title = Constants.Strings.navi_back
        let navi = self.navigationItem
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
