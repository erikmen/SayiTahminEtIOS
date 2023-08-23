//
//  TahminEkrani.swift
//  SayiTahminEt
//
//  Created by Kaan Deniz Erikmen on 23.08.2023.
//

import UIKit

class TahminEkrani: UIViewController {

    @IBOutlet weak var lblKalanHak: UILabel!
    @IBOutlet weak var lblYardım: UILabel!
    @IBOutlet weak var textFTahmin: UITextField!
    
    var rastgeleSayi:Int?
    var hak = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rastgeleSayi = Int.random(in: 1...100)
        print("rastgele : \(rastgeleSayi!)")

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gelenVeri = sender as? Bool{
            let gidilecekVC = segue.destination as! SonucEkrani
            gidilecekVC.sonuc = gelenVeri
        }
    }
    
    @IBAction func btnTahminEt(_ sender: Any) {
        lblYardım.isHidden = false
        hak-=1
        
        if let veri = textFTahmin.text{
            if let tahmin = Int(veri){
                if hak != 0{
                    if tahmin == rastgeleSayi!{
                        let sonuc = true
                        performSegue(withIdentifier: "TahminToSonuc", sender: sonuc)
                        
                    }
                    if tahmin < rastgeleSayi!{
                        lblYardım.text = "Artır"
                        lblKalanHak.text = "Kalan hak \(hak)"
                    }
                    if tahmin > rastgeleSayi!{
                        lblYardım.text = "Azalt"
                        lblKalanHak.text = "Kalan hak \(hak)"
                    }
                    
                }else{
                    let sonuc = false
                    performSegue(withIdentifier: "TahminToSonuc", sender: sonuc)
                }
            }
        }
        
        
    }
    
    

}
