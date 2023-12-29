
import UIKit

class Loginpage: UIViewController {
    @IBOutlet weak var passwordTag: UITextField!
    
    @IBOutlet weak var userTag: UITextField!
    
    
    
    
    @IBAction func signInAction(_ sender: Any) {
        if(userTag.text?.isEmpty)!&&(passwordTag.text?.isEmpty)!{
            let ok = UIAlertAction(title: "OK", style: .default)
            let cancel = UIAlertAction(title: "Cancel", style: .destructive)
            
            let alert1=UIAlertController(title: "Missing Feilds", message: "Fill in all the empty feilds!!", preferredStyle: .alert)
            alert1.addAction(ok)
            alert1.addAction(cancel)
            self.present(alert1, animated: true)
        }
        else{
            let navigationcell=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "11122")as?GoCart
            self.navigationController?.pushViewController(navigationcell!, animated: true)
        }
        
        
        }
    
  
    @IBOutlet weak var signinbtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        signinbtn.layer.borderColor=UIColor.black.cgColor
        signinbtn.layer.borderWidth=1
        signinbtn.layer.cornerRadius=5
        signinbtn.clipsToBounds=true
        // Do any additional setup after loading the view.
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
