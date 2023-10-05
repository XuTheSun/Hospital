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
