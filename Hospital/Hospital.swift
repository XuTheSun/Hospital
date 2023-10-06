//
//  Hospital.swift
//  Hospital
//
//  Created by Xu' Guan on 10/5/23.
//

import Foundation

public struct Hospital{
    
    public struct Patient{
        public var name: String = ""
        public var address: String = ""
        public var contact: String = ""
        public var doctor: String = ""
        public var room_num: Int = 0
        public var cashless: Bool = false
        public var med_history: String = ""
        
        // creating instance of Patient using dictionary from UserDefault
        public static func createPatientFromDic(dic: [String: Any]) -> Patient?{
            guard dic.keys.contains(Constants.Strings.key_patient_name) else {return nil}
            guard dic.keys.contains(Constants.Strings.key_patient_address) else {return nil}
            guard dic.keys.contains(Constants.Strings.key_patient_contact) else {return nil}
            guard dic.keys.contains(Constants.Strings.key_patient_doctor) else {return nil}
            guard dic.keys.contains(Constants.Strings.key_patient_room_num) else {return nil}
            guard dic.keys.contains(Constants.Strings.key_patient_cashless) else {return nil}
            guard dic.keys.contains(Constants.Strings.key_patient_med_history) else {return nil}
            var p = Patient()
            p.name = dic["name"] as? String ?? ""
            p.address = dic["address"] as? String ?? ""
            p.contact = dic["contact"] as? String ?? ""
            p.doctor = dic["doctor"] as? String ?? ""
            p.room_num = dic["room_num"] as? Int ?? 0
            p.cashless = dic["cashless"] as? Bool ?? false
            p.med_history = dic["med_history"] as? String ?? ""
            return p
        }
        
        //make sure to set all values before using this function
        public static func createDicDromPatient(p: Patient) -> [String: Any]{
                    var dic: [String: Any] = [:]
                    dic["name"] = p.name
                    dic["address"] = p.address
                    dic["contact"] = p.contact
                    dic["doctor"] = p.doctor
                    dic["room_num"] = p.room_num
                    dic["cashless"] = p.cashless
                    dic["med_history"] = p.med_history
                    return dic
                }
    }
    public var name: String = ""
    public var address: String = ""
    public var opd: String = ""
    public var website: String = ""
    public var single_num: Int = 0
    public var doctor_num: Int = 0
    public var nursing_num: Int = 0
    public var emg_contact: String = ""
    public var patients: [Patient] = []
    
    //create instance of Hospital using dictionary from UserDefault
    public static func createHospitalFromDic(dic: [String: Any]) -> Hospital?{
        guard dic.keys.contains("name") else {return nil}
        guard dic.keys.contains("address") else {return nil}
        guard dic.keys.contains("opd") else {return nil}
        guard dic.keys.contains("website") else {return nil}
        guard dic.keys.contains("single_num") else {return nil}
        guard dic.keys.contains("doctor_num") else {return nil}
        guard dic.keys.contains("nursing_num") else {return nil}
        guard dic.keys.contains("emg_contact") else {return nil}
        guard dic.keys.contains("patients") else {return nil}
        var hosp = Hospital()
        hosp.name = dic["name"] as? String ?? ""
        hosp.address = dic["address"] as? String ?? ""
        hosp.opd = dic["opd"] as? String ?? ""
        hosp.website = dic["website"] as? String ?? ""
        hosp.single_num = dic["single_num"] as? Int ?? 0
        hosp.doctor_num = dic["doctor_num"] as? Int ?? 0
        hosp.nursing_num = dic["nursing_num"] as? Int ?? 0
        hosp.emg_contact = dic["emg_contact"] as? String ?? ""
        let patientList = dic["patients"] as? [[String: Any]] ?? [[String: Any]]()
        for p in patientList{
            guard let tmp = Patient.createPatientFromDic(dic: p as? [String: Any] ?? [String: Any]()) else {return nil}
            hosp.patients.append(tmp)
        }
        return hosp
        
    }
    
    //creating dictionary for UserDefault Storage by instance of Hospital
    public static func createDicFromHospital(h: Hospital) -> [String: Any]{
        var dic: [String: Any] = [:]
        dic["name"] = h.name
        dic["address"] = h.address
        dic["opd"] = h.opd
        dic["website"] = h.website
        dic["single_num"] = h.single_num
        dic["doctor_num"] = h.doctor_num
        dic["nursing_num"] = h.nursing_num
        dic["emg_contact"] = h.emg_contact
        var dic_patient: [[String: Any]] = []
        for i in h.patients{
            let tmp = Patient.createDicDromPatient(p: i)
            dic_patient.append(tmp)
        }
        dic["patients"] = dic_patient
        return dic
    }
    
}
