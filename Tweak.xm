@interface MediaControlsHeaderView : NSObject
@property (nonatomic, assign, readwrite) CGRect frame;
@end

%hook MediaControlsHeaderView

-(void)setArtworkView:(id)artworkView {
    %orig(nil);
}

-(UIView *)artworkView {
    %orig;
    return nil;
}

-(void)setShadow:(id)shadow {
    %orig(nil);
}

-(UIView *)shadow {
    %orig;
    return nil;
}

-(void)setArtworkBackgroundView:(id)artworkBackgroundView {
    %orig(nil);
}

-(UIView *)artworkBackgroundView {
    %orig;
    return nil;
}

-(void)setPlaceholderArtworkView:(id)placeholderArtworkView {
    %orig(nil);
}

-(UIView *)placeholderArtworkView {
    %orig;
    return nil;
}
%end
