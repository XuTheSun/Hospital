//
//  Constants.swift
//  Hospital
//
//  Created by Xu' Guan on 10/3/23.
//

import Foundation

struct Constants{
    struct Strings{
        // keys for UserDefault
        // struct hospital
        static let key_hospitals = "hospitals"
        static let key_hospital_name = "name"
        static let key_hospital_address = "address"
        static let key_hospital_opd = "opd"
        static let key_hospital_website = "website"
        static let key_hospital_single_num = "single_num"
        static let key_hospital_doctor_num = "doctor_num"
        static let key_hospital_nurse_num = "nursing_num"
        static let key_hospital_emg_contact = "emg_contact"
        static let key_hospital_patients = "patients"
        // struct hospital.patient
        static let key_patient_name = "name"
        static let key_patient_address = "address"
        static let key_patient_contact = "contact"
        static let key_patient_doctor = "doctor"
        static let key_patient_room_num = "room_num"
        static let key_patient_cashless = "cashless"
        static let key_patient_med_history = "med_history"
        
        // Ids of ViewController
        static let id_vc_hospital_detail = "vc_hosp_detail"
        
        // Ids of segues
        static let seg_home_to_detail = "seg_to_detail"
        
        // Text of labels
        static let navi_back = "back"
        static let hospital_list_title = "List of Hospitals"
        static let hospital_list_btn_add = "Add hospital"
        static let hospital_add_title = "Add Hosptial"
        static let hospital_add_name = "Hosptial Name"
        static let hospital_add_address = "Address"
        static let hospital_add_opd_contact = "OPD Contact"
        static let hospital_add_website = "Website"
        static let hospital_add_single_num = "Number of Single Room"
        static let hospital_add_doc_number = "Number of Doctors"
        static let hospital_add_nurse_num = "Number of Nursing Staff"
        static let hospital_add_emg_contact = "Emergency Contact"
        static let hospital_add_btn_submit = "Submit"
        
        
    }
}
