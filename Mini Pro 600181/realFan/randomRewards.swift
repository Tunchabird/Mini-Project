//
//  randomRewards.swift
//  realFan
//
//  Created by tunchabird2 on 16/11/2561 BE.
//  Copyright © 2561 tunchanok. All rights reserved.
//

import Foundation
import UIKit
class randomRewards: UIViewController {
    
    

    
    @IBOutlet weak var rewardsLabel: UILabel!
    @IBOutlet weak var randonImmage: UIImageView!
    @IBAction func randomButton(_ sender: UIButton) {
        changeRewards()
    }
    
    let picArray = ["smk", "kp2", "it", "sb", "lays", "mn"]
    var randomRe : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func changeRewards()  {
        randomRe = Int(arc4random_uniform(6))
        randonImmage.image = UIImage(named:picArray[randomRe])
        if randonImmage.image == UIImage(named: picArray[0]){
            rewardsLabel.text = "ยินดีด้วย คุณได้กินสโมกกี้ไบท์"
            rewardsLabel.textColor = UIColor.white
        }else if randonImmage.image == UIImage(named: picArray[1]){
            rewardsLabel.text = "ยินดีด้วย คุณได้กินหมูกระทะ"
            rewardsLabel.textColor = UIColor.white
        }else if randonImmage.image == UIImage(named: picArray[2]){
            rewardsLabel.text = "ยินดีด้วย คุณได้กินไอติมแท่ง"
            rewardsLabel.textColor = UIColor.white
        }else if randonImmage.image == UIImage(named: picArray[3]){
            rewardsLabel.text = "ยินดีด้วย คุณได้กินชาบูชาบู"
            rewardsLabel.textColor = UIColor.white
        }else if randonImmage.image == UIImage(named: picArray[4]){
            rewardsLabel.text = "ยินดีด้วย คุณได้กินเลย์"
            rewardsLabel.textColor = UIColor.white
        }else if randonImmage.image == UIImage(named: picArray[5]){
            rewardsLabel.text = "ยินดีด้วย คุณได้กินมาม่า"
            rewardsLabel.textColor = UIColor.white
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeRewards()
    }
}
