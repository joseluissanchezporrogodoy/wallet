//
//  ViewController.m
//  Wallet
//
//  Created by jose luis sanchez-porro godoy on 09/06/2018.
//  Copyright © 2018 jose luis sanchez-porro godoy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *etiqueta;
@property (weak, nonatomic) IBOutlet UIButton *boton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)touchUpInside:(id)sender {
    [self.etiqueta setText:@"Me han pulsado"];
}


@end
