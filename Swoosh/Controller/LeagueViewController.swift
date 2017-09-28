//
//  LeagueViewController.swift
//  Swoosh
//
//  Created by Pankaj on 27/09/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player : Player!
    @IBOutlet weak var nextButton: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onNextTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "skillViewControllerSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! SkillViewController
        
        
        
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
   

}
