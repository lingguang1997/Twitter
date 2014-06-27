//
//  StockChartTAbleViewCellTableViewCell.swift
//  TwitterStock
//
//  Created by Zijiao Liu on 6/26/14.
//  Copyright (c) 2014 Zijiao Liu. All rights reserved.
//

import UIKit

class StockChartTAbleViewCellTableViewCell: UITableViewCell {

    var _backgroundGradient: CGGradientRef?


    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Initialization code
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func drawRect(rect: CGRect)  {
        var ctx = UIGraphicsGetCurrentContext()

        var dataRect = self.closingDataRect()
        var volumeRect = self.volumeDataRect()

        self.drawBackgroundGradient(ctx)
        self.drawVerticalGridInRect(dataRect, volumeGraphHeight: CGRectGetHeight(volumeRect), priceLabelWidth: 0)
        self.drawHorizontalGridInRect(dataRect)
        self.drawLinePatternUnderClosingData(dataRect)
        self.drawVolumeDataInRect(volumeRect)
        self.drawMonthNamesTextUnderDataRect(dataRect, volumeGraphHeight: 0)
    }

    func closingDataRect() -> CGRect {
        return CGRectZero
    }

    func volumeDataRect() -> CGRect {
        return CGRectZero
    }

    func backgroundGradient() -> CGGradientRef {
        if !_backgroundGradient {
            let colors = [48.0 / 255.0, 61.0 / 255.0]
//            , 114.0 / 255.0, 1.0,
//                          33.0 / 255.0, 47.0 / 255.0, 113.0 / 255.0, 1.0,
//                          20.0 / 255.0, 33.0 / 255.0, 104.0 / 255.0, 1.0,
//                          20.0 / 255.0, 33.0 / 255.0, 104.0 / 255.0, 1.0]
            let colorStops = [0.0, 0.5, 0.5, 1.0]
            var colorSpace = CGColorSpaceCreateDeviceRGB()
            _backgroundGradient = CGGradientCreateWithColorComponents(colorSpace, colors, colorStops, 4)
        }
        return _backgroundGradient!
    }

    func drawBackgroundGradient(ctx: CGContext) {
        var startPoint = CGPointZero
        var endPoint = CGPointMake(0.0, CGRectGetHeight(self.bounds))
        CGContextDrawLinearGradient(ctx, self.backgroundGradient(), startPoint, endPoint, 0)
    }

    func drawVerticalGridInRect(rect: CGRect, volumeGraphHeight height: CGFloat, priceLabelWidth width: CGFloat) {
        
    }

    func drawHorizontalGridInRect(rect: CGRect) {
        
    }

    func drawLinePatternUnderClosingData(rect: CGRect) {
        
    }

    func drawVolumeDataInRect(rect: CGRect) {
        
    }

    func drawMonthNamesTextUnderDataRect(rect: CGRect, volumeGraphHeight height: CGFloat) {
        
    }
}
