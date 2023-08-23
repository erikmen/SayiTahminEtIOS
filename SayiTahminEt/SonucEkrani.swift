//
//  SonucEkrani.swift
//  SayiTahminEt
//
//  Created by Kaan Deniz Erikmen on 23.08.2023.
//

import UIKit

class SonucEkrani: UIViewController {

    @IBOutlet weak var lblKazanKaybet: UILabel!
    @IBOutlet weak var lblİfade: UIImageView!
    
    var sonuc:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(sonuc!)
        
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Sonuc Ekranı"
        
        if sonuc! {
            lblKazanKaybet.text = "Kazandınız"
            lblİfade.image = UIImage(named: "mutlu_resim")
             
        } else {
            lblKazanKaybet.text = "Kaybettiniz"
            lblİfade.image = UIImage(named: "uzgun_resim")
        }
        
    }
    
    @IBAction func btnBaştanBaşla(_ sender: Any) {
        navigationController?.popToRootViewController( animated: true)
    }
    
    
}
