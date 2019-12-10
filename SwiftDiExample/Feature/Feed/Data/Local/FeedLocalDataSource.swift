//
//  FeedLocalDataSource.swift
//  SwiftDiExample
//
//  Created by Endtry on 9/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import Foundation
import DIKit
import Promises

class FeedLocalDataSource: FeedDataSource {
    
    func getFeedList() -> Promise<Array<Feed>> {
        return Promise { (resolve, reject) in
            
            var feedList: [Feed] = []
            feedList.append(Feed(id: 1, title: "มาใช้ Wire เพื่อช่วยทำ Dependency Injection กันเถอะ", desc: "", image: "https://prongbang.github.io/assets/images/golang/9.png", category: "Golang", author: "prongbang"))
            feedList.append(Feed(id: 2, title: "มาดูว่าเขียน API ด้วย Golang ที่ Deploy บน Docker ว่าจะต้องใช้ทรัพยากรเครื่องไปเท่าไร เมื่อเทียบกับ Ktor ที่เขียนด้วย Kotlin", desc: "", image: "https://prongbang.github.io/assets/images/golang/8.png", category: "Kotlin", author: "prongbang"))
            feedList.append(Feed(id: 3, title: "มา Deploy Golang บน Heroku กันเถอะ", desc: "", image: "https://prongbang.github.io/assets/images/golang/7.png", category: "Golang", author: "prongbang"))
            feedList.append(Feed(id: 4, title: "หาส่วนของ code ที่ไม่ถูกทดสอบด้วย Test Coverage กันเถอะ", desc: "", image: "https://prongbang.github.io/assets/images/golang/6.png", category: "Golang", author: "prongbang"))
            feedList.append(Feed(id: 5, title: "มาเขียน RESTful API หรือ Microservice โดยใช้ Clean Architecture กัน", desc: "", image: "https://prongbang.github.io/assets/images/golang/5.png", category: "Golang", author: "prongbang"))
            feedList.append(Feed(id: 6, title: "เมื่ออยากให้ Android รับ/ส่งข้อมูลที่มีความเร็วกว่า REST ลองเปลี่ยนมาใช้ gRPC สิ", desc: "", image: "https://prongbang.github.io/assets/images/android/15.png", category: "Android", author: "prongbang"))
            feedList.append(Feed(id: 7, title: "อยากมีระบบจัดการ photos, videos, log files, backups ใช่มั้ย ใช้ Minio สิรอไร", desc: "", image: "https://prongbang.github.io/assets/images/docker/2.png", category: "Docker", author: "prongbang"))
            feedList.append(Feed(id: 8, title: "อยากจัดการ Docker แบบ GUI ใช่มั้ย ใช้ Portainer สิรอไร", desc: "", image: "https://prongbang.github.io/assets/images/docker/1.png", category: "Docker", author: "prongbang"))
            feedList.append(Feed(id: 9, title: "ทำ Paging หรือ Load more ด้วย Paging library แบบคร่าว ๆ", desc: "", image: "https://prongbang.github.io/assets/images/android/14.png", category: "Android", author: "prongbang"))
            feedList.append(Feed(id: 10, title: "รู้ยังว่า Firebase Realtime Database สามารถทำให้เป็น REST API ได้โดยไม่ต้องเขียน Code", desc: "", image: "https://prongbang.github.io/assets/images/firebase/1.png", category: "Firebase", author: "prongbang"))
            
            resolve(feedList)
        }
    }
}
