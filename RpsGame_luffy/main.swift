import Foundation

func action( com: Int,  user: Int) {
    switch user {
    case 0:
        endGame()
    case 1...3:
        startGame(comChoice: com, userChoice: user)
    default:
        print("잘못된 입력입니다. 다시 시도해주세요.")
    }

}

func startGame(comChoice com: Int, userChoice user: Int) {
    if com == user {
        print("비겼습니다!")
    } else if com == user - 1 || com == user + 2 {
        print("이겼습니다!")
        endGame()
    } else {
        print("졌습니다!")
        endGame()
    }
}

func endGame() {
    print("게임 종료")
    isWorking.toggle()
}

var isWorking: Bool = true

while isWorking {
    print("가위(1), 바위(2), 보(3)! <종료: 0> : ", terminator: "")
    let comChoice: Int = Int.random(in: 1...3)
    print(comChoice)

    if let input = readLine(), let userChoice = Int(input) {
        action(com: comChoice, user: userChoice)
    } else {
        break
    }
}

