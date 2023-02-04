

public enum CardColor:String{
    case Spades
    case Hearts
    case Clubs
    case Diamond
}

public func <(_ lhs:CardColor, _ rhs:CardColor) -> Bool{
    return cardColorValue(lhs)<cardColorValue(rhs)
}
public func <=(_ lhs:CardColor, _ rhs:CardColor) -> Bool{
    return cardColorValue(lhs)<=cardColorValue(rhs)
}
public func >(_ lhs:CardColor, _ rhs:CardColor) -> Bool{
    return cardColorValue(lhs)>cardColorValue(rhs)
}
public func >=(_ lhs:CardColor, _ rhs:CardColor) -> Bool{
    return cardColorValue(lhs)>=cardColorValue(rhs)
}

fileprivate func cardColorValue(_ cardColor:CardColor) -> Int{
    switch cardColor{
    case .Diamond:  return 0
    case .Hearts:   return 1
    case .Spades:   return 2
    case .Clubs:    return 3
    }
}
public enum CardValue{
    case Seven
    case Eight
    case Nine
    case Ten
    case Jack
    case Queen
    case King
    case Ace
}

public func cardValueValue(_ cardValue:CardValue) -> Int{
    switch cardValue{
    case .Seven: return 0
    case .Eight: return 0
    case .Nine: return 0
    case .Ten: return 10
    case .Jack: return 2
    case .Queen: return 3
    case .King: return 4
    case .Ace: return 11
    }
}

fileprivate func cardValueBasicValue(_ cardValue:CardValue) -> Int{
    switch cardValue{
    case .Seven: return 0
    case .Eight: return 1
    case .Nine: return 2
    case .Ten: return 5
    case .Jack: return 7
    case .Queen: return 3
    case .King: return 4
    case .Ace: return 6
    }
}

public func <(_ lhs:CardValue, _ rhs:CardValue) -> Bool{
    return cardValueBasicValue(lhs)<cardValueBasicValue(rhs)
}
public func <=(_ lhs:CardValue, _ rhs:CardValue) -> Bool{
    return cardValueBasicValue(lhs)<=cardValueBasicValue(rhs)
}
public func >(_ lhs:CardValue, _ rhs:CardValue) -> Bool{
    return cardValueBasicValue(lhs)>cardValueBasicValue(rhs)
}
public func >=(_ lhs:CardValue, _ rhs:CardValue) -> Bool{
    return cardValueBasicValue(lhs)>=cardValueBasicValue(rhs)
}
struct Card{
    let color:CardColor;
    let value:CardValue;
    
    func getImageName() -> String{
        
    }
}
