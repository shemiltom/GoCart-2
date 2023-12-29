
import UIKit

class GoCart: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    var inventory_Array = [Product] ()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        inventory_Array.count
    }
    
    @IBAction func backbtn(_ sender: Any) {
        let view=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "id1212")as?Loginpage
        self.navigationController?.pushViewController(view!, animated: true)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let detailedtable=tableView.dequeueReusableCell(withIdentifier: "cartdisplay12")as?CartDispalyCell
        let rawData = inventory_Array[indexPath.row]
        detailedtable?.iconImage.image=rawData.productIMg
        detailedtable?.iconTxt.text=rawData.productName

        return detailedtable!
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            inventory_Array.remove(at: indexPath.row)
            mainTable.deleteRows(at: [indexPath], with: .fade)        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    @IBOutlet weak var mainTable: UITableView!
    
    
    @IBAction func addAction(_ sender: Any) {
        let sec=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "1212")as?functionalityView
        print("navigation possible")
        self.navigationController?.pushViewController(sec!, animated: true)    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTable.reloadData()
        self.navigationItem.setHidesBackButton(true, animated: false)

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
