enum Cedulas: Int {
    case cinquenta = 50
    case dez = 10
    case cinco = 5
    case dois = 2
}

var estoqueCinquenta = 3
var estoqueDez = 3
var estoqueCinco = 3
var estoqueDois = 3

var count50 = 0
var count10 = 0
var count5 = 0
var count2 = 0

var maxCinquenta = Cedulas.cinquenta.rawValue * estoqueCinquenta
var maxDez = Cedulas.dez.rawValue * estoqueDez
var maxCinco = Cedulas.cinco.rawValue * estoqueCinco
var maxDois = Cedulas.dois.rawValue * estoqueDois
var maxValue = maxCinquenta + maxDez + maxDois + maxCinco

func giveMoneyPls(_ valor: Int) -> String {
    var amount = valor
    
    while amount > 0 && amount <= maxValue {
        
        if amount >= Cedulas.cinquenta.rawValue && estoqueCinquenta > 0 {
            count50 += 1
            amount -= Cedulas.cinquenta.rawValue
            estoqueCinquenta -= 1
        } else if amount >= Cedulas.dez.rawValue && estoqueDez > 0 {
            count10 += 1
            amount -= Cedulas.dez.rawValue
            estoqueDez -= 1
        } else if amount >= Cedulas.cinco.rawValue && amount % 5 == 0 && estoqueCinco > 0 {
            count5 += 1
            amount -= Cedulas.cinco.rawValue
            estoqueCinco -= 1
        } else if estoqueDois > 0 {
            count2 += 1
            amount -= Cedulas.dois.rawValue
            estoqueDois -= 1
        } else  {
           
        }
    }
    
    if amount == 0{
        return("O Valor de notas de Cinquenta é \(count50), de Dez é \(count10), de Cinco é \(count5), e de Dois é \(count2).")
    } else {
        return("Valor Indisponivel!!")
    }
    
}

var dinheiros = giveMoneyPls(198)
print(dinheiros)
