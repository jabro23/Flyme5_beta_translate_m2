.class public Lcom/meizu/common/widget/PullRefreshLayout;
.super Landroid/widget/RelativeLayout;
.source "PullRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PullRefreshLayout$1;,
        Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshLayoutListener;,
        Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;,
        Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;,
        Lcom/meizu/common/widget/PullRefreshLayout$ViewState;,
        Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:I = 0x190

.field public static final DRAW_ARC:I = 0x1

.field public static final DRAW_LINE:I = 0x0

.field public static final INVALIDATE_TIME:I = 0xf

.field private static final SHAREDPREFERENCES_NAME:Ljava/lang/String; = "pull_to_refresh"

.field public static final TAG:Ljava/lang/String; = "PullRefreshLayout"


# instance fields
.field private mAction:I

.field private mAppendResistance:F

.field private mArcAnimationDistance:I

.field private mBouncer:Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentOverScrollDistance:I

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDrawOnTop:Z

.field private mEnablePull:Z

.field private mHandled:Z

.field private mHoursAgo:Ljava/lang/String;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsAnimation:Z

.field private mIsMx2:Z

.field private mIsOptionalLastTimeSet:Z

.field private mLastEventX:F

.field private mLastEventY:F

.field private mLastRefreshStr:Ljava/lang/String;

.field private mLastRefreshTime:Ljava/util/Date;

.field private mLastRefreshTimeKey:Ljava/lang/String;

.field private mLastTargetTop:I

.field private mLineAnimationDistance:I

.field private mMinutesAgo:Ljava/lang/String;

.field private mOffset:I

.field private mOffsetY:F

.field private mOptionalSeconds:I

.field private mOptionalText:Ljava/lang/String;

.field private mOverScrollDistance:I

.field private mOverScrolling:Z

.field private mPullDrawType:I

.field private mPullRefreshAnimationColor:I

.field private mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

.field private mPullRefreshLayoutListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshLayoutListener;

.field private mPullRefreshListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;

.field private mRefreshFinished:Z

.field private mResistance:F

.field private mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

.field private mSecondsAgo:Ljava/lang/String;

.field private mSpringBack:Z

.field private mTargetView:Landroid/view/View;

.field private mTextColor:I

.field private mThemeColor:I

.field private mTotalOffset:F

.field private mTouchSlop:I

.field private mViewTopState:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

.field private xOffset:F

.field private yOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/PullRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PullRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v2, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;

    invoke-direct {v2, p0, v5}, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;-><init>(Lcom/meizu/common/widget/PullRefreshLayout;Lcom/meizu/common/widget/PullRefreshLayout$1;)V

    iput-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mBouncer:Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;

    .line 68
    iput v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullDrawType:I

    .line 69
    const/16 v2, 0x14

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLineAnimationDistance:I

    .line 70
    const/16 v2, 0x12c

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrollDistance:I

    .line 71
    const/16 v2, 0x78

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mArcAnimationDistance:I

    .line 74
    iput v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOffset:I

    .line 78
    iput-object v5, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;

    .line 79
    iput-object v5, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshLayoutListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshLayoutListener;

    .line 81
    sget-object v2, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_DEFAULT:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    iput-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    .line 82
    sget-object v2, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NO_OFFSET:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    iput-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mViewTopState:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    .line 84
    iput-boolean v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsAnimation:Z

    .line 85
    iput-boolean v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mRefreshFinished:Z

    .line 86
    iput-boolean v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mSpringBack:Z

    .line 87
    iput-boolean v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mHandled:Z

    .line 88
    iput-boolean v6, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mDrawOnTop:Z

    .line 89
    iput-boolean v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrolling:Z

    .line 91
    const/4 v2, 0x0

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTotalOffset:F

    .line 92
    iput-boolean v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsMx2:Z

    .line 95
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 104
    iput-boolean v6, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mEnablePull:Z

    .line 110
    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mResistance:F

    .line 111
    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mAppendResistance:F

    .line 113
    const/4 v2, -0x1

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTextColor:I

    .line 815
    iput-boolean v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsOptionalLastTimeSet:Z

    .line 816
    const/16 v2, 0x3c

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOptionalSeconds:I

    .line 817
    iput-object v5, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOptionalText:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b026c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLineAnimationDistance:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b026d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mArcAnimationDistance:I

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b026f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrollDistance:I

    .line 141
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 142
    .local v1, "b":Landroid/content/res/TypedArray;
    const v2, -0xff0100

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mThemeColor:I

    .line 143
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/meizu/common/R$styleable;->PullRefreshLayout:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullDrawType:I

    .line 149
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mDrawOnTop:Z

    .line 151
    const/4 v2, 0x4

    iget v3, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mThemeColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationColor:I

    .line 152
    const/4 v2, 0x5

    iget v3, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTextColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTextColor:I

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-direct {p0}, Lcom/meizu/common/widget/PullRefreshLayout;->initView()V

    .line 157
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTouchSlop:I

    .line 158
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/PullRefreshLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrollDistance:I

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/PullRefreshLayout;)Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/PullRefreshLayout;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/PullRefreshLayout;Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;
    .param p1, "x1"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/meizu/common/widget/PullRefreshLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mSpringBack:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/PullRefreshLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PullRefreshLayout;->offsetContent(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/meizu/common/widget/PullRefreshLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mCurrentOverScrollDistance:I

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/PullRefreshLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/PullRefreshLayout;)Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/PullRefreshLayout;)Lcom/meizu/common/widget/PullRefreshAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/common/widget/PullRefreshLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsAnimation:Z

    return p1
