//
//  ViewController.m
//  settimeout-sample
//
//  Created by yatemmma on 2016/06/12.
//  Copyright © 2016年 yatemmma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *webview = [[UIWebView alloc] init];
    webview.delegate = self;
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    path = [path stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    [webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:path]]];
    [self.view addSubview:webview];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {

    NSURL *url = [request URL];
    if ([[url scheme] isEqualToString:@"sample"]) {
        NSLog(@"%@", url);
        return NO;
    }
    return YES;
}
@end
