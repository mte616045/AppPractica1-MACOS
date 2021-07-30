//
//  ViewController.h
//  AppPractica1
//
//  Created by MTWDM301-2021 on 10/07/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTableViewDataSource>
{
    NSMutableArray *resultados;
}

@property (strong) IBOutlet NSTextField *txtNumu;
@property (strong) IBOutlet NSTextField *txtNumd;

@property (strong) IBOutlet NSComboBox *cmbOperador;

@property (strong) IBOutlet NSTableView *tabla;


- (IBAction)Calcular:(id)sender;




@end

