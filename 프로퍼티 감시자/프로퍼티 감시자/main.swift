import Foundation

struct Money{
    var currencyRate:Double=1100{
        willSet(newRate){
            print("환율이 \(currencyRate)에서 \(newRate)로 변경될 예정입니다.")
        }
        didSet(oldRate){
            print("환율이 \(oldRate)에서 \(currencyRate)로 변경되었습니다.")
        }
    }
    
    var dollar:Double=0{
        willSet{
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다.")
        }
        didSet{
            print("\(oldValue)달러에서 \(dollar)로 변경되었습니다.")
        }
    }
    
    var won:Double{
        get{
            return dollar*currencyRate
        }
        set{
            dollar=newValue/currencyRate
        }
    }
}

var moneyInMyPocket:Money = Money()
moneyInMyPocket.currencyRate = 1150
moneyInMyPocket.dollar = 10
print(moneyInMyPocket.won)
