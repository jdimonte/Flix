//
//  TrailerViewController.m
//  Flix
//
//  Created by Jacqueline DiMonte on 6/25/21.
//

#import "TrailerViewController.h"
#import "UIImageView+AFNetworking.h"

@interface TrailerViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *movieTrailer;
@property (nonatomic, strong) NSString *key;

@end

@implementation TrailerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //access second json file
    NSString *baseURLString = @"https://api.themoviedb.org/3/movie/";
    NSString *movieID = [NSString stringWithFormat:@"%@", self.movie[@"id"]];

    NSLog(@"%@", movieID);
    NSString *endURLString = @"/videos?api_key=0b8f1ca665ec172de7dd6db70cbf26ec";
    NSString *combineTrailerURLString = [baseURLString stringByAppendingString:movieID];
    NSString *url = [combineTrailerURLString stringByAppendingString:endURLString];
    NSURL *urlRequest =[NSURL URLWithString:url];
    //make request
    NSURLRequest *request = [NSURLRequest requestWithURL:urlRequest cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:10.0];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
           if (error != nil) {
               NSLog(@"%@", [error localizedDescription]);
           }
           else {
               NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
               
               NSLog(@"%@", dataDictionary);
               NSLog(@"-------------------------------");
               NSLog(@"%@", dataDictionary[@"results"]);
               NSLog(@"-------------------------------");
               NSLog(@"%@", dataDictionary[@"results"][0]);
               NSLog(@"-------------------------------");
               NSLog(@"%@", dataDictionary[@"results"][0][@"key"]);
               
               self.key = [NSString stringWithFormat:@"%@", dataDictionary[@"results"][0][@"key"]];
               
               [self displayTrailer];
           }
       }];
    [task resume];
}

- (void) displayTrailer {
    //trailer url!!
    NSString *baseTrailerURLString = @"https://www.youtube.com/watch?v=";
    NSString *endTrailerURLString = self.key;
    NSString *TrailerURLString = [baseTrailerURLString stringByAppendingString:endTrailerURLString];
    
    // Convert the url String to a NSURL object.
    NSURL *trailerURL = [NSURL URLWithString:TrailerURLString];

    // Place the URL in a URL Request.
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:trailerURL
                                             cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                         timeoutInterval:10.0];
    // Load Request into WebView.
    [self.movieTrailer loadRequest:requestURL];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
