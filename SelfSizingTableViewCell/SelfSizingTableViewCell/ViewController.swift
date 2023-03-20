//
//  ViewController.swift
//  SelfSizingTableViewCell
//
//  Created by 방유빈 on 2023/03/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = indexPath.description
        cell.detailTextLabel?.text = """
            asdasfakjhfikasjfkljaslfjkajl lkdsjfalsk
            asidjlkasjdkjskjfkasjkf
            djaijdfikf fjiksf
            dksfjskjflkdsj
            fksjfksjfkllfkjgjgjamqijcv
            cjasdmxkjasdkd
            """
        cell.detailTextLabel?.numberOfLines = 0
        cell.imageView?.image = UIImage(named: "\(indexPath.row%3)")
        return cell
    }
    
    
}

