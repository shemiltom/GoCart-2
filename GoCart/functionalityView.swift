

import UIKit
class functionalityView: UIViewController {
    static var  str:[Product]=[Product]()
    @IBOutlet weak var iconText: UITextField!
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var saveBtn: UIButton!
    
    
    @IBAction func navigationBack(_ sender: Any) {
        let returBack=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "11122")as?GoCart
        self.navigationController?.pushViewController(returBack!, animated: true)
    }
    
   
    @IBAction func uploadBtn(_ sender: Any) {
        let imagepicker=UIImagePickerController()
        imagepicker.delegate=self
        imagepicker.allowsEditing=false
        imagepicker.sourceType =  .photoLibrary
        self.present(imagepicker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[.originalImage] as? UIImage {
            img1.image = pickedImage
            dismiss(animated: true,completion: nil)
        }
    }
    
    @IBAction func Savebtn(_ sender: Any) {
        if(iconText.text?.isEmpty)!&&(img1.image==nil){
            let ok = UIAlertAction(title: "Ok", style: .default)
            let alert2=UIAlertController(title: "Empty Feilds", message: "Fill in missing feilds", preferredStyle: .alert)
            alert2.addAction(ok)
            self.present(alert2, animated: true)
        }else{
            let newRecord=Product(productName: iconText.text!, productIMg: img1.image!)
            print("the lenght is\(functionalityView.str.count)")
            functionalityView.str.append(newRecord)
            print("the lenght is\(functionalityView.str.count)")
            
            let navigateBack=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "11122")as?GoCart
            navigateBack?.inventory_Array = functionalityView.str;
            self.navigationController?.pushViewController(navigateBack!, animated: true)
        }
    }
    @IBOutlet weak var uPload: UIButton!
    
    
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        img1.layer.cornerRadius=5
        img1.clipsToBounds=true
        uPload.layer.cornerRadius=5
        uPload.clipsToBounds=true
        saveBtn.layer.cornerRadius=5
        saveBtn.clipsToBounds=true
        self.navigationItem.setHidesBackButton(true, animated: true)
        // Dso any additional setup after loading the view.
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

