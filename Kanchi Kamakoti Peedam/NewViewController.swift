//
//  NewViewController.swift
//  Kanchi Kamakoti Peedam
//
//  Created by S VISHNU DARSHAN on 14/01/19.
//  Copyright © 2019 S VISHNU DARSHAN. All rights reserved.
//

import UIKit
var temples = ["Shri Kanchi Kamakshi Amman Temple","Ekambarnathar Temple",
"Ulagalanda Perumal Temple","Kumara Kottam Subramanyar","Vaikunta Perumal Temple ","Kailasanathar Temple","Shri Kanchi Kamakoti peetham","Sri Kachabeswarar Temple","Adhi Kamakshi Amman Temple","Pandava Dhoota Perumal Temple","Chitragupta Swamy Temple"]
var tempDesc = ["The Kamakshi Temple is an ancient Hindu Temple dedicated to Kamakshi, the ultimate form of Goddess Lalitha Maha Tripurasundari. It is located in the historic city of Kanchipuram, near Chennai, India.","Ekambareswarar Temple is a Hindu temple dedicated to the deity Shiva, located in the town of Kanchipuram in Tamil Nadu, India. It is significant to the Hindu sect of Saivism as one of the temples associated with the five elements, the Pancha Bhoota Stalas, and specifically the element of earth, or Prithvi",
"Ulagalandha Perumal Temple is a temple dedicated to Vishnu located in Kancheepuram, Tamil Nadu, India. Constructed in the Dravidian style of architecture, the temple is glorified in the Divya Prabandha, the early medieval Tamil canon of the Azhwar saints from the 6th–9th centuries AD",
"The Kumara kottam Temple is a Hindu temple in Kānchipuram, Tamil Nādu, India. It is dedicated to Lord Murugan, the Hindu war god and the son of the gods Shiva and his wife Pārvathi. The temple is also known as the Subramaniya Swāmi temple. The ancient temple was rebuilt in its present form in 1915 CE. The temple is one of the 21 major temples in Kānchipuram and is an important pilgrimage centre.[1] Saint Aruna giri nādhar has sung hymns in praise of the Murugan icon of this temple",
"The Vaikunta Perumal Temple in Uthiramerur, a village in the South Indian state of Tamil Nadu, is dedicated to the Hindu god Vishnu. The temple is constructed in the Dravidian style of architecture. Vishnu is worshipped as Vaikunta Perumal and his consort Lakshmi as Anandavalli.",
"The Kanchi Kailasanathar temple is the oldest structure in Kanchipuram. Located in Tamil Nadu, India, it is a Hindu temple in the Dravidian architectural style. It is dedicated to the Lord Shiva, and is known for its historical importance.",
"Kanchi Kamakoti Peetham, also called the Kanchi matha or the Kanchi monastery, is a Hindu monastic institution, located in Kanchipuram, Tamil Nadu. It is located near a temple dedicated to goddess Kamakshi of the Shaktism tradition, along with a shrine for the Hindu philosopher Adi Shankara.",
"Kachabeswarar Temple, Thirukachur is a Hindu temple dedicated to the deity Shiva, located in Thirukachur, a village in Kanchipuram district in the South Indian state of Tamil Nadu. Shiva is worshipped as Kachabeswarar, and is represented by the lingam. His consort Parvati is depicted as Antanatchi and Kanniyumaiyal.",
"The Kamakshi Temple is an ancient Hindu Temple dedicated to Kamakshi, the ultimate form of Goddess Lalitha Maha Tripurasundari(Parvati). It is located in the historic city of Kanchipuram, near Chennai, India. The Meenakshi Temple in Madurai, the Akilandeswari temple in Thiruvanaikaval near Tiruchirappalli and this Kamakshi temple are the important centers of worship of Goddess, in the state of Tamil Nadu. The Temple was most probably built by the Pallava kings, whose capital was Kanchipuram.",
"Pandavathoothar Perumal Temple or Thirupadagam located in Kanchipuram in the South Indian state of Tamil Nadu, is dedicated to the Hindu god Vishnu. Constructed in the Dravidian style of architecture, the temple is glorified in the Divya Prabandha, the early medieval Tamil canon of the Azhwar saints from the 6th–9th centuries AD. It is one of the 108 Divyadesam dedicated to Vishnu, who is worshipped as Pandava Thoothar Perumal and his consort Lakshmi as Rukmini.",
"Chitragupta temple is a Hindu temple located in Nellukara Street Kanchipuram in the South Indian state of Tamil Nadu. It is one of the rare temples of the Hindu deity Chitragupta, considered to the assistant of Yama, the Hindu god of death"]
var myIndex = 0



class NewViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
 
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (temples.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = temples[indexPath.row]
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }



}
