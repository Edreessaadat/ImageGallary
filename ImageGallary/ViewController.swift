

import UIKit

class ViewController: UIViewController {
    
   var imageInt = 0
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var imageGallary: UIImageView!
    
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
 // This is comment
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageInt = 1
        label1.text = String("\(imageInt)/4")
        prevButton.isEnabled = false
        label1.backgroundColor = .red

    }

    @IBAction func nextButton(_ sender: Any) {
        imageInt += 1
        label1.text = String("\(imageInt)/4")
        self.imageView()
    }
    
    @IBAction func prevButton(_ sender: Any) {
        imageInt -= 1
        label1.text = String("\(imageInt)/4")
        self.imageView()
    }
    
    func imageView() {
        if imageInt == 1 {
            prevButton.isEnabled = false
            imageGallary.image = UIImage(named: "No1.jpg")
        }
        if imageInt == 2 {
            prevButton.isEnabled = true
            imageGallary.image = UIImage(named: "imag.jpg")
        }
        if imageInt == 3 {
            nextButton.isEnabled = true
            imageGallary.image = UIImage(named: "ef.jpg")
        }
        if imageInt == 4 {
            nextButton.isEnabled = false
            imageGallary.image = UIImage(named: "th.jpg")
        }
    }
}

