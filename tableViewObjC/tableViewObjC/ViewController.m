//
//  ViewController.m
//  tableViewObjC
//
//  Created by Vasily Bodnarchuk on 03.06.2022.
//

#import "ViewController.h"

@interface ViewController ()
@property NSString* cellIdentifier;
@property int numberOfCells;
@end

@interface ViewController (TableViewDataSource) <UITableViewDataSource>
@end

@interface ViewController (TableViewDelegate) <UITableViewDelegate>
@end

@implementation ViewController

- (id)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder])  {
        self.cellIdentifier = @"cellIdentifier";
        self.numberOfCells = 100;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView* tableView = [[UITableView alloc] init];
    [self.view addSubview:tableView];
    tableView.translatesAutoresizingMaskIntoConstraints = false;
    [tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = true;
    [tableView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = true;
    [tableView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = true;
    [tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = true;
    [tableView registerClass:UITableViewCell.self forCellReuseIdentifier:self.cellIdentifier];
    tableView.dataSource = self;
    tableView.delegate = self;
}
@end

// MARK: UITableViewDataSource

@implementation ViewController (TableViewDataSource)
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.numberOfCells;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: self.cellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"text %ld", (long)indexPath.row];
   return cell;
}
@end


// MARK: UITableViewDataSource

@implementation ViewController (TableViewDelegate)
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    
}
@end
