//
//  TableViewCell.m
//  CmeZulekha
//
//  Created by Cybraum on 2/9/16.
//  Copyright © 2016 Meridian. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize targetLabel,priceLabel,dateLabel;
@synthesize balpriceLabel,bDueLabel,datpayLabel,paydueLabel,payLabel;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
