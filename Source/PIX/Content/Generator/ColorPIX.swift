//
//  ColorPIX.swift
//  Pixels
//
//  Created by Hexagons on 2018-08-23.
//  Open Source - MIT License
//

public class ColorPIX: PIXGenerator, PIXAuto {
    
    override open var shader: String { return "contentGeneratorColorPIX" }
    
    // MARK: - Property Helpers
    
    override var liveValues: [LiveValue] {
        return [bgColor]
    }
    
}
