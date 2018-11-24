//
//  QuestionBank.swift
//  realFan
//
//  Created by tunchabird2 on 15/11/2561 BE.
//  Copyright © 2561 tunchanok. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init(){
        list.append(Question(image: "2", questionText:"1. คนในภาพนี้รับบทเป็นใคร", choiceA: "1. ฉี",choiceB: "2. อี้", choiceC: "3. เต้ย", choiceD: "4. ก๋วยเตี๋ยว", answer: 1))
        
        list.append(Question(image: "kim", questionText: "2. ฉากนี้คิมกำลังทำอะไร", choiceA: "1. สระผมให้เอิร์น",choiceB: "2. สระผมพีท", choiceC: "3. สระผมให้อี้", choiceD: "4. สระผมให้ลูกค้า", answer: 3))
        
        list.append(Question(image: "Ai", questionText: "3. ฉากนี้อี้กำลังคุยโทรศัพท์กับใคร", choiceA: "1. เอิร์น",choiceB: "2. ม๊า", choiceC: "3. พงษ์", choiceD: "4. กิ๋มคริส", answer: 3))
        
        list.append(Question(image: "car", questionText: "4. รถคันนี้คือรถของใคร", choiceA: "1. พีท",choiceB: "2. อี้", choiceC: "3. เอิร์น", choiceD: "4. ภัสสร", answer: 1))
        
        list.append(Question(image: "men", questionText: "5. ตัวละครในภาพชื่ออะไร ตามลำดับ", choiceA: "1. อี้,เต้ย,ก๋วยเตี๋ยว,เต๋า,เอิร์น",choiceB: "2. อี้,เอิร์น,ก๋วยเตี๋ยว,เต๋า,เต้ย", choiceC: "3. อี้,เต้ย,เต๋า,ก๋วยเตี๋ยว,เอิร์น", choiceD: "4. อี้,เอิร์น,เต๋า,ก๋วยเตี๋ยว,เต้ย", answer: 4))
        
        list.append(Question(image: "sing", questionText: "6. พีทกำลังทำอะไร", choiceA: "1. ร้องเพลง",choiceB: "2. ขอตังม๊า", choiceC: "3. ทะเลาะกับม๊า", choiceD: "4. ขอรถคันใหม่", answer: 1))
        
        list.append(Question(image: "mama", questionText: "7. ฉากนี้อาม่ากำลังคุยอยู่กับใคร", choiceA: "1. ภัสสร",choiceB: "2. คริส", choiceC: "3. น้ำผึ้ง", choiceD: "4. นัท", answer: 1))
        
        list.append(Question(image: "nipa", questionText: "8. ฉากที่นิภาอยู่ในโรงพยาบาลครั้งนี้เป็นตอนที่เท่าไหร่ของละครเลือดข้นคนจาง", choiceA: "1. ตอนที่ 4",choiceB: "2. ตอนที่ 5", choiceC: "3. ตอนที่ 8", choiceD: "4. ตอนที่ 11", answer: 2))
        
        list.append(Question(image: "mov", questionText: "9. ฉีเปิดหนังเรื่องอะไรให้นิภาดู", choiceA: "1. ATM เออรักเออเร่อ",choiceB: "2. โฮมสเตย์", choiceC: "3. พรจากฟ้า", choiceD: "4. เพื่อนที่ระลึก", answer: 3))
        
        list.append(Question(image: "meimei", questionText: "10. ใครอยู่ในแท็กซี่", choiceA: "1. เวกัส",choiceB: "2. อี้", choiceC: "3. เหม่เหม", choiceD: "4. มาเก๊า", answer: 3))
        
    }
    
    
    
    
}
