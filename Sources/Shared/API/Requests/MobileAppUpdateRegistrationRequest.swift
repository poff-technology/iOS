//
//  MobileAppUpdateRegistrationRequest.swift
//  HomeAssistant
//
//  Created by Robbie Trencheny on 9/7/16.
//  Copyright © 2016 Robbie Trencheny. All rights reserved.
//

import Foundation
import ObjectMapper

class MobileAppUpdateRegistrationRequest: Mappable {
    var AppData: [String: Any]?
    var AppVersion: String?
    var DeviceName: String?
    var Manufacturer: String?
    var Model: String?
    var OSVersion: String?

    init() {}

    required init?(map: Map) {}

    func mapping(map: Map) {
        AppData             <- map["app_data"]
        AppVersion          <- map["app_version"]
        DeviceName          <- map["device_name"]
        Manufacturer        <- map["manufacturer"]
        Model               <- map["model"]
        OSVersion           <- map["os_version"]
    }
}
