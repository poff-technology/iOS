//
//  MobileAppRegistrationResponse.swift
//  Shared
//
//  Created by Robert Trencheny on 2/27/19.
//  Copyright © 2019 Robbie Trencheny. All rights reserved.
//

import Foundation
import ObjectMapper

public class MobileAppRegistrationResponse: Mappable {
    public var CloudhookURL: URL?
    public var RemoteUIURL: URL?
    public var WebhookID: String = "THIS_SHOULDNT_BE_POSSIBLE_LOL"
    public var WebhookSecret: String?

    public required init?(map: Map) {}

    public func mapping(map: Map) {
        CloudhookURL        <- (map["cloudhook_url"], URLTransform())
        RemoteUIURL         <- (map["remote_ui_url"], URLTransform())
        WebhookID           <- map["webhook_id"]
        WebhookSecret       <- map["secret"]
    }
}
