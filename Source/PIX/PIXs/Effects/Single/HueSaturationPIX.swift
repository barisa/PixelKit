//
//  HueSaturationPIX.swift
//  PixelKit
//
//  Created by Hexagons on 2018-09-04.
//  Open Source - MIT License
//

public class HueSaturationPIX: PIXSingleEffect, PIXAuto {
    
    override open var shader: String { return "effectSingleHueSaturationPIX" }
    
    // MARK: - Public Properties

    public var hue: LiveFloat = 0.0
    public var saturation: LiveFloat = 0.5
    
    // MARK: - Property Helpers
    
    override public var liveValues: [LiveValue] {
        return [hue, saturation]
    }
    
    // MARK: - Life Cycle
    
    public required init() {
        super.init()
        name = "hueSaturation"
    }
    
}

public extension PIXOut {
    
    func _hue(_ hue: LiveFloat) -> HueSaturationPIX {
        let hueSatPix = HueSaturationPIX()
        hueSatPix.name = "hue:hueSaturation"
        hueSatPix.inPix = self as? PIX & PIXOut
        hueSatPix.hue = hue
        return hueSatPix
    }
    
    func _saturation(_ saturation: LiveFloat) -> HueSaturationPIX {
        let hueSatPix = HueSaturationPIX()
        hueSatPix.name = "saturation:hueSaturation"
        hueSatPix.inPix = self as? PIX & PIXOut
        hueSatPix.saturation = saturation
        return hueSatPix
    }
    
    func _monochrome() -> HueSaturationPIX {
        let hueSatPix = HueSaturationPIX()
        hueSatPix.name = "monochrome:hueSaturation"
        hueSatPix.inPix = self as? PIX & PIXOut
        hueSatPix.saturation = 0.0
        return hueSatPix
    }
    
}