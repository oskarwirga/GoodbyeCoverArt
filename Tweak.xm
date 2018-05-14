%hook MediaControlsHeaderView

-(void)layoutSubviews {
    %orig;
    UIView *shadow = MSHookIvar<UIView *>(self, "_shadow");
    shadow.hidden = 1;
    UIView *artworkBackgroundView = MSHookIvar<UIView *>(self, "_artworkBackgroundView");
    artworkBackgroundView.hidden = 1;
    UIImageView *artworkView = MSHookIvar<UIImageView *>(self, "_artworkView");
    artworkView.hidden = 1;

}

%end
