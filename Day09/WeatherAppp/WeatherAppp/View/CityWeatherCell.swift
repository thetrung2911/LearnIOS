//
//  CityWeatherCell.swift
//  WeatherAppp
//
//  Created by Trung Le on 5/21/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class CityWeatherCell: UICollectionViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var weatherBackgrounImageView: UIImageView!
    @IBOutlet weak var currentDegreeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
