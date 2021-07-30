//
//  ViewController.m
//  AppPractica1
//
//  Created by MTWDM301-2021 on 10/07/21.
//

#import "ViewController.h"
#import "Datos.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
        resultados = [[NSMutableArray alloc] init];
        
        //MARK: Ejemplo de prueba
        Datos *objDatos = [Datos new];
        [objDatos setNumu:@"5"];
        [objDatos setNumd:@"9"];
        [objDatos setOperador:@"Suma"];
        [objDatos setResultado:@"14"];
        
        //MARK: Se agrega el elemento a la lista
        [resultados addObject:objDatos];
        
        //MARK: Refrescar la tabla
        [_tabla reloadData];
    
        //NSLOg
        NSLog(@"Carga de prueba: %@", resultados);
        NSLog(@"Objeto: %@, %@", objDatos.numu, objDatos.numd);
    

}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)Calcular:(id)sender {
    resultados = [[NSMutableArray alloc] init];
    
    Datos *objDatos = [Datos new];
    [objDatos setNumu:[_txtNumu stringValue]];
    [objDatos setNumd:[_txtNumd stringValue]];
    [objDatos setOperador:@"Suma"];
    [objDatos setResultado:@"Por definir"];
    
    
    [resultados addObject:objDatos];
    
    [_tabla reloadData];

    NSLog(@"My array: %@", resultados);
    
}

//MARK: Métodos para llenar la tabla
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    NSLog(@"Aqui: %@", resultados);
    return  [resultados count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    Datos *objDatos = [resultados objectAtIndex:row];
    NSString *identifier = [tableColumn identifier];
    NSString *columna = [objDatos valueForKey:identifier];
    //NSLog(@"Luego Aqui: %@", columna);
    return columna;
}

@end
