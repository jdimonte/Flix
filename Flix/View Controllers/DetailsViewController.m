//
//  DetailsViewController.m
//  Flix
//
//  Created by Jacqueline DiMonte on 6/23/21.
//

#import "DetailsViewController.h"
#import "TrailerViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backdropView;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *posterURLString = self.movie[@"poster_path"];
    NSString *fullPosterURLString = [baseURLString stringByAppendingString:posterURLString];
    NSURL *posterURL =[NSURL URLWithString:fullPosterURLString];
    [self.posterView setImageWithURL: posterURL];

    NSString *backdropURLString = self.movie[@"backdrop_path"];
    NSString *fullBackdropPosterURLString = [baseURLString stringByAppendingString:backdropURLString];
    NSURL *backdropURL =[NSURL URLWithString:fullBackdropPosterURLString];
    [self.backdropView setImageWithURL: backdropURL];
    
    self.titleLabel.text = self.movie[@"title"];
    self.synopsisLabel.text = self.movie[@"overview"];
    
    [self.titleLabel sizeToFit];
    [self.synopsisLabel sizeToFit];
    
    
    //gesture
    // Here we use the method didPan(sender:), which we defined in the previous step, as the action.
      UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTap:)];
      
      // Optionally set the number of required taps, e.g., 2 for a double click
      tapGestureRecognizer.numberOfTapsRequired = 2;
      
      // Attach it to a view of your choice. If it's a UIImageView, remember to enable user interaction
      [self.view setUserInteractionEnabled:YES];
      [self.view addGestureRecognizer:tapGestureRecognizer];
}
- (IBAction)posterTapped:(UITapGestureRecognizer *)sender {
    //code
}
- (IBAction)didTap:(UITapGestureRecognizer *)sender {
    CGPoint location = [sender locationInView:self.view];
   // User tapped at the point above. Do something with that if you want.
    NSLog(@"Poster Tapped");
    
    [self performSegueWithIdentifier:@"displayTrailer" sender:nil];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSDictionary *movie = self.movie;
    
    TrailerViewController *trailerViewController = [segue destinationViewController];
    
    trailerViewController.movie = movie;
    
}

@end
