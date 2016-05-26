//
//  ZJLabel.swift
//  ZJLabel
//
//  Created by apple1 on 16/5/25.
//  Copyright © 2016年 庄记. All rights reserved.
//

import UIKit

enum VerticalAlignment{
    case VerticalAlignmentTop  // default
    case VerticalAlignmentMiddle
    case VerticalAlignmentBottom
}
class ZJLabel: UILabel {
  
    var verticalAlignment: VerticalAlignment
    override init(frame: CGRect) {
        verticalAlignment = VerticalAlignment.VerticalAlignmentBottom
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        setNeedsDisplay()

    }
    
    override func drawTextInRect(rect: CGRect) {
        print(rect)
        var rect = self.textRectForBounds(rect, limitedToNumberOfLines: self.numberOfLines)
        super.drawTextInRect(rect)
    }
    

    override func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        var myRect = super.textRectForBounds(bounds, limitedToNumberOfLines: numberOfLines)
        print(myRect)
        switch self.verticalAlignment {
        case .VerticalAlignmentTop:
            myRect.origin.y = bounds.origin.y
        case .VerticalAlignmentBottom:
            myRect.origin.y = bounds.origin.y + bounds.size.height - myRect.size.height
        case .VerticalAlignmentMiddle:
            print("A")
        default:
            myRect.origin.y = bounds.origin.y + (bounds.size.height - myRect.size.height) / 2.0
        }
        return myRect
    }
    
}
