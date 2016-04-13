//
//  TableViewCell.h
//  CmeZulekha
//
//  Created by Cybraum on 2/9/16.
//  Copyright © 2016 Meridian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property(nonatomic,strong)IBOutlet UILabel *targetLabel,*dateLabel,*priceLabel;
@property(nonatomic,strong)IBOutlet UILabel *balpriceLabel,*bDueLabel,*datpayLabel,*paydueLabel,*payLabel;


@end
