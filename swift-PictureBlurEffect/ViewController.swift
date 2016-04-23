//
//  ViewController.swift
//  swift-PictureBlurEffect
//
//  Created by 黄海燕 on 16/4/22.
//  Copyright © 2016年 huanghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = UIImage(named: "1.jpg")
        let imageView = UIImageView(image: image!)
        self.view.addSubview(imageView)
        
        //从8.0版本开始，系统提供了模糊效果的功能。这里判断如果系统版本号大于或等于8.0，则使用模糊效果
        if #available(iOS 8.0, *) {
            //初始化一个模糊效果对象，模糊效果对象可以帮助你，快速制作类似于导航栏、通知中心或者控制中心的毛玻璃效果
            let blur = UIBlurEffect(style:UIBlurEffectStyle.Light)
            //初始化一个基于模糊效果的视觉效果视图
            let blurView = UIVisualEffectView(effect:blur)
            //设置模糊效果视图的位置为（40，40），尺寸为（200，200）
            blurView.frame = CGRectMake(40, 40, 200, 200)
            //设置模糊视图的圆角半径为30
            blurView.layer.cornerRadius = 30
            //设置模糊视图层的遮罩覆盖属性，进行边界裁切
            blurView.layer.masksToBounds = true
            //将模糊视图，添加到图像视图，作为图像视图的子视图
            imageView.addSubview(blurView)
            
        }else{
            //fallback on earlier versions
            print("UIBlurEffect is only available on ios 8.0 or later.")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

