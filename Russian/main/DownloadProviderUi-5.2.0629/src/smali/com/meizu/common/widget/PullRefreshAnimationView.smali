.class public Lcom/meizu/common/widget/PullRefreshAnimationView;
.super Ljava/lang/Object;
.source "PullRefreshAnimationView.java"


# static fields
.field private static DRAW_ARC_VIEW:I = 0x0

.field private static DRAW_LINE_VIEW:I = 0x0

.field private static INVALID:I = 0x0

.field public static final START_ANGLE_PROPERTY:Ljava/lang/String; = "startAngle"

.field public static final SWEEP_ANGLE_PROPERTY:Ljava/lang/String; = "sweepAngle"


# instance fields
.field private final BEFORE_LOADING_ANIM_DURATION:J

.field private COST_TIME_ARC:I

.field private COST_TIME_LINE:I

.field private final LOADING_ANIM_DURATION:J

.field private colorArray:[Ljava/lang/String;

.field private mAnimHeight:F

.field private mAnimSet:Landroid/animation/Animator;

.field private mAnimationDistance:I

.field private mArcAnimationRun:Z

.field private mCentX:F

.field private mCentY:F

.field private mCircleBounds:Landroid/graphics/RectF;

.field private mCurrentCircleY:F

.field private mCurrentOverScrollDistance:I

.field private mDrawType:I

.field private mEndLine:I

.field private mEndPointArray:Landroid/content/res/TypedArray;

.field private mExtraOffset:I

.field private mFontTop:F

.field private mForegroundColor:I

.field private mHalfAnimHeight:F

.field private mHandler:Landroid/os/Handler;

.field private mIsSpringBack:Z

.field private mLineAnimationRun:Z

.field private mLineRect:Landroid/graphics/RectF;

.field private mMaxPullHeight:F

.field private mMinPullHeight:F

.field private mNewForegroundColor:I

.field private mNewForegroundColorAlpha:I

.field private mNewPaintArcBackColor:I

.field private mNewPaintArcBackColorAlpha:I

.field private mNewY:F

.field private mOverscrollDistance:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintArc:Landroid/graphics/Paint;

.field private mPaintArcBack:Landroid/graphics/Paint;

.field private final mPaintArcBackDefaultColor:I

.field private mPaintLine:Landroid/graphics/Paint;

.field private mPaintLineBack:Landroid/graphics/Paint;

.field private mPaintLineWidth:F

.field private mPaintOffset:F

.field private mPull2Refresh:Ljava/lang/String;

.field private mPull2RefreshDefault:Ljava/lang/String;

.field private mPullGoRefresh:Ljava/lang/String;

.field private mRadius:F

.field private mRefreshing:Ljava/lang/String;

.field private mRingWidth:F

.field private mRunnable:Ljava/lang/Runnable;

.field private mShowArcDistance:I

.field private mStartAngle:F

.field private mStartLine:I

.field private mStartPointArray:Landroid/content/res/TypedArray;

.field private mStartTime:J

.field private mSweepAngle:F

.field private mTextColor:I

.field private mTextColorAlpha:I

.field private mTextMarginTop:I

.field private mTextSize:I

.field private mTotalFrame:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/meizu/common/widget/PullRefreshAnimationView;->INVALID:I

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/meizu/common/widget/PullRefreshAnimationView;->DRAW_LINE_VIEW:I

    .line 68
    const/4 v0, 0x1

    sput v0, Lcom/meizu/common/widget/PullRefreshAnimationView;->DRAW_ARC_VIEW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/view/View;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "colorValue"    # I
    .param p3, "drawType"    # I
    .param p4, "view"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x26000000

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    .line 35
    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    .line 36
    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mLineRect:Landroid/graphics/RectF;

    .line 37
    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 38
    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    .line 39
    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    .line 40
    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLine:Landroid/graphics/Paint;

    .line 41
    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineBack:Landroid/graphics/Paint;

    .line 42
    iput v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    .line 53
    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRadius:F

    .line 54
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRingWidth:F

    .line 55
    iput-boolean v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mArcAnimationRun:Z

    .line 56
    iput-boolean v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mLineAnimationRun:Z

    .line 57
    iput-boolean v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mIsSpringBack:Z

    .line 60
    const/16 v1, 0x28

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextSize:I

    .line 61
    const/16 v1, 0x1e

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextMarginTop:I

    .line 62
    iput v6, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineWidth:F

    .line 64
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintOffset:F

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColor:I

    .line 70
    sget v1, Lcom/meizu/common/widget/PullRefreshAnimationView;->INVALID:I

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mForegroundColor:I

    .line 71
    sget v1, Lcom/meizu/common/widget/PullRefreshAnimationView;->DRAW_ARC_VIEW:I

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mDrawType:I

    .line 84
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->COST_TIME_LINE:I

    .line 85
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->COST_TIME_ARC:I

    .line 87
    iput v6, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentCircleY:F

    .line 88
    iput v6, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewY:F

    .line 91
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "chocolate"

    aput-object v2, v1, v5

    const-string v2, "coral"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "dodgerBlue"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "fireBrick"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "forestGreeen"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "LimeGreen"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "peru"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "tomato"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->colorArray:[Ljava/lang/String;

    .line 95
    iput v7, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBackDefaultColor:I

    .line 105
    const-wide/16 v2, 0x6e0

    iput-wide v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->LOADING_ANIM_DURATION:J

    .line 106
    const-wide/16 v2, 0x460

    iput-wide v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->BEFORE_LOADING_ANIM_DURATION:J

    .line 110
    iput v6, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mFontTop:F

    .line 111
    iput v6, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mHalfAnimHeight:F

    .line 383
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mHandler:Landroid/os/Handler;

    .line 388
    new-instance v1, Lcom/meizu/common/widget/PullRefreshAnimationView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/PullRefreshAnimationView$1;-><init>(Lcom/meizu/common/widget/PullRefreshAnimationView;)V

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRunnable:Ljava/lang/Runnable;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mOverscrollDistance:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mShowArcDistance:I

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0268

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRadius:F

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRingWidth:F

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mMaxPullHeight:F

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mMinPullHeight:F

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimHeight:F

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextSize:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextMarginTop:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mStartPointArray:Landroid/content/res/TypedArray;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mEndPointArray:Landroid/content/res/TypedArray;

    .line 128
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mEndPointArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTotalFrame:I

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0272

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintOffset:F

    .line 131
    iput p3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mDrawType:I

    .line 132
    iput p2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mForegroundColor:I

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPull2Refresh:Ljava/lang/String;

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPull2RefreshDefault:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRefreshing:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPullGoRefresh:Ljava/lang/String;

    .line 137
    iput v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mStartLine:I

    .line 139
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 140
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 144
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 145
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    .line 146
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mForegroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 150
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRingWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    .line 153
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRingWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLine:Landroid/graphics/Paint;

    .line 159
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLine:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLine:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mForegroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLine:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineBack:Landroid/graphics/Paint;

    .line 164
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineBack:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineBack:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineBack:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineBack:Landroid/graphics/Paint;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 169
    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mForegroundColor:I

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColor:I

    .line 170
    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColorAlpha:I

    .line 171
    iput v7, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColor:I

    .line 172
    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColorAlpha:I

    .line 173
    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColorAlpha:I

    .line 175
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 176
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mFontTop:F

    .line 177
    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mShowArcDistance:I

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextMarginTop:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mHalfAnimHeight:F

    .line 178
    invoke-virtual {p0, p4}, Lcom/meizu/common/widget/PullRefreshAnimationView;->initView(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/PullRefreshAnimationView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mArcAnimationRun:Z

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/PullRefreshAnimationView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mLineAnimationRun:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/PullRefreshAnimationView;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentCircleY:F

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/PullRefreshAnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->COST_TIME_ARC:I

    return v0
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimSet:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/meizu/common/widget/PullRefreshAnimationView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimSet:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/PullRefreshAnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mExtraOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/PullRefreshAnimationView;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineWidth:F

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/PullRefreshAnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->COST_TIME_LINE:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/PullRefreshAnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTotalFrame:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/PullRefreshAnimationView;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRadius:F

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/PullRefreshAnimationView;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PullRefreshAnimationView;

    .prologue
    .line 32
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRingWidth:F

    return v0
.end method

.method private createLoadingAnimator()Landroid/animation/Animator;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 493
    const/4 v6, 0x0

    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 494
    .local v0, "key1":Landroid/animation/Keyframe;
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x43a50000    # 330.0f

    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 495
    .local v1, "key2":Landroid/animation/Keyframe;
    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x441d8000    # 630.0f

    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 496
    .local v2, "key3":Landroid/animation/Keyframe;
    const-string v6, "startAngle"

    new-array v7, v11, [Landroid/animation/Keyframe;

    aput-object v0, v7, v8

    aput-object v1, v7, v9

    aput-object v2, v7, v10

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 497
    .local v4, "pvhStart":Landroid/animation/PropertyValuesHolder;
    const-string v6, "sweepAngle"

    new-array v7, v11, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 499
    .local v5, "pvhSweep":Landroid/animation/PropertyValuesHolder;
    new-array v6, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v6, v8

    aput-object v5, v6, v9

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 500
    .local v3, "loadingAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x6e0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 501
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 502
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 503
    return-object v3

    .line 497
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        -0x3cea0000    # -150.0f
        0x0
    .end array-data
.end method

.method private createRefreshAnimator()Landroid/animation/Animator;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 474
    const-string v5, "startAngle"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 476
    .local v2, "pvhStart":Landroid/animation/PropertyValuesHolder;
    const-string v5, "sweepAngle"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 479
    .local v3, "pvhSweep":Landroid/animation/PropertyValuesHolder;
    new-array v5, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 480
    .local v0, "beforeLoadingAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x460

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 481
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 483
    invoke-direct {p0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->createLoadingAnimator()Landroid/animation/Animator;

    move-result-object v1

    .line 485
    .local v1, "loadingAnim":Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 486
    .local v4, "setList":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 487
    return-object v4

    .line 474
    nop

    :array_0
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x43870000    # 270.0f
    .end array-data

    .line 476
    :array_1
    .array-data 4
        -0x3c4c0000    # -360.0f
        0x0
    .end array-data
.end method

.method private drawArcView(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    .line 237
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColorAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColorAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColorAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    if-ge v0, v1, :cond_0

    .line 242
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mExtraOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    int-to-float v1, v1

    iget v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mHalfAnimHeight:F

    sub-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentCircleY:F

    .line 246
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 247
    .local v10, "restoreCount":I
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mShowArcDistance:I

    if-ge v0, v1, :cond_1

    .line 289
    :goto_1
    return-void

    .line 244
    .end local v10    # "restoreCount":I
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mExtraOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    int-to-float v1, v1

    iget v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mHalfAnimHeight:F

    sub-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentCircleY:F

    goto :goto_0

    .line 249
    .restart local v10    # "restoreCount":I
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentCircleY:F

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 251
    const/4 v8, 0x0

    .line 253
    .local v8, "distance":F
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mShowArcDistance:I

    if-lt v0, v1, :cond_3

    .line 254
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mShowArcDistance:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x168

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    iget v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mShowArcDistance:I

    sub-int/2addr v1, v5

    div-int/2addr v0, v1

    int-to-float v8, v0

    .line 260
    :cond_2
    :goto_2
    iget v6, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCentX:F

    .line 261
    .local v6, "baseX":F
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCentY:F

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRingWidth:F

    add-float v7, v0, v1

    .line 263
    .local v7, "baseY":F
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextMarginTop:I

    int-to-float v0, v0

    add-float/2addr v0, v7

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mFontTop:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewY:F

    .line 265
    div-float v9, v8, v3

    .line 267
    .local v9, "fraction":F
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColorAlpha:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 268
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 270
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mArcAnimationRun:Z

    if-eqz v0, :cond_5

    .line 271
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mStartAngle:F

    iget v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mSweepAngle:F

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 272
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRefreshing:Ljava/lang/String;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewY:F

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 288
    :goto_3
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    .line 255
    .end local v6    # "baseX":F
    .end local v7    # "baseY":F
    .end local v9    # "fraction":F
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mShowArcDistance:I

    if-ge v0, v1, :cond_4

    .line 256
    const/4 v8, 0x0

    goto :goto_2

    .line 257
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    if-le v0, v1, :cond_2

    .line 258
    const/high16 v8, 0x43b40000    # 360.0f

    goto :goto_2

    .line 273
    .restart local v6    # "baseX":F
    .restart local v7    # "baseY":F
    .restart local v9    # "fraction":F
    :cond_5
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    if-lt v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mIsSpringBack:Z

    if-nez v0, :cond_6

    .line 274
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPullGoRefresh:Ljava/lang/String;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewY:F

    iget-object v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 275
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 276
    :cond_6
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mIsSpringBack:Z

    if-eqz v0, :cond_7

    .line 277
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColorAlpha:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 278
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColorAlpha:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 279
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mStartAngle:F

    iget v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mSweepAngle:F

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 280
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRefreshing:Ljava/lang/String;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewY:F

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 282
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColorAlpha:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColorAlpha:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 284
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPull2Refresh:Ljava/lang/String;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewY:F

    iget-object v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 285
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method private drawLineView(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/high16 v11, 0x40800000    # 4.0f

    .line 201
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 202
    .local v8, "nowTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 204
    .local v10, "restoreCount":I
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mMaxPullHeight:F

    div-float/2addr v2, v11

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 205
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineWidth:F

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 213
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mExtraOffset:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mExtraOffset:I

    int-to-float v0, v0

    iget v4, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineWidth:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLine:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 214
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mLineAnimationRun:Z

    if-eqz v0, :cond_0

    .line 215
    iget-wide v4, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mStartTime:J

    sub-long v4, v8, v4

    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->COST_TIME_LINE:I

    int-to-long v12, v0

    rem-long/2addr v4, v12

    invoke-direct {p0, v4, v5}, Lcom/meizu/common/widget/PullRefreshAnimationView;->getArrayIndex(J)I

    move-result v7

    .line 216
    .local v7, "index":I
    const/4 v3, 0x0

    .line 217
    .local v3, "startX":F
    const/4 v6, 0x0

    .line 219
    .local v6, "endX":F
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mStartPointArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_3

    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mEndPointArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mStartPointArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v0, v2

    .line 221
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mEndPointArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v0, v2

    .line 223
    .end local v6    # "endX":F
    .local v1, "endX":F
    :goto_1
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mExtraOffset:I

    int-to-float v2, v0

    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mExtraOffset:I

    int-to-float v0, v0

    iget v4, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineWidth:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintOffset:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineBack:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    .end local v1    # "endX":F
    .end local v3    # "startX":F
    .end local v7    # "index":I
    :cond_0
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 228
    return-void

    .line 206
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mMaxPullHeight:F

    div-float/2addr v2, v11

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    if-gt v0, v2, :cond_2

    .line 207
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mMaxPullHeight:F

    div-float/2addr v0, v11

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mMaxPullHeight:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v2, v4

    div-float/2addr v2, v11

    iget v4, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mMaxPullHeight:F

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mMaxPullHeight:F

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    div-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineWidth:F

    goto/16 :goto_0

    .line 209
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mMaxPullHeight:F

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintLineWidth:F

    goto/16 :goto_0

    .restart local v3    # "startX":F
    .restart local v6    # "endX":F
    .restart local v7    # "index":I
    :cond_3
    move v1, v6

    .end local v6    # "endX":F
    .restart local v1    # "endX":F
    goto :goto_1
.end method

.method private getArrayIndex(J)I
    .locals 7
    .param p1, "ctime"    # J

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "index":I
    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTotalFrame:I

    int-to-long v2, v1

    mul-long/2addr v2, p1

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->COST_TIME_LINE:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 294
    return v0
.end method


# virtual methods
.method public getPaintArcBackColor()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColor:I

    return v0
.end method

.method public getPaintArcColor()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColor:I

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mStartAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mSweepAngle:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColor:I

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 183
    iput-object p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    .line 184
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    .line 185
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mLineRect:Landroid/graphics/RectF;

    .line 186
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCentX:F

    .line 187
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRadius:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRingWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextMarginTop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCentY:F

    .line 189
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCentX:F

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRingWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 190
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCentY:F

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRingWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 191
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCentX:F

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRingWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 192
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCentY:F

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRingWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 194
    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimSet:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimSet:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 429
    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimSet:Landroid/animation/Animator;

    .line 432
    :cond_1
    return-void
.end method

.method public resetRingColor()V
    .locals 3

    .prologue
    const/high16 v2, 0x26000000

    .line 461
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mForegroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mForegroundColor:I

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColor:I

    .line 465
    iput v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColor:I

    .line 466
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColorAlpha:I

    .line 467
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColorAlpha:I

    .line 469
    :cond_0
    return-void
.end method

.method public resetSpringFlag(Z)V
    .locals 0
    .param p1, "isSpringBack"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mIsSpringBack:Z

    .line 322
    return-void
.end method

.method public setAnimationDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 368
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    .line 369
    return-void
.end method

.method public setCurrentOverScrollDistance(ILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "currentOverScrollDistance"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 298
    if-lez p1, :cond_0

    .line 301
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    .line 303
    sget v0, Lcom/meizu/common/widget/PullRefreshAnimationView;->DRAW_ARC_VIEW:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mDrawType:I

    if-ne v0, v1, :cond_4

    .line 304
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mShowArcDistance:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    if-ge v0, v1, :cond_3

    .line 305
    iput-boolean v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mArcAnimationRun:Z

    .line 312
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/PullRefreshAnimationView;->drawArcView(Landroid/graphics/Canvas;)V

    .line 318
    :cond_2
    :goto_1
    return-void

    .line 307
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimationDistance:I

    if-ge v0, v1, :cond_1

    .line 310
    iput-boolean v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mArcAnimationRun:Z

    goto :goto_0

    .line 313
    :cond_4
    sget v0, Lcom/meizu/common/widget/PullRefreshAnimationView;->DRAW_LINE_VIEW:I

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mDrawType:I

    if-ne v0, v1, :cond_2

    .line 314
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mCurrentOverScrollDistance:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mMaxPullHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 315
    iput-boolean v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mLineAnimationRun:Z

    .line 316
    :cond_5
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/PullRefreshAnimationView;->drawLineView(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public setExtraOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mExtraOffset:I

    .line 361
    return-void
.end method

.method public setLastRefreshTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastRefreshTime"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPull2Refresh:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setLastRefreshTimeDefault()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPull2RefreshDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPull2Refresh:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setOverScrollDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mOverscrollDistance:I

    .line 365
    return-void
.end method

.method public setPaintArcBackColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArcBack:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColor:I

    .line 452
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewPaintArcBackColorAlpha:I

    .line 454
    :cond_0
    return-void
.end method

.method public setPaintArcColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaintArc:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColor:I

    .line 438
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mNewForegroundColorAlpha:I

    .line 441
    :cond_0
    return-void
.end method

.method public setStartAngle(F)V
    .locals 0
    .param p1, "startAngle"    # F

    .prologue
    .line 534
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mStartAngle:F

    .line 535
    return-void
.end method

.method public setStartTime()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mArcAnimationRun:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mLineAnimationRun:Z

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mDrawType:I

    sget v1, Lcom/meizu/common/widget/PullRefreshAnimationView;->DRAW_LINE_VIEW:I

    if-ne v0, v1, :cond_5

    .line 337
    iput-boolean v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mLineAnimationRun:Z

    .line 338
    iput-boolean v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mArcAnimationRun:Z

    .line 344
    :cond_2
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mStartTime:J

    .line 346
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mArcAnimationRun:Z

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimSet:Landroid/animation/Animator;

    if-nez v0, :cond_3

    .line 348
    invoke-direct {p0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->createRefreshAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimSet:Landroid/animation/Animator;

    .line 349
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mAnimSet:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 354
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mLineAnimationRun:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mArcAnimationRun:Z

    if-eqz v0, :cond_0

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 339
    :cond_5
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mDrawType:I

    sget v1, Lcom/meizu/common/widget/PullRefreshAnimationView;->DRAW_ARC_VIEW:I

    if-ne v0, v1, :cond_2

    .line 340
    iput-boolean v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mLineAnimationRun:Z

    .line 341
    iput-boolean v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mArcAnimationRun:Z

    goto :goto_1
.end method

.method public setSweepAngle(F)V
    .locals 3
    .param p1, "sweepAngle"    # F

    .prologue
    .line 517
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mSweepAngle:F

    .line 518
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anim-sw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "colorValue"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColor:I

    .line 373
    iget v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColorAlpha:I

    .line 374
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    :cond_0
    return-void
.end method

.method public stopDrawArcAnimation()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mArcAnimationRun:Z

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mIsSpringBack:Z

    .line 327
    return-void
.end method

.method public stopDrawLineAnimation()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView;->mLineAnimationRun:Z

    .line 331
    return-void
.end method
