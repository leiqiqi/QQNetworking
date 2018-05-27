# 基于AFNetworking分装的网络请求

## GET  POST

GET、POST使用

```objc
   [self.modelService getRequestPieData:^(BOOL success, id result, NSString *message) {
       if (success) {
//            NSLog(@"result+++++++++%@", result);
           self.seriseArray = [result objectForKey:@"series"];
           [self getData];
       }
       else{

       }
   }];
```

上传图片uploadImage

```objc
//   图片上传
   UIImage *image = [UIImage imageNamed:@"动态"];
   NSArray *array = [NSArray arrayWithObjects:image, nil];
   [self.modelService uploadImageWithImageArray:array finished:^(BOOL success, id result, NSString *message) {
       
       if (success) {
           
       }
       else{
           
       }
   }];
```
