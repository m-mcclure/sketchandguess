//
//  WordsTableViewCell.m
//  words-drawings
//
//  Created by Matthew McClure on 9/21/15.
//  Copyright © 2015 Matthew McClure. All rights reserved.
//

#import "WordsTableViewCell.h"
#import "ScrollTableViewController.h"
#import "PassItOnViewController.h"

@interface WordsTableViewCell () <UITextFieldDelegate>

@end

@implementation WordsTableViewCell


//
//- (void)textFieldDidBeginEditing:(UITextField *)textField {
//  [self animateTextField: textField up: YES]
//  
//}
//- (void)textFieldDidBeginEditing:(UITextField *)textField {
//  [UIView beginAnimations:nil context:NULL];
//  [UIView setAnimationDelegate:self];
//  [UIView setAnimationDuration:0.5];
//  [UIView setAnimationBeginsFromCurrentState:YES];
//  textField.frame = CGRectMake(textField.frame.origin.x, (textField.frame.origin.y - 100.0), textField.frame.size.width, textField.frame.size.height);
//  [UIView commitAnimations];
//}
//
//- (void)textFieldDidEndEditing:(UITextField *)textField {
//  [UIView beginAnimations:nil context:NULL];
//  [UIView setAnimationDelegate:self];
//  [UIView setAnimationDuration:0.5];
//  [UIView setAnimationBeginsFromCurrentState:YES];
//  textField.frame = CGRectMake(textField.frame.origin.x, (textField.frame.origin.y + 100.0), textField.frame.size.width, textField.frame.size.height);
//  [UIView commitAnimations];
//}
//
//
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//  [_textField resignFirstResponder];
//}

- (IBAction)doneButtonPressed:(UIButton *)sender {

  [[NSNotificationCenter defaultCenter] postNotificationName:@"doneGuessingNotification" object:self];
}

-(BOOL) textFieldShouldReturn: (UITextField *) textField
{

  [_textField resignFirstResponder];

  return YES;
}

- (void)awakeFromNib {
    // Initialization code
  _textField.delegate = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
