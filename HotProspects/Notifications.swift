//
//  Notifications.swift
//  HotProspects
//
//  Created by Danjuma Nasiru on 01/03/2023.
//

import SwiftUI
import UserNotifications

struct Notifications: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {success, error in
                    if success{
                        print("All set!")
                    }else if let error = error{
                        print(error.localizedDescription)
                    }
                })
            }

            Button("Schedule Notification") {
                let content = UNMutableNotificationContent()
                content.title = "Feed the cat"
                content.subtitle = "It's time for her lunch"
                content.sound = UNNotificationSound.default
                let imageName = "ales-krivec-15949@2x"
                if let imageURL = Bundle.main.url(forResource: imageName, withExtension: "jpg"){
                    do {
                        let attachment = try UNNotificationAttachment(identifier: imageName, url: imageURL)
                        content.attachments = [attachment]
                    } catch  {
                        print("failed")
                    }
                    
                }
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
