.class Lcom/meizu/common/app/SlideNotice$SlideViewController;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Lcom/meizu/common/app/SlideNoticeManagerService$NoticeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideViewController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;,
        Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;
    }
.end annotation


# static fields
.field private static final SLIDE_ANIMATION_TYPE_HIDE:I = 0x1

.field private static final SLIDE_ANIMATION_TYPE_SHOW:I


# instance fields
.field private isBelowDefaultActionBar:Z

.field private isSupportedImmersedStatusBar:Z

.field private mActionBarHeight:I

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationExecutor:Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;

.field private mAnimationType:I

.field private mBeginColor:I

.field private mContent:Landroid/widget/LinearLayout;

.field private final mContentClickListener:Landroid/view/View$OnClickListener;

.field private mCustom:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mDrawingLocation:[I

.field private mEndColor:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field private mIsOverlaidByStatusBar:Z

.field private mIsOverlaidByStatusBarSet:Z

.field private mLeft:I

.field private mNoticeClickMsg:Landroid/os/Message;

.field private mNoticeHandler:Landroid/os/Handler;

.field private mNoticeHeight:I

.field private mNoticePanel:Landroid/widget/LinearLayout;

.field private mNoticeView:Landroid/widget/TextView;

.field private mNoticeWidth:I

.field private mOnClickNoticeListener:Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field private mSlidHeight:I

.field private mSlideContent:Landroid/view/View;

.field private mSlideView:Landroid/view/View;

.field private mSlideY:I

.field private mStatusBarHeight:I

.field private mTop:I

.field private mWManager:Landroid/view/WindowManager;

.field private showing:Z

.field private text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/common/app/SlideNotice;


# direct methods
.method public constructor <init>(Lcom/meizu/common/app/SlideNotice;Lcom/meizu/common/app/SlideNotice;)V
    .locals 1
    .param p2, "notice"    # Lcom/meizu/common/app/SlideNotice;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideY:I

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBar:Z

    .line 459
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 465
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 478
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mDrawingLocation:[I

    .line 480
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mHandler:Landroid/os/Handler;

    .line 482
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mShow:Ljava/lang/Runnable;

    .line 489
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mHide:Ljava/lang/Runnable;

    .line 499
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mContentClickListener:Landroid/view/View$OnClickListener;

    .line 517
    new-instance v0, Lcom/meizu/common/app/SlideNotice$NoticeHandler;

    invoke-direct {v0, p2}, Lcom/meizu/common/app/SlideNotice$NoticeHandler;-><init>(Lcom/meizu/common/app/SlideNotice;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeHandler:Landroid/os/Handler;

    .line 518
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->init()V

    .line 519
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->destroy()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/app/SlideNotice$SlideViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 426
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnimationType:I

    return v0
.end method

.method static synthetic access$1002(Lcom/meizu/common/app/SlideNotice$SlideViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p1, "x1"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnimationType:I

    return p1
.end method

.method static synthetic access$1302(Lcom/meizu/common/app/SlideNotice$SlideViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/common/app/SlideNotice$SlideViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 426
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideY:I

    return v0
.end method

.method static synthetic access$1402(Lcom/meizu/common/app/SlideNotice$SlideViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p1, "x1"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideY:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/app/SlideNotice$SlideViewController;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 426
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->findViewPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/common/app/SlideNotice$SlideViewController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 426
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->update(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeClickMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/common/app/SlideNotice$SlideViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 426
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidHeight:I

    return v0
.end method

.method static synthetic access$702(Lcom/meizu/common/app/SlideNotice$SlideViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p1, "x1"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnimationExecutor:Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;

    return-object v0
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 643
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->unregisterForScrollChanged()V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    .line 646
    return-void
.end method

.method private findViewPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 852
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 853
    .local v0, "anchorHeight":I
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mDrawingLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 854
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mDrawingLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 855
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mDrawingLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v1, v0

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 856
    return-void
.end method

.method private getActionBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 843
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 844
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 848
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x90

    goto :goto_0
.end method

.method private init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 603
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04004b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    .line 605
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    const v2, 0x7f0d00ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    .line 606
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    const v2, 0x7f0d00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    .line 607
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    const v2, 0x7f0d0047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    .line 608
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/common/util/ResourceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    .line 611
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mActionBarHeight:I

    .line 613
    new-instance v1, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;

    invoke-direct {v1, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnimationExecutor:Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;

    .line 615
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 616
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 617
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    .line 622
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 623
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 624
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 625
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 626
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SlideNotice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 630
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mActionBarHeight:I

    .line 635
    :cond_0
    return-void

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method private invokeNotice(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    return-void
.end method

.method private prepareNotice(Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/16 v4, 0x7d5

    .line 677
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 678
    new-instance v1, Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/meizu/common/app/SlideNotice$SlideContainerView;-><init>(Landroid/content/Context;)V

    .line 679
    .local v1, "slideContainer":Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 680
    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    .line 682
    .end local v1    # "slideContainer":Landroid/widget/FrameLayout;
    :cond_0
    const/4 v0, 0x0

    .line 683
    .local v0, "parentWindow":Landroid/view/Window;
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_4

    .line 684
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 686
    .local v2, "token":Landroid/os/IBinder;
    if-eqz v2, :cond_3

    .line 687
    iput-object v2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 688
    const/16 v3, 0x3e8

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 696
    .end local v2    # "token":Landroid/os/IBinder;
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3, v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setTransStatusBar(Landroid/view/WindowManager$LayoutParams;Landroid/view/Window;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isSupportedImmersedStatusBar:Z

    .line 698
    iget-boolean v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isSupportedImmersedStatusBar:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    iput v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    .line 699
    :cond_1
    iget v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeWidth:I

    if-lez v3, :cond_2

    .line 700
    iget v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeWidth:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 702
    :cond_2
    return-void

    .line 690
    .restart local v2    # "token":Landroid/os/IBinder;
    :cond_3
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 693
    .end local v2    # "token":Landroid/os/IBinder;
    :cond_4
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method private setTransStatusBar(Landroid/view/WindowManager$LayoutParams;Landroid/view/Window;)Z
    .locals 6
    .param p1, "attributes"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "parentWindow"    # Landroid/view/Window;

    .prologue
    const/4 v3, 0x1

    .line 961
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_2

    .line 962
    const/4 v1, 0x0

    .line 963
    .local v1, "trans_status":I
    # getter for: Lcom/meizu/common/app/SlideNotice;->sMeizuFlag:Ljava/lang/reflect/Field;
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->access$1500()Ljava/lang/reflect/Field;

    move-result-object v4

    if-nez v4, :cond_0

    .line 964
    const/16 v1, 0x40

    .line 965
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "meizuFlags"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    # setter for: Lcom/meizu/common/app/SlideNotice;->sMeizuFlag:Ljava/lang/reflect/Field;
    invoke-static {v4}, Lcom/meizu/common/app/SlideNotice;->access$1502(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 967
    # getter for: Lcom/meizu/common/app/SlideNotice;->sMeizuFlag:Ljava/lang/reflect/Field;
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->access$1500()Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 969
    :cond_0
    # getter for: Lcom/meizu/common/app/SlideNotice;->sMeizuFlag:Ljava/lang/reflect/Field;
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->access$1500()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    or-int v2, v4, v1

    .line 970
    .local v2, "value":I
    # getter for: Lcom/meizu/common/app/SlideNotice;->sMeizuFlag:Ljava/lang/reflect/Field;
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->access$1500()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 982
    .end local v1    # "trans_status":I
    .end local v2    # "value":I
    :cond_1
    :goto_0
    return v3

    .line 972
    :cond_2
    if-nez p2, :cond_1

    .line 973
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x4000000

    or-int/2addr v4, v5

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SlideNotice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set the status bar to be transparent, Caused by:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setupContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 723
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 724
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mTop:I

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBarSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBar:Z

    .line 725
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBar:Z

    if-eqz v0, :cond_2

    .line 726
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    const v1, 0x7f0d00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    .line 727
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0267

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 733
    :goto_0
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeHeight:I

    if-lez v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mBeginColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 739
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 740
    return-void

    .line 730
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 731
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    const v1, 0x7f0d00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private setupCustom()Z
    .locals 4

    .prologue
    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "hasCustom":Z
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 745
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    if-ne v2, v3, :cond_0

    .line 746
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 748
    :cond_0
    const/4 v0, 0x1

    .line 749
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 750
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 751
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 752
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 753
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 757
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return v0

    .line 755
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupPosition()V
    .locals 4

    .prologue
    .line 761
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 762
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v0, v2

    .line 763
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 764
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 765
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0, v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->findViewPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 766
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mTop:I

    .line 773
    .end local v0    # "anchor":Landroid/view/View;
    .end local v1    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 762
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 769
    :cond_2
    iget-boolean v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isBelowDefaultActionBar:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mTop:I

    if-nez v2, :cond_0

    .line 770
    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mActionBarHeight:I

    iget v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mTop:I

    goto :goto_1
.end method

.method private setupView()V
    .locals 4

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setupCustom()Z

    move-result v0

    .line 713
    .local v0, "hasCustom":Z
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setupContent()V

    .line 716
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnClickNoticeListener:Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mContentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnClickNoticeListener:Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeClickMsg:Landroid/os/Message;

    .line 720
    :cond_0
    return-void

    .line 714
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private trySendAccessibilityEvent()V
    .locals 4

    .prologue
    .line 776
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice;->access$600(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 777
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 786
    :goto_0
    return-void

    .line 780
    :cond_0
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 782
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 785
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 537
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 538
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 539
    .local v0, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 540
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "anchor":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 542
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 543
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 544
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 546
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 547
    return-void
.end method

.method private update(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iput p2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mTop:I

    .line 863
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mTop:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 864
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 815
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideY:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mTop:I

    return v0
.end method

.method public handleHide()V
    .locals 3

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    if-nez v0, :cond_0

    .line 800
    :goto_0
    return-void

    .line 791
    :cond_0
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideY:I

    if-gez v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnimationExecutor:Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnimationExecutor:Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->cancel()V

    .line 795
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->destroy()V

    goto :goto_0

    .line 798
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnimationExecutor:Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideY:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->start(II)V

    .line 799
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnimationType:I

    goto :goto_0
.end method

.method public handleShow()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 649
    iget-boolean v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    if-eqz v3, :cond_0

    .line 673
    :goto_0
    return v1

    .line 651
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->prepareNotice(Landroid/view/WindowManager$LayoutParams;)V

    .line 652
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setupPosition()V

    .line 653
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setupView()V

    .line 654
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mLeft:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 655
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mTop:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 656
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->invokeNotice(Landroid/view/WindowManager$LayoutParams;)V

    .line 658
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 659
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/meizu/common/app/SlideNotice$SlideViewController$5;

    invoke-direct {v1, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$5;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 671
    iput-boolean v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    .line 672
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->trySendAccessibilityEvent()V

    move v1, v2

    .line 673
    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 938
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :goto_0
    return-void

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->handleHide()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    return v0
.end method

.method public resetTop()V
    .locals 2

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isBelowDefaultActionBar:Z

    if-eqz v0, :cond_0

    .line 830
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mActionBarHeight:I

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mTop:I

    .line 834
    :goto_0
    return-void

    .line 832
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mTop:I

    goto :goto_0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 526
    if-eqz p1, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->unregisterForScrollChanged()V

    .line 528
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 529
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 530
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 534
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public setBeginColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 581
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mBeginColor:I

    .line 582
    return-void
.end method

.method public setBelowDefaultActionBar(Z)V
    .locals 0
    .param p1, "belowDefaultActionBar"    # Z

    .prologue
    .line 560
    iput-boolean p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isBelowDefaultActionBar:Z

    .line 566
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "customView"    # Landroid/view/View;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    .line 869
    return-void
.end method

.method public setEndColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 585
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mEndColor:I

    .line 586
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 523
    return-void
.end method

.method public setHeight(I)V
    .locals 8
    .param p1, "height"    # I

    .prologue
    const/4 v7, 0x1

    const v6, 0x3dcccccd    # 0.1f

    .line 819
    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mBeginColor:I

    iget v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mEndColor:I

    int-to-float v4, p1

    iget v5, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidHeight:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4, v7}, Lcom/meizu/common/util/ResourceUtils;->getGradualColor(IIFI)I

    move-result v0

    .line 821
    .local v0, "curColor":I
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 822
    const v2, 0xffffff

    const/4 v3, -0x1

    int-to-float v4, p1

    iget v5, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidHeight:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4, v7}, Lcom/meizu/common/util/ResourceUtils;->getGradualColor(IIFI)I

    move-result v1

    .line 823
    .local v1, "curTextColor":I
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 824
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideY:I

    .line 825
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    iget v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideY:I

    iget v4, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 826
    return-void
.end method

.method public setIsOverlaidByStatusBar(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isSupportedImmersedStatusBar:Z

    if-nez v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBar:Z

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBarSet:Z

    goto :goto_0
.end method

.method public setLeft(I)V
    .locals 0
    .param p1, "left"    # I

    .prologue
    .line 803
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mLeft:I

    .line 804
    return-void
.end method

.method public setNoticeHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 595
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeHeight:I

    .line 596
    return-void
.end method

.method public setNoticeWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 599
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeWidth:I

    .line 600
    return-void
.end method

.method public setOnClickNoticeListener(Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnClickNoticeListener:Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    .line 552
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->text:Ljava/lang/CharSequence;

    .line 571
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :cond_0
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 807
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mTop:I

    .line 808
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_0
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->handleShow()Z

    goto :goto_0
.end method
