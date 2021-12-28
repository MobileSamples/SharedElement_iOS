//
//  DataManager.swift
//  SharedEelementDemo
//
//  Created by Nishee S on 30/11/21.
//

import Foundation

class DataManager {

    private init() {}

    static let data: [CellData] = [
        .init(image: #imageLiteral(resourceName: "ic_taj_mahal"), title: "Taj Mahal", description: "The Taj Mahal is an Islamic religious building, mosque and tomb built in the 17th century by king Shah Jahan in memory of his wife, Mumtaz Mahal. Its chief architect was Ustad Ahmad Lahauri. The building is in the city of Agra, Uttar Pradesh. ... It is located on the south bank of Yamuna river in Agra."),
        .init(image: #imageLiteral(resourceName: "ic_gateway_of_india"), title: "Gateway Of India", description: "The Gateway of India is an arch monument built during the 20th century in Bombay, India. The monument was erected to commemorate the landing of King George V and Queen Mary at Apollo Bunder on their visit to India in 1911. ... It served to allow entry and access to India."),
        .init(image: #imageLiteral(resourceName: "ic_varanasi"), title: "Varanasi City", description: "Varanasi is one of the oldest continuously inhabited cities in the world. Its early history is that of the first Aryan settlement in the middle Ganges valley. Varanasi was the capital of the kingdom of Kashi during the time of the Buddha (6th century bce), who gave his first sermon nearby at Sarnath. ..."),
        .init(image: #imageLiteral(resourceName: "ic_red_fort"), title: "Red Fort", description: "The Red Fort (Lal Qila) is a monument built in 1638 that rises 33 meters (108 ft) above Old Delhi. It was built by the Mughal Emperor Shah Jahan. ... The Red Fort was originally referred to as \"Qila-i-Mubarak\" (the blessed fort), because it was the residence of the royal family"),
        
    ]

}
