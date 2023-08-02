//
//  Misc.swift
//  CobyDraw
//
//  Created by COBY_PRO on 2023/08/02.
//

import Foundation

let everydayObjects = ["고양이", "강아지", "사자", "호랑이", "코끼리", "원숭이", "뱀", "기린", "팬더", "하마", "치타", "물범", "오랑우탄", "펭귄", "돌고래", "수달", "카멜", "사막여우", "순록", "하이에나", "표범", "해마", "숲 속 족제비", "앵무새", "오소리", "두더지", "불독", "북극곰", "기니피그", "땅다람쥐", "침팬지", "도마뱀", "알파카", "커멘도어", "닭", "북극여우", "바다사자", "얼룩말", "카라카라", "피라냐", "불가사리", "파충류", "캥거루", "스컹크", "북극햄스터", "두루미", "하늘다람쥐", "금붕어", "말", "토끼", "코알라", "귀뚜라미", "악어", "오리", "바다거북", "하이랙스", "밍크", "캥거루쥐", "너구리", "치와와", "양", "오징어", "바다표범", "범고래", "사막고양이", "오리너구리", "고슴도치", "거북이", "뱀", "바다뱀", "지네", "비버", "불가사리", "알파카", "라마", "침팬지", "치타", "긴꼬리원숭이", "몽구스", "아나콘다", "참새", "올빼미", "참새", "호랑나비", "북극곰", "사막여우", "레서판다", "슈베르트 곰", "토끼", "햄스터", "쥐", "오소리", "하이에나", "가젤"]

enum PlayerAuthState: String {
    case authenticating = "Logging in to Game Center..."
    case unauthenticated = "please sign in to Game Center to play."
    case authenticated = ""
    case error = "There was an error logging into Game Center."
    case restricted = "You're not allowed to play multiplayer games!"
}

struct PastGuess: Identifiable {
    let id = UUID()
    var message: String
    var correct: Bool
}
 
let maxTimeRemaining = 100
