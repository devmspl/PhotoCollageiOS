//
//  LoginVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 13/09/22.
//

import UIKit
import Alamofire
import ProgressHUD

class LoginVC: UIViewController {

    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var emailtext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func createAccountTapped(_ sender: Any) {
//        self.alert(message: "Functionality not developed yet")
        let vc = storyboard?.instantiateViewController(withIdentifier: "CreateAccountVC") as! CreateAccountVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func loginTapped(_ sender: Any) {
//        self.alert(message: "Functionality not developed yet")
        loginApi()
    }
    @IBAction func googleLoginTapped(_ sender: Any) {
        let url = "https://accounts.google.com/v3/signin/identifier?dsh=S-1995585663%3A1663159176224530&continue=https%3A%2F%2Faccounts.google.com%2F&followup=https%3A%2F%2Faccounts.google.com%2F&passive=1209600&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=AQDHYWo2-hjNIjOl6qD0zmbyo3dDSSwAOhKqXhi-cyt0NW8dHgByL0pAqNJqTWyZqlsBpWW4q8UD"
              UIApplication.shared.open(URL(string: url)!)
    }
    
    @IBAction func facebookLoginTapped(_ sender: Any) {
        let url = "https://www.facebook.com/"
              UIApplication.shared.open(URL(string: url)!)
    }
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}

extension LoginVC{
    func loginApi(){
        ProgressHUD.show()
        let para:[String:Any] = [
            "email":emailtext.text!,
            "password":passwordText.text!,
            "deviceToken":"Photo"
        ]
        print(para)
        AF.request(Api.Login,method: .post,parameters: para,encoding: JSONEncoding.default).responseJSON{
            response in
            ProgressHUD.dismiss()
            switch(response.result){
            case .success(let json):do{
                let status = response.response?.statusCode
                let respond = json as! NSDictionary
                print(respond)
                if status == 200{
                    print("api integrated")
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabbarVC") as! TabbarVC
                    self.navigationController?.pushViewController(vc, animated: true)
                }else{
                    let message = respond.object(forKey: "error") as! String
                    let alert = UIAlertController(title: "Login", message: message, preferredStyle: .alert)
                    let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    alert.addAction(ok)
                    self.present(alert, animated: true, completion: nil)
                    print("ksdbviu")
                }

            }
            case .failure(let error): do{
                print(error)
            }
            
            }
        }
    }


}

