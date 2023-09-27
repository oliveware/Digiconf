import SwiftUI

public struct Digiconfig {
    public var haut:CGFloat = 50
    public var large:CGFloat = 25
    public var lun = Color.yellow
    public var nul = Color.gray
    public var fond = Color.black
    
    public var weight = Font.Weight.bold
    public var font: Font {
        Font( CTFontCreateUIFontForLanguage(.system, (haut+large)/2,  nil)! )
    }
    
    public init() {}
    
    public init(_ w:CGFloat, _ h:CGFloat, _ u:Color = .yellow, _ z:Color = .gray, _ f:Color = .black) {
        haut = h
        large = w
        lun = u
        nul = z
        fond = f
    }
    
    public init (_ conf:Digiconfig) {
        haut = conf.haut
        large = conf.large
        lun = conf.lun
        nul = conf.nul
        fond = conf.fond
    }
    
    public func scale(_ s:CGFloat) -> Digiconfig {
        let h = haut * s
        let w = large * s
        return Digiconfig(w, h, lun, nul, fond)
    }
    
    // change size with same colors
    public func size(_ w:CGFloat, _ h:CGFloat) -> Digiconfig {
        return Digiconfig(w, h, lun, nul, fond)
    }
    // change colors with same size
    public func colore(_ colors:[Color]) -> Digiconfig {
        return Digiconfig(large, haut, colors[0],colors[1],colors[2])
    }
}
