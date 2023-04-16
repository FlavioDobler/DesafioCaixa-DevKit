enum Cedulas: Int {
    case cinquenta = 50
    case dez = 10
    case cinco = 5
    case dois = 2
}

var count50 = 0
var count10 = 0
var count5 = 0
var count2 = 0

func giveMoneyPls(_ valor: Int) -> String {
    var amount = valor
    
    while amount > 0 {
        if amount >= Cedulas.cinquenta.rawValue {
            count50 += 1
            amount -= Cedulas.cinquenta.rawValue
        } else if amount >= Cedulas.dez.rawValue {
            count10 += 1
            amount -= Cedulas.dez.rawValue
        } else if amount >= Cedulas.cinco.rawValue && amount % 5 == 0 {
            count5 += 1
            amount -= Cedulas.cinco.rawValue
        } else {
            count2 += 1
            amount -= Cedulas.dois.rawValue
        }
    }
    
    return "O Valor de notas de Cinquenta é \(count50), de Dez é \(count10), de Cinco é \(count5), e de Dois é \(count2)."
}

var dinheiros = giveMoneyPls(40)
print(dinheiros)
