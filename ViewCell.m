//
//  ViewCell.m
//  ColorList
//
//  Created by Steeve Fong on 3/26/13.
//  Copyright (c) 2013 Steeve Fong. All rights reserved.
//

#import "ViewCell.h"

@implementation ViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
