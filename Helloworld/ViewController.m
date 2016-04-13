//
//  ViewController.m
//  Helloworld
//
//  Created by Cybraum on 4/12/16.
//  Copyright © 2016 Cybraum. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "CVCell.h"
@interface ViewController ()
@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController setNavigationBarHidden:YES];
     imageArray=[[NSArray alloc]initWithObjects:@"a.png",@"b.png",@"c.png", nil];
    targetArray=[[NSArray alloc]initWithObjects:@"",@"Target(Ballantyne Location)",@"Target.com",@"Target(Tega Cay Location)", nil];
    dateArray=[[NSArray alloc]initWithObjects:@"",@"February 6th,2016",@"February 3rd,2016",@"February 6th,2016", nil];
     priceArray=[[NSArray alloc]initWithObjects:@"",@"-$549.31",@"-$215.04",@"$15.29", nil];
    
    [self.collectionView registerClass:[CVCell class] forCellWithReuseIdentifier:@"cvCell"];
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setItemSize:CGSizeMake(240, 200)];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    [self.collectionView setCollectionViewLayout:flowLayout];
    flowLayout.minimumInteritemSpacing = 10;
    flowLayout.minimumLineSpacing =10;
    
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark UITableView DataSource & Delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
    
    
    /// timer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"simpleTableView";
    //  UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    
    
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        cell.editingAccessoryType = YES;
    }
    if(indexPath.section==0)
    {
       
    }
    else
    {
        
        cell.bDueLabel.hidden=YES;
        cell.paydueLabel.hidden=YES;
        cell.payLabel.hidden=YES;
        cell.datpayLabel.hidden=YES;
        cell.balpriceLabel.hidden=YES;
       
        
    /* if (cell == nil)
     {
     cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
     }*/
    /// 246 246 246
    cell.dateLabel.text=[dateArray objectAtIndex:indexPath.section];
    cell.targetLabel.text=[targetArray objectAtIndex:indexPath.section];
    cell.priceLabel.text=[priceArray objectAtIndex:indexPath.section];
//    
//    cell.backgroundColor=[UIColor colorWithRed:246.0/255.0 green:246.0/255.0 blue:246.0/255.0 alpha:1.0];
    
    }
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if(section==0)
    {
        return 30.0f;
        
    }
    if(section==2)
    {
        return 30.0f;
        
    }
    else
    {
        return 0.0f;
    }
    return 30.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    
    //    UILabel *lbl1 = [[UILabel alloc] init];
    //   lbl1.textColor = [UIColor colorWithRed:(184/255.0) green:(184/255.0) blue:(184/255.0) alpha:1] ;
    //
    //    lbl1.backgroundColor=[UIColor clearColor];
    //
    //    lbl1.userInteractionEnabled=NO;
    //    lbl1.text= @"LAST MONTH";
    //    lbl1.font = [UIFont systemFontOfSize:12];
    
    
    UIView *sampleView = [[UIView alloc] initWithFrame:
                          CGRectMake(0, 0, tableView.frame.size.width, 30.0)];
    
    sampleView.backgroundColor=[UIColor colorWithRed:(247/255.0) green:(247/255.0) blue:(247/255.0) alpha:1] ;
    
    UILabel *footerLabel = [[UILabel alloc] initWithFrame:
                            CGRectMake(0, 5, sampleView.frame.size.width, 25.0)];
    
    footerLabel.textColor = [UIColor colorWithRed:(184/255.0) green:(184/255.0) blue:(184/255.0) alpha:1] ;
    footerLabel.textAlignment = NSTextAlignmentCenter;
    footerLabel.font=[UIFont systemFontOfSize:12];
    [sampleView addSubview:footerLabel];
    
    switch (section) {
        case 0:
            footerLabel.text = @"THIS WEEK";
            return sampleView;
            break;
        case 2:
            footerLabel.text = @"LAST MONTH";
            return sampleView;
            break;
        default:
            break;
    }
    
    return sampleView;
}


#pragma mark-


# pragma mark UICollectionView DataSource & Delegate 

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 3;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    // NSMutableArray *sectionArray = [self.dataArray objectAtIndex:section];
    return 1;
    
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    // Setup cell identifier
    static NSString *cellIdentifier = @"cvCell";
    
    CVCell *cell = (CVCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
        cell.imageView.image=[UIImage imageNamed:[imageArray objectAtIndex:indexPath.section]];
    NSLog(@"%@",[imageArray objectAtIndex:indexPath.section]);
    return cell;
    
}

#pragma mark-


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
