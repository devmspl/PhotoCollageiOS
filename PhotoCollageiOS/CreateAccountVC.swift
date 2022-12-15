//
//  CreateAccountVC.swift
//  PhotoCollageiOS
//
//  Created by abc on 11/10/22.
//

import UIKit
import Alamofire
import ProgressHUD

class CreateAccountVC: UIViewController {

    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func signupBtn(_ sender: Any) {
        signupApi()
        
    }
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension CreateAccountVC{
func signupApi(){
    ProgressHUD.show()
    let para:[String:Any] = [
        "email":emailTxt.text!,
        "password":passwordTxt.text!,
        "name":nameTxt.text!,
        "phoneNo":"8797",
        "deviceToken":"Photo"
    ]
    print(para)
    
    AF.request(Api.Signup,method: .post,parameters: para,encoding: JSONEncoding.default).responseJSON{
        response in
        ProgressHUD.dismiss()
        switch(response.result){
        case .success(let json):do{
            let status = response.response?.statusCode
            let respond = json as! NSDictionary
            print(respond)
            if status == 200{
                print("api integrated")
                self.navigationController?.popViewController(animated: true)
            }
        }
        case .failure(let error): do{
            print(error)
        }
        
        }
    }
}
}
