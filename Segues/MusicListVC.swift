//
//  MusicListVC.swift
//  Segues
//
//  Created by Clay Tsuhako on 8/25/16.
//  Copyright © 2016 Clay Tsuhako. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue

    }

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    // Below, create an IBAction (load3rdScreenPressed). Segue is then triggered programatically with
    // performSegue(withIdentifier: "nameOfSegueToShow", sender: "The object or data that you want to pass between Views").
    
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Stairway To Heaven"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    // Below, the if let destination...code is making sure that the Segue destination (PlaySongVC) actually exists. In PlaySongVC we need to create a variable:
    // private var _selectedSong:String! (and the create the setter and getter for the var)
    // get {
    // return _selectedSong
    // } set {
    // _selectedSong = newValue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
        
        // Below, grabbing the selected song from the sender
        if let song = sender as? String {
        destination.selectedSong = song
    }
        }

        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}
