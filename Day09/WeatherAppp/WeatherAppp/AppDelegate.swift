//
//  AppDelegate.swift
//  WeatherAppp
//
//  Created by Trung Le on 5/21/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow (frame: UIScreen.main.bounds )
        
        let mainWeather = MainWeatherController(nibName: "MainWeatherController", bundle: nil)
        
        window?.rootViewController = mainWeather
        window?.makeKeyAndVisible()
        
        return true
    }

}

