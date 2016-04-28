PopView wrapper
================

#封装的弹出动画效果, 支持3种动画
####使用方法:
自定义`UIView`继承自`PopView`就可以了, 还需要自己配置一些初始参数(否则使用默认参数, 即动画一)

	- (instancetype)initWithFrame:(CGRect)frame
	{
	    self = [super initWithFrame:frame];
	    if (self) {
	        
		// 设置参数 (动画二)
		//self.popType = PopTypeScale;
		//self.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0];
		//self.animateDuration = 0.5;
		//self.backgroundColor = [UIColor purpleColor];
	        
		// 设置参数 (动画三)
		// self.popType = PopTypeMove;
		// self.moveAppearCenterY = [UIApplication sharedApplication].keyWindow.centerY;
		// self.moveAppearDirection = MoveAppearDirectionFromBottom;
		// self.moveDisappearDirection = MoveDisappearDirectionToBottom;
		// self.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
		// self.animateDuration = 0.5;
		// self.backgroundColor = [UIColor purpleColor];
	    }
	    
	    // 设置参数 (动画三)
        self.popType = PopTypeMove;
        self.moveAppearCenterY = SCREEN_HEIGHT - self.height/2;
        self.moveAppearDirection = MoveAppearDirectionFromBottom;
        self.moveDisappearDirection = MoveDisappearDirectionToBottom;
        self.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        self.animateDuration = 0.5;
        self.radius = 0;
        self.backgroundColor = [UIColor purpleColor];
	    
	    return self;
	}
	
---	

##动画一:
![](http://7sbo4v.com1.z0.glb.clouddn.com/1.gif)

##动画二:
![](http://7sbo4v.com1.z0.glb.clouddn.com/2.gif)

##动画三:
![](http://7sbo4v.com1.z0.glb.clouddn.com/3.gif)

![](http://7sbo4v.com1.z0.glb.clouddn.com/Untitled.gif)