import SwiftUI

public struct Digiconfig {
    public var haut:CGFloat = 50
    public var large:CGFloat = 50
    public var fore = Color.yellow
    public var mid = Color.clear
    public var back = Color.blue
    public var bord = Color.pink
    public var press = Color.green
    public var disabled = Color.gray
    public var padding:CGFloat = 0
    
    var fontscale: CGFloat = 0.5
    
    // public var weight = Font.Weight.bold
    public var font: Font {
        Font( CTFontCreateUIFontForLanguage(.system, sqrt(haut*large) * fontscale,  nil)! )
    }
    
    public init() {}
    
    public init(_ w:CGFloat, _ h:CGFloat, _ s:CGFloat = 0,
                _ f:Color = .yellow, _ m:Color = .clear, _ b:Color = .blue, _ l:Color = .black,
                _ p:Color = .green, _ d:Color = .gray) {
        haut = h
        large = w
        fore = f
        mid = m
        back = b
        bord = l
        press = p
        disabled = d
        padding = s
    }
    
    public init (_ conf:Digiconfig, _ fs:CGFloat = 1) {
        haut = conf.haut
        large = conf.large
        fore = conf.fore
        mid = conf.mid
        back = conf.back
        bord = conf.bord
        press = conf.press
        disabled = conf.disabled
        padding = conf.padding
        fontscale = fs
    }
    
    public func scalefont(_ fs:CGFloat) -> Digiconfig {
        return Digiconfig(self, fs)
    }
    
    // scale size with same colors
    public func scale(_ s:CGFloat) -> Digiconfig {
        let h = haut * s
        let w = large * s
        return Digiconfig(w, h, padding, fore, mid, back, bord, press, disabled)
    }
    
    // change size with same colors
    public func size(_ w:CGFloat, _ h:CGFloat) -> Digiconfig {
        return Digiconfig(w, h, padding, fore, mid, back, bord, press, disabled)
    }
    
    // change colors with same size
    public func colore(_ colors:[Color]) -> Digiconfig {
        switch colors.count {
        case 1:
            return Digiconfig(large, haut, padding, colors[0])
        case 2:
            return Digiconfig(large, haut, padding, colors[0],colors[1])
        case 3:
            return Digiconfig(large, haut, padding, colors[0],colors[1],colors[2])
        case 4:
            return Digiconfig(large, haut, padding, colors[0],colors[1],colors[2],colors[3])
        case 5:
            return Digiconfig(large, haut, padding, colors[0],colors[1],colors[2],colors[3],colors[4])
        case 6:
            return Digiconfig(large, haut, padding, colors[0],colors[1],colors[2],colors[3],colors[4],colors[5])
        default:
            return self
        }
    }
}
