@interface MediaControlsHeaderView : NSObject
@property (nonatomic, assign, readwrite) CGRect frame;
@property (nonatomic, assign, readwrite) NSInteger style;
@end

static const CGFloat patchedMediaControlsFrameX = -67;
static const CGFloat patchedMediaControlsFrameWidth = 417;

%hook MediaControlsHeaderView

- (CGRect)frame {
    CGRect ret = %orig;
    if (self.style == 3){
        ret.origin.x = patchedMediaControlsFrameX;
        ret.size.width = patchedMediaControlsFrameWidth;
    }
    return ret;
}

- (void)setFrame:(CGRect)frame {
    if (self.style == 3){
        frame.origin.x = patchedMediaControlsFrameX;
        frame.size.width = patchedMediaControlsFrameWidth;
    }
    %orig;
}

-(void)setArtworkView:(id)artworkView {
    if (self.style == 3){
        %orig(nil);
    }else{
        %orig(artworkView);
    }
}

-(UIView *)artworkView {
    UIView* ret = %orig;
    if (self.style == 3){
        return nil;
    }else{
        return ret;
    }
}

-(void)setShadow:(id)shadow {
    if (self.style == 3){
        %orig(nil);
    }else{
        %orig(shadow);
    }
}

-(UIView *)shadow {
    UIView* ret = %orig;
    if (self.style == 3){
        return nil;
    }else{
        return ret;
    }
}

-(void)setArtworkBackgroundView:(id)artworkBackgroundView {
    if (self.style == 3){
        %orig(nil);
    }else{
        %orig(artworkBackgroundView);
    }
}

-(UIView *)artworkBackgroundView {
    UIView* ret = %orig;
    if (self.style == 3){
        return nil;
    }else{
        return ret;
    }
}

-(void)setPlaceholderArtworkView:(id)placeholderArtworkView {
    if (self.style == 3){
        %orig(nil);
    }else{
        %orig(placeholderArtworkView);
    }
}

-(UIView *)placeholderArtworkView {
    UIView* ret = %orig;
    if (self.style == 3){
        return nil;
    }else{
        return ret;
    }
}
%end

