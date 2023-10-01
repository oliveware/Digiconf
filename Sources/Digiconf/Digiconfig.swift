import SwiftUI

public struct Digiconfig {
    public var haut:CGFloat = 50
    public var large:CGFloat = 50
    public var fore = Color.yellow
    public var back = Color.clear
    public var bord = Color.pink
    public var press = Color.green
    public var disabled = Color.gray
    public var padding:CGFloat = 0
    
    // public var weight = Font.Weight.bold
    public var font: Font {
        Font( CTFontCreateUIFontForLanguage(.system, (haut+large)/2,  nil)! )
    }
    
    public init() {}
    
    public init(_ w:CGFloat, _ h:CGFloat, _ m:CGFloat = 0,
                _ f:Color = .yellow, _ b:Color = .blue, _ l:Color = .black,
                _ p:Color = .green, _ d:Color = .gray) {
        haut = h
        large = w
        fore = f
        back = b
        bord = l
        press = p
        disabled = d
        padding = m
    }
    
    public init (_ conf:Digiconfig) {
        haut = conf.haut
        large = conf.large
        fore = conf.fore
        back = conf.back
        bord = conf.bord
        press = conf.press
        disabled = conf.disabled
        padding = conf.padding
       // weight = conf.weight
    }
    
    public func scale(_ s:CGFloat) -> Digiconfig {
        let h = haut * s
        let w = large * s
        return Digiconfig(w, h, padding, fore, back, bord, press, disabled)
    }
    
    // change size with same colors
    public func size(_ w:CGFloat, _ h:CGFloat) -> Digiconfig {
        return Digiconfig(w, h, padding, fore, back, bord, press, disabled)
    }
    // change colors with same size
    public func colore(_ colors:[Color]) -> Digiconfig {
        return Digiconfig(large, haut, padding, colors[0],colors[1],colors[2],colors[3],colors[4])
    }
}
