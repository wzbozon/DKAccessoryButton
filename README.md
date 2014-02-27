#DKAccessoryButton

UIButton, that looks like UITableViewCell with a detail disclosure accessory indicator.

##ScreenShot

<p align="center"><img src="https://github.com/wzbozon/DKAccessoryButton/blob/master/DKAccessoryButton.png?raw=true"></p>

##How to use

There is a sample project of a universal app for iPhone and iPad.

Sample Code: 
```
  CGRect buttonFrame = CGRectMake(10, 10, buttonWidth, buttonHeight);
  DKAccessoryButton *button = [[DKAccessoryButton alloc] initWithFrame:buttonFrame title:@"ButtonTitle"];
  [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:button];
```

###Supported iOS Versions 
It supports iOS 6.1 and higher. 

