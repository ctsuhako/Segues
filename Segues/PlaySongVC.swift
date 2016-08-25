//
//  PlaySongVC.swift
//  Segues
//
//  Created by Clay Tsuhako on 8/25/16.
//  Copyright © 2016 Clay Tsuhako. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    // Below, creating the variable for MusicListVC to get and pass the data to PlaySongVC
    private var _selectedSong: String!
    
    // Below, creating the setter and getter for -selectedsong
    var selectedSong: String {
        get {
            return _selectedSong
        } set{
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Below, putting the variable -selectedSong into the Label songTitleLbl.text
        songTitleLbl.text = _selectedSong

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