.end method

.method private eventInView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 584
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v1

    .line 588
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v2, v11

    .line 589
    .local v2, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v3, v11

    .line 591
    .local v3, "eventY":I
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 592
    .local v6, "location":[I
    invoke-virtual {p2, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 594
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 595
    .local v10, "width":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 596
    .local v4, "height":I
    aget v5, v6, v1

    .line 597
    .local v5, "left":I
    const/4 v11, 0x1

    aget v9, v6, v11

    .line 598
    .local v9, "top":I
    add-int v8, v5, v10

    .line 599
    .local v8, "right":I
    add-int v0, v9, v4

    .line 601
    .local v0, "bottom":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5, v9, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 602
    .local v7, "rect":Landroid/graphics/Rect;
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 603
    .local v1, "contains":Z
    goto :goto_0
.end method

.method private getContentViewTop(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 751
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method private getLastTimeOptional()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/32 v8, 0x36ee80

    .line 840
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    if-eqz v4, :cond_4

    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 845
    .local v2, "now":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 846
    .local v0, "d":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 847
    iget v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOptionalSeconds:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 848
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOptionalText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 861
    .end local v0    # "d":J
    .end local v2    # "now":Ljava/util/Date;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    .line 849
    .restart local v0    # "d":J
    .restart local v2    # "now":Ljava/util/Date;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    cmp-long v4, v0, v8

    if-gez v4, :cond_2

    .line 850
    const-wide/32 v4, 0xea60

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 851
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mMinutesAgo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 852
    :cond_2
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 853
    div-long v4, v0, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 854
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mHoursAgo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 856
    :cond_3
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 861
    .end local v0    # "d":J
    .end local v2    # "now":Ljava/util/Date;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getTouchViewParent(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 614
    const/4 v4, 0x0

    .line 615
    .local v4, "view":Landroid/view/View;
    if-nez p1, :cond_0

    move-object p1, v4

    .line 654
    .end local p1    # "target":Landroid/view/View;
    :goto_0
    return-object p1

    .line 619
    .restart local p1    # "target":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/meizu/common/widget/PullRefreshLayout;->eventInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object p1, v4

    .line 620
    goto :goto_0

    .line 623
    :cond_1
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-nez v5, :cond_2

    .line 624
    move-object v4, p1

    move-object p1, v4

    .line 625
    goto :goto_0

    .line 628
    :cond_2
    const-class v5, Landroid/widget/AbsListView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    const-class v5, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 630
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/meizu/common/widget/PullRefreshLayout;->eventInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 631
    move-object v4, p1

    .line 632
    goto :goto_0

    .line 634
    :cond_4
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_7

    move-object v3, p1

    .line 635
    check-cast v3, Landroid/view/ViewGroup;

    .line 636
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 638
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "index":I
    :goto_1
    if-ltz v2, :cond_7

    .line 639
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 640
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p2, v0}, Lcom/meizu/common/widget/PullRefreshLayout;->eventInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 638
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 644
    :cond_5
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-nez v5, :cond_6

    .line 645
    move-object v4, v0

    move-object p1, v4

    .line 646
    goto :goto_0

    .line 649
    :cond_6
    invoke-direct {p0, v0, p2}, Lcom/meizu/common/widget/PullRefreshLayout;->getTouchViewParent(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v4

    move-object p1, v4

    .line 650
    goto :goto_0

    .line 653
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "index":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_7
    move-object v4, p1

    move-object p1, v4

    .line 654
    goto :goto_0
.end method

.method private getViewTop(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 568
    if-nez p1, :cond_0

    .line 569
    const/4 v1, 0x0

    .line 573
    :goto_0
    return v1

    .line 571
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 572
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 573
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_0
.end method

.method private getViewTopState(Landroid/view/View;Z)Lcom/meizu/common/widget/PullRefreshLayout$ViewState;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isDown"    # Z

    .prologue
    const/4 v3, -0x1

    .line 485
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NO_OFFSET:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    .line 486
    .local v0, "viewTopState":Lcom/meizu/common/widget/PullRefreshLayout$ViewState;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    move-object v1, v0

    .line 533
    :goto_0
    return-object v1

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-gez v1, :cond_2

    if-eqz p2, :cond_2

    .line 489
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_DOWN:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    .line 491
    :cond_2
    const-class v1, Landroid/widget/AbsListView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, p1

    .line 492
    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_6

    move-object v1, p1

    .line 493
    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 494
    sget-object v1, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NO_OFFSET:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 495
    check-cast v1, Landroid/widget/AbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/PullRefreshLayout;->getContentViewTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    if-lt v1, v2, :cond_5

    if-eqz p2, :cond_5

    .line 496
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_DOWN:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    :cond_4
    :goto_1
    move-object v1, v0

    .line 533
    goto :goto_0

    .line 497
    :cond_5
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/PullRefreshLayout;->getContentViewTop(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_4

    if-nez p2, :cond_4

    .line 498
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_UP:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    goto :goto_1

    .line 500
    :cond_6
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/PullRefreshLayout;->getContentViewTop(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_4

    .line 501
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_UP:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    goto :goto_1

    .line 504
    :cond_7
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-gtz v1, :cond_8

    if-eqz p2, :cond_8

    .line 506
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_DOWN:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    goto :goto_1

    .line 507
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v1, :cond_4

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->yOffset:F

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    if-nez p2, :cond_4

    .line 508
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_UP:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    goto :goto_1

    .line 511
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-le v1, v2, :cond_f

    .line 512
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    if-nez v1, :cond_a

    move-object v1, v0

    .line 513
    goto/16 :goto_0

    .line 514
    :cond_a
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mCurrentOverScrollDistance:I

    if-nez v1, :cond_d

    if-nez p2, :cond_d

    .line 515
    :cond_b
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NO_OFFSET:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    :cond_c
    :goto_2
    move-object v1, v0

    .line 522
    goto/16 :goto_0

    .line 516
    :cond_d
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz p2, :cond_e

    .line 517
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_DOWN:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    goto :goto_2

    .line 518
    :cond_e
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_c

    if-nez p2, :cond_c

    .line 519
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_UP:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    goto :goto_2

    .line 524
    :cond_f
    if-eqz p2, :cond_11

    .line 525
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-gtz v1, :cond_10

    .line 526
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_DOWN:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    goto/16 :goto_1

    .line 528
    :cond_10
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NO_OFFSET:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    goto/16 :goto_1

    .line 529
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v1, :cond_4

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->yOffset:F

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 530
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_UP:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    goto/16 :goto_1
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 274
    new-instance v0, Lcom/meizu/common/widget/PullRefreshAnimationView;

    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationColor:I

    iget v3, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullDrawType:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/meizu/common/widget/PullRefreshAnimationView;-><init>(Landroid/content/Context;IILandroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    .line 276
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTextColor:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PullRefreshLayout;->setPromptTextColor(I)V

    .line 277
    invoke-virtual {p0}, Lcom/meizu/common/widget/PullRefreshLayout;->isMx2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsMx2:Z

    .line 278
    return-void
.end method

.method private offsetContent(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 349
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int v0, p1, v1

    .line 350
    .local v0, "tempDistance":I
    if-gtz v0, :cond_3

    .line 351
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int p1, v1

    .line 355
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 356
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mCurrentOverScrollDistance:I

    .line 357
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshLayoutListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshLayoutListener;

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshLayoutListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshLayoutListener;

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mCurrentOverScrollDistance:I

    invoke-interface {v1, v2}, Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshLayoutListener;->updateScrollOffset(I)V

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/PullRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mCurrentOverScrollDistance:I

    if-lez v1, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/meizu/common/widget/PullRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 364
    :cond_2
    const-wide/16 v2, 0xf

    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/PullRefreshLayout;->postInvalidateDelayed(J)V

    .line 365
    return-void

    .line 352
    :cond_3
    iget v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrollDistance:I

    if-le v0, v1, :cond_0

    .line 353
    iget v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrollDistance:I

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int p1, v1, v2

    goto :goto_0
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 373
    const/4 v5, 0x0

    .line 374
    .local v5, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 375
    .local v0, "action":I
    iput v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mAction:I

    .line 376
    iget-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/meizu/common/widget/PullRefreshLayout;->getContentViewTop(Landroid/view/View;)I

    move-result v1

    .line 377
    .local v1, "contentTop":I
    const/4 v8, 0x3

    if-eq v0, v8, :cond_0

    if-ne v0, v11, :cond_7

    .line 379
    :cond_0
    if-lez v1, :cond_1

    .line 380
    iget-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v4

    .line 381
    .local v4, "offset":I
    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullDrawType:I

    if-nez v8, :cond_5

    .line 382
    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLineAnimationDistance:I

    if-lt v4, v8, :cond_4

    .line 383
    iget-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mBouncer:Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;

    iget v9, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLineAnimationDistance:I

    sub-int v9, v4, v9

    invoke-virtual {v8, v9}, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->recover(I)V

    .line 384
    sget-object v8, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_LINE_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    iput-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    .line 402
    .end local v4    # "offset":I
    :cond_1
    :goto_0
    iput-boolean v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrolling:Z

    .line 403
    iput v10, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTotalOffset:F

    :cond_2
    :goto_1
    move v7, v5

    .line 475
    :cond_3
    :goto_2
    return v7

    .line 386
    .restart local v4    # "offset":I
    :cond_4
    iget-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mBouncer:Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;

    invoke-virtual {v8, v4}, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->recover(I)V

    .line 387
    sget-object v8, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_DEFAULT:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    iput-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    goto :goto_0

    .line 390
    :cond_5
    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mArcAnimationDistance:I

    if-lt v4, v8, :cond_6

    .line 391
    iget-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mBouncer:Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;

    iget v9, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mArcAnimationDistance:I

    sub-int v9, v4, v9

    invoke-virtual {v8, v9}, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->recover(I)V

    .line 392
    sget-object v8, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_ARC_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    iput-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    .line 393
    iget-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTimeKey:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 394
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    iput-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    goto :goto_0

    .line 397
    :cond_6
    iget-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mBouncer:Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;

    invoke-virtual {v8, v4}, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->recover(I)V

    .line 398
    sget-object v8, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_DEFAULT:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    iput-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    goto :goto_0

    .line 405
    .end local v4    # "offset":I
    :cond_7
    if-nez v0, :cond_9

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastEventY:F

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastEventX:F

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOffsetY:F

    .line 411
    iget-object v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTimeKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 412
    iget-boolean v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsOptionalLastTimeSet:Z

    if-eqz v7, :cond_8

    .line 413
    iget-object v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-direct {p0}, Lcom/meizu/common/widget/PullRefreshLayout;->getLastTimeOptional()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setLastRefreshTime(Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :cond_8
    iget-object v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PullRefreshLayout;->getLastTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setLastRefreshTime(Ljava/lang/String;)V

    goto :goto_1

    .line 418
    :cond_9
    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastEventY:F

    sub-float v6, v8, v9

    .line 421
    .local v6, "tmpOffset":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastEventX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iput v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->xOffset:F

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOffsetY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iput v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->yOffset:F

    .line 424
    iget-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v8, v7}, Lcom/meizu/common/widget/PullRefreshAnimationView;->resetSpringFlag(Z)V

    .line 425
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v12

    if-gez v8, :cond_a

    .line 426
    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTotalOffset:F

    add-float/2addr v8, v6

    iput v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTotalOffset:F

    .line 427
    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTotalOffset:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v12

    if-lez v8, :cond_e

    .line 428
    iget v6, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTotalOffset:F

    .line 429
    iput v10, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTotalOffset:F

    .line 435
    :cond_a
    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->yOffset:F

    iget v9, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_3

    .line 437
    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->xOffset:F

    iget v9, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->xOffset:F

    iget v9, p0, Lcom/meizu/common/widget/PullRefreshLayout;->yOffset:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mCurrentOverScrollDistance:I

    if-eqz v8, :cond_3

    .line 441
    :cond_b
    iget-boolean v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsAnimation:Z

    if-eqz v7, :cond_c

    iget v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullDrawType:I

    if-ne v7, v11, :cond_d

    :cond_c
    iget-boolean v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mRefreshFinished:Z

    if-eqz v7, :cond_f

    :cond_d
    move v7, v5

    .line 442
    goto/16 :goto_2

    :cond_e
    move v7, v5

    .line 431
    goto/16 :goto_2

    .line 445
    :cond_f
    iget v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mCurrentOverScrollDistance:I

    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrollDistance:I

    if-lt v7, v8, :cond_10

    cmpl-float v7, v6, v10

    if-lez v7, :cond_10

    move v7, v5

    .line 446
    goto/16 :goto_2

    .line 448
    :cond_10
    float-to-int v4, v6

    .line 450
    .restart local v4    # "offset":I
    iget v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullDrawType:I

    if-nez v7, :cond_11

    .line 451
    sget-object v7, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_LINE_MOVE:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    iput-object v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    .line 452
    iget-object v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v7}, Lcom/meizu/common/widget/PullRefreshAnimationView;->stopDrawLineAnimation()V

    .line 457
    :goto_3
    const/4 v3, 0x0

    .line 458
    .local v3, "isDown":Z
    if-gtz v4, :cond_12

    .line 459
    const/4 v3, 0x0

    .line 463
    :goto_4
    if-ltz v1, :cond_14

    .line 464
    iget-object v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-direct {p0, v7, p1}, Lcom/meizu/common/widget/PullRefreshLayout;->getTouchViewParent(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, v3}, Lcom/meizu/common/widget/PullRefreshLayout;->getViewTopState(Landroid/view/View;Z)Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mViewTopState:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    .line 465
    sget-object v7, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NO_OFFSET:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    iget-object v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mViewTopState:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    if-ne v7, v8, :cond_13

    move v7, v5

    .line 466
    goto/16 :goto_2

    .line 454
    .end local v3    # "isDown":Z
    :cond_11
    sget-object v7, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_ARC_MOVE:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    iput-object v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    goto :goto_3

    .line 461
    .restart local v3    # "isDown":Z
    :cond_12
    const/4 v3, 0x1

    goto :goto_4

    .line 468
    :cond_13
    const/4 v5, 0x1

    .line 469
    iput-boolean v11, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrolling:Z

    .line 470
    iget v7, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mAppendResistance:F

    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mCurrentOverScrollDistance:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrollDistance:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mResistance:F

    add-float v2, v7, v8

    .line 471
    .local v2, "fraction":F
    int-to-float v7, v4

    div-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/PullRefreshLayout;->offsetContent(I)V

    .end local v2    # "fraction":F
    :cond_14
    move v7, v5

    .line 473
    goto/16 :goto_2
.end method

.method public static removeLastRefreshTimeKeys(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 927
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 928
    const-string v6, "pull_to_refresh"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 929
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 930
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 931
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 932
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 930
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 935
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 938
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mEnablePull:Z

    if-nez v0, :cond_1

    .line 325
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mDrawOnTop:Z

    if-eqz v0, :cond_2

    .line 329
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 330
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mCurrentOverScrollDistance:I

    invoke-virtual {v0, v1, p1}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setCurrentOverScrollDistance(ILandroid/graphics/Canvas;)V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    if-eqz v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mCurrentOverScrollDistance:I

    invoke-virtual {v0, v1, p1}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setCurrentOverScrollDistance(ILandroid/graphics/Canvas;)V

    .line 339
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 287
    iget-boolean v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mEnablePull:Z

    if-nez v2, :cond_0

    .line 288
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 309
    :goto_0
    return v1

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/meizu/common/widget/PullRefreshLayout;->eventInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 296
    .local v0, "action":I
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PullRefreshLayout;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mHandled:Z

    .line 297
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 298
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    .line 300
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastEventY:F

    .line 301
    iput v3, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastTargetTop:I

    .line 302
    iput-boolean v3, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mRefreshFinished:Z

    goto :goto_0

    .line 304
    :cond_3
    if-nez v0, :cond_4

    .line 305
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mBouncer:Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;

    invoke-virtual {v2}, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->cancel()V

    .line 308
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastEventY:F

    goto :goto_0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/32 v8, 0xea60

    .line 787
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    if-eqz v4, :cond_4

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 792
    .local v2, "now":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 793
    .local v0, "d":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 794
    cmp-long v4, v0, v8

    if-gez v4, :cond_1

    .line 795
    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 796
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mSecondsAgo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 810
    .end local v0    # "d":J
    .end local v2    # "now":Ljava/util/Date;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    .line 798
    .restart local v0    # "d":J
    .restart local v2    # "now":Ljava/util/Date;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    cmp-long v4, v0, v10

    if-gez v4, :cond_2

    .line 799
    div-long v4, v0, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 800
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mMinutesAgo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 801
    :cond_2
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 802
    div-long v4, v0, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 803
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mHoursAgo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 805
    :cond_3
    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 810
    .end local v0    # "d":J
    .end local v2    # "now":Ljava/util/Date;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOffset:I

    return v0
.end method

.method public getOverScrollDistance()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrollDistance:I

    return v0
.end method

.method public getPromptTextColor()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->getTextColor()I

    move-result v0

    return v0
.end method

.method public getRefreshState()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsAnimation:Z

    return v0
.end method

.method public getRingBackgroundColor()I
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->getPaintArcBackColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRingColor()I
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->getPaintArcColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnablePull()Z
    .locals 1

    .prologue
    .line 909
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mEnablePull:Z

    return v0
.end method

.method isMx2()Z
    .locals 4

    .prologue
    .line 770
    const/4 v1, 0x0

    .line 772
    .local v1, "result":Z
    :try_start_0
    const-string v2, "android.os.BuildExt"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "IS_MX2"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 773
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 774
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 778
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v1

    .line 775
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isOptionalLastTimeDisplaySet()Z
    .locals 1

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsOptionalLastTimeSet:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 867
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 868
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTimeKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContext:Landroid/content/Context;

    const-string v4, "pull_to_refresh"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 870
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTimeKey:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 871
    .local v2, "time":J
    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 872
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    .line 876
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "time":J
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    .line 880
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 881
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTimeKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 882
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContext:Landroid/content/Context;

    const-string v3, "pull_to_refresh"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 883
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 884
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTimeKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 885
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 887
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/PullRefreshAnimationView;->removeCallbacksAndMessages()V

    .line 888
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 537
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 538
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PullRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    .line 283
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1009
    const-class v0, Lcom/meizu/common/widget/PullRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1010
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mEnablePull:Z

    if-nez v0, :cond_0

    .line 317
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 319
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mHandled:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 545
    iget-boolean v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mEnablePull:Z

    if-nez v2, :cond_1

    .line 546
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    const/4 v1, 0x0

    .line 551
    .local v1, "contentTop":I
    const/4 v0, 0x0

    .line 553
    .local v0, "contentBottom":I
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 555
    invoke-virtual {p0}, Lcom/meizu/common/widget/PullRefreshLayout;->getMeasuredHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 556
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, p4, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public removeLastRefreshTimeKey()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 914
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTimeKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 915
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContext:Landroid/content/Context;

    const-string v3, "pull_to_refresh"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 916
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 917
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTimeKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 918
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 919
    iput-object v5, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTimeKey:Ljava/lang/String;

    .line 920
    iput-object v5, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTime:Ljava/util/Date;

    .line 921
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setLastRefreshTimeDefault()V

    .line 924
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 981
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const-class v0, Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/meizu/common/widget/PullRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/meizu/common/widget/PullRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 986
    :cond_0
    return-void
.end method

.method public resetRingColor()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->resetRingColor()V

    .line 977
    :cond_0
    return-void
.end method

.method public setAppendResistance(F)V
    .locals 0
    .param p1, "resistance"    # F

    .prologue
    .line 1003
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mAppendResistance:F

    .line 1004
    return-void
.end method

.method public setEnablePull(Z)V
    .locals 0
    .param p1, "enablePull"    # Z

    .prologue
    .line 905
    iput-boolean p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mEnablePull:Z

    .line 906
    return-void
.end method

.method public setLastRefreshTimeKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 892
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iput-object p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshTimeKey:Ljava/lang/String;

    .line 896
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLastRefreshStr:Ljava/lang/String;

    .line 898
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mHoursAgo:Ljava/lang/String;

    .line 899
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mMinutesAgo:Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f0800da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mSecondsAgo:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOffset:I

    .line 207
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setExtraOffset(I)V

    .line 208
    return-void
.end method

.method public setOptionalLastTimeDisplay(ILjava/lang/String;)V
    .locals 2
    .param p1, "seconds"    # I
    .param p2, "displayText"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x3c

    .line 826
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsOptionalLastTimeSet:Z

    .line 827
    if-lt p1, v0, :cond_0

    .end local p1    # "seconds":I
    :goto_0
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOptionalSeconds:I

    .line 828
    if-nez p2, :cond_1

    .line 829
    invoke-virtual {p0}, Lcom/meizu/common/widget/PullRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOptionalText:Ljava/lang/String;

    .line 833
    :goto_1
    return-void

    .restart local p1    # "seconds":I
    :cond_0
    move p1, v0

    .line 827
    goto :goto_0

    .line 831
    .end local p1    # "seconds":I
    :cond_1
    iput-object p2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOptionalText:Ljava/lang/String;

    goto :goto_1
.end method

.method public setOverScrollDistance(I)V
    .locals 1
    .param p1, "overScrollDistance"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrollDistance:I

    .line 266
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setOverScrollDistance(I)V

    .line 267
    return-void
.end method

.method public setPromptTextColor(I)V
    .locals 1
    .param p1, "colorValue"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setTextColor(I)V

    .line 253
    return-void
.end method

.method public setPullGetDataListener(Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    iput-object p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;

    .line 225
    :cond_0
    return-void
.end method

.method public setPullRefreshLayoutListener(Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshLayoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshLayoutListener;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    iput-object p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshLayoutListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshLayoutListener;

    .line 235
    :cond_0
    return-void
.end method

.method public setResistance(F)V
    .locals 0
    .param p1, "resistance"    # F

    .prologue
    .line 994
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mResistance:F

    .line 995
    return-void
.end method

.method public setRingBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 961
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setPaintArcBackColor(I)V

    .line 964
    :cond_0
    return-void
.end method

.method public setRingColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 946
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setPaintArcColor(I)V

    .line 949
    :cond_0
    return-void
.end method

.method public startRefresh()V
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsAnimation:Z

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 190
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullDrawType:I

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mBouncer:Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mLineAnimationDistance:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->recover(I)V

    .line 192
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_LINE_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mBouncer:Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mArcAnimationDistance:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->recover(I)V

    .line 196
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_ARC_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    goto :goto_0
.end method

.method public stopRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullDrawType:I

    if-ne v0, v2, :cond_3

    .line 167
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->stopDrawArcAnimation()V

    .line 172
    :goto_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsAnimation:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mIsAnimation:Z

    .line 178
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 179
    iput-boolean v2, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mRefreshFinished:Z

    .line 180
    :cond_2
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_DEFAULT:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    .line 181
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mBouncer:Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;

    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->recover(I)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->stopDrawLineAnimation()V

    goto :goto_1
.end method
