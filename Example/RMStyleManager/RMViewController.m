//
//  ViewController.m
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import "RMStyleManager.h"
#import "RMStylishRoundedButton.h"
#import "RMViewController.h"

@interface RMViewController ()

@property(weak, nonatomic) IBOutlet UIButton *myButton;
@property(nonatomic, strong) UIButton *secondButton;

@end

@implementation RMViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.secondButton =
      [[RMStylishRoundedButton alloc] initWithFrame:CGRectMake(10, 150, 200, 40)
                                           andStyle:@"randButtonStyle"];
  [self.view addSubview:_secondButton];
  [self.secondButton addTarget:[RMStyleManager class]
                        action:@selector(reloadAllStyles)
              forControlEvents:UIControlEventTouchUpInside];
  [self.secondButton setTitle:@"Change style" forState:UIControlStateNormal];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)swithcValueCHanged:(UISwitch *)sender {
  self.myButton.enabled = sender.isOn;
}

@end
