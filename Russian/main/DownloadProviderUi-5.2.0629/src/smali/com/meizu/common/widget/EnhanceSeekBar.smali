.class public Lcom/meizu/common/widget/EnhanceSeekBar;
.super Landroid/view/View;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;,
        Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;,
        Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;,
        Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;,
        Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;,
        Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final CIRCLE_RADIUS:I = 0x6

.field private static final MIN_HEIGHT:I = 0x14

.field private static final MIN_WIDTH:I = 0x40

.field private static final STROKE_WIDTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "EnhanceSeekBar"

.field private static final TEXT_HEIGHT:I = 0x32

.field private static final TEXT_SIZE:I = 0x28

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private hasMoved:Z

.field private mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

.field private mAccessibilityFocused:Z

.field private mAuraRadis:I

.field private mAuraThumb:Landroid/graphics/drawable/Drawable;

.field private mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

.field private mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

.field private mHalfThumbHeight:I

.field private mHalfThumbWidth:I

.field private mInitialThumbX:F

.field private mInitialTouchX:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDrag:Z

.field private mIsDragging:Z

.field private mIsInItemPositon:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mMax:I

.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintColor:I

.field private mProgress:I

.field private mScaledTouchSlop:I

.field private mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownProgress:I

.field private mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 150
    const v0, 0x7f010113

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-boolean v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDrag:Z

    .line 79
    iput v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    .line 80
    iput v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    .line 81
    iput v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    .line 99
    new-instance v6, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-direct {v6, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 100
    new-instance v6, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-direct {v6, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 102
    new-instance v6, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    .line 103
    new-instance v6, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    invoke-direct {v6, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    .line 107
    iput-boolean v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    .line 112
    iput-boolean v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    .line 155
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mScaledTouchSlop:I

    .line 156
    sget-object v6, Lcom/meizu/common/R$styleable;->EnhanceSeekBar:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 158
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 159
    .local v2, "items":[Ljava/lang/CharSequence;
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setItems([Ljava/lang/CharSequence;)V

    .line 161
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 162
    .local v3, "progress":I
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(I)V

    .line 164
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 165
    .local v1, "itemCount":I
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setItemsCount(I)V

    .line 167
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 168
    .local v5, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020214

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 171
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraThumb:Landroid/graphics/drawable/Drawable;

    .line 172
    const/4 v6, 0x5

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    .line 173
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 177
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0081

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    .line 178
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 181
    .local v4, "sdkApi":I
    const/16 v6, 0x15

    if-lt v4, v6, :cond_1

    .line 182
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ea8f5c3    # 0.33f

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_1
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceSeekBar;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/EnhanceSeekBar;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceSeekBar;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/EnhanceSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceSeekBar;

    .prologue
    .line 65
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    return v0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 737
    :cond_0
    return-void
.end method

.method private flingThumb(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v4

    .line 668
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .line 671
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 673
    .local v5, "x":I
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 674
    .local v2, "rect":Landroid/graphics/Rect;
    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    int-to-float v7, v5

    add-float/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 676
    .local v3, "thumbX":I
    if-gez v3, :cond_1

    .line 677
    const/4 v3, 0x0

    .line 682
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 683
    .local v1, "process":I
    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 685
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v3

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v3, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 686
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 687
    return-void

    .line 678
    .end local v1    # "process":I
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    goto :goto_0
.end method

.method private declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPointInside(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 660
    const/4 v0, 0x1

    return v0
.end method

.method private onProgressRefresh(F)V
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 383
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 384
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 391
    :cond_0
    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    .prologue
    .line 985
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 986
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    .line 990
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 991
    return-void

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 368
    monitor-enter p0

    if-gez p1, :cond_0

    .line 369
    const/4 p1, 0x0

    .line 371
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-eq p1, v1, :cond_2

    .line 372
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    .line 374
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    if-le v1, p1, :cond_1

    .line 375
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    .line 377
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 378
    .local v0, "scale":F
    :goto_0
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onProgressRefresh(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .end local v0    # "scale":F
    :cond_2
    monitor-exit p0

    return-void

    .line 377
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumbOffset:I

    .line 300
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 301
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 16
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v10

    sub-int v10, p1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v2, v10, v11

    .line 424
    .local v2, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 425
    .local v8, "thumbWidth":I
    sub-int/2addr v2, v8

    .line 430
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, p3

    int-to-float v11, v2

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    sub-int v7, v2, v10

    .line 434
    .local v7, "thumbPos":I
    const/high16 v10, -0x80000000

    move/from16 v0, p4

    if-ne v0, v10, :cond_2

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 436
    .local v4, "oldBounds":Landroid/graphics/Rect;
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 437
    .local v9, "topBound":I
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 438
    .local v3, "bottomBound":I
    const/4 v6, 0x1

    .line 445
    .end local v4    # "oldBounds":Landroid/graphics/Rect;
    .local v6, "shouldAnimation":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v10, :cond_0

    .line 446
    if-nez v6, :cond_3

    .line 447
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 448
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 456
    :cond_0
    :goto_1
    if-eqz v6, :cond_5

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 459
    .local v5, "oldThumbPos":I
    if-ne v5, v7, :cond_4

    .line 460
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    .line 461
    const/high16 v10, -0x80000000

    move/from16 v0, p4

    if-ne v0, v10, :cond_1

    .line 462
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v10, :cond_1

    .line 463
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v11

    move-object/from16 v0, p0

    invoke-interface {v10, v0, v11}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V

    .line 497
    .end local v5    # "oldThumbPos":I
    :cond_1
    :goto_2
    return-void

    .line 440
    .end local v3    # "bottomBound":I
    .end local v6    # "shouldAnimation":Z
    .end local v9    # "topBound":I
    :cond_2
    move/from16 v9, p4

    .line 441
    .restart local v9    # "topBound":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int v3, v9, v10

    .line 442
    .restart local v3    # "bottomBound":I
    const/4 v6, 0x0

    .restart local v6    # "shouldAnimation":Z
    goto :goto_0

    .line 451
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 452
    const/4 v6, 0x0

    goto :goto_1

    .line 468
    .restart local v5    # "oldThumbPos":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    int-to-float v11, v5

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->setXY(FF)V

    .line 469
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    int-to-float v11, v7

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->setXY(FF)V

    .line 470
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    const-string v11, "xY"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 474
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v12, 0x100

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 475
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    new-instance v11, Lcom/meizu/common/widget/EnhanceSeekBar$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$1;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 496
    .end local v5    # "oldThumbPos":I
    :goto_3
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    goto/16 :goto_2

    .line 493
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    add-int v11, v7, v8

    invoke-virtual {v10, v7, v9, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    goto :goto_3
.end method

.method private trackTapUpTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v3

    .line 721
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 722
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    int-to-float v4, v5

    .line 723
    .local v4, "x":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v4, v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v1, v5

    .line 724
    .local v1, "process":F
    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v5, v5

    div-float v2, v1, v5

    .line 725
    .local v2, "scale":F
    float-to-int v5, v1

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 726
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/high16 v7, -0x80000000

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 727
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v5

    .line 696
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v0, v7, v8

    .line 697
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v6, v7

    .line 699
    .local v6, "x":I
    const/4 v2, 0x0

    .line 701
    .local v2, "progress":F
    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    int-to-float v8, v6

    add-float/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v7, v8

    float-to-int v4, v7

    .line 702
    .local v4, "thumbX":I
    if-gez v4, :cond_0

    .line 703
    const/4 v3, 0x0

    .line 710
    .local v3, "scale":F
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v1

    .line 711
    .local v1, "max":I
    int-to-float v7, v1

    mul-float/2addr v7, v3

    add-float/2addr v2, v7

    .line 712
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 713
    return-void

    .line 704
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v7

    sub-int v7, v5, v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    if-le v4, v7, :cond_1

    .line 705
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 707
    .end local v3    # "scale":F
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int v7, v4, v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v3, v7, v8

    .restart local v3    # "scale":F
    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 409
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 411
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v0

    .line 413
    .local v0, "max":I
    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 414
    .local v1, "scale":F
    :goto_0
    if-eqz v2, :cond_0

    .line 415
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 417
    :cond_0
    return-void

    .line 413
    .end local v1    # "scale":F
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 397
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 399
    .local v0, "state":[I
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 401
    .end local v0    # "state":[I
    :cond_0
    return-void
.end method

.method public declared-synchronized getItemsCount()I
    .locals 1

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1005
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1006
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    .line 1008
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1010
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 501
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 502
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 504
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 510
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 511
    .local v3, "available":F
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v9

    .line 512
    .local v9, "max":I
    if-lez v9, :cond_0

    int-to-float v0, v9

    div-float v10, v3, v0

    .line 514
    .local v10, "offset":F
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 515
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 516
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 517
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-gt v8, v9, :cond_2

    .line 518
    int-to-float v0, v8

    mul-float/2addr v0, v10

    const/4 v1, 0x0

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 517
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 507
    .end local v3    # "available":F
    .end local v8    # "i":I
    .end local v9    # "max":I
    .end local v10    # "offset":F
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 520
    .restart local v3    # "available":F
    .restart local v8    # "i":I
    .restart local v9    # "max":I
    .restart local v10    # "offset":F
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 522
    const/4 v8, 0x0

    :goto_2
    if-gt v8, v9, :cond_5

    .line 523
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 524
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    :goto_3
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    aget-object v12, v0, v8

    check-cast v12, Ljava/lang/String;

    .line 530
    .local v12, "string":Ljava/lang/String;
    int-to-float v0, v8

    mul-float/2addr v0, v10

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 522
    .end local v12    # "string":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 526
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 533
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 534
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 536
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 537
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 541
    :goto_4
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDrag:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 542
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 543
    .local v6, "X":I
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 544
    .local v7, "Y":I
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v11, v0, 0x2

    .line 545
    .local v11, "radis":I
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraThumb:Landroid/graphics/drawable/Drawable;

    sub-int v1, v6, v11

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    sub-int/2addr v1, v2

    sub-int v2, v7, v11

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    sub-int/2addr v2, v4

    add-int v4, v6, v11

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    add-int/2addr v4, v5

    add-int v5, v7, v11

    iget v13, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    add-int/2addr v5, v13

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 546
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraThumb:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 547
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 549
    .end local v6    # "X":I
    .end local v7    # "Y":I
    .end local v11    # "radis":I
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 550
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    .end local v3    # "available":F
    .end local v8    # "i":I
    .end local v9    # "max":I
    .end local v10    # "offset":F
    :cond_7
    monitor-exit p0

    return-void

    .line 539
    .restart local v3    # "available":F
    .restart local v8    # "i":I
    .restart local v9    # "max":I
    .restart local v10    # "offset":F
    :cond_8
    :try_start_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 962
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 964
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 975
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 976
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 978
    .end local v1    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 966
    .restart local v1    # "action":I
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 969
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 972
    :pswitch_3
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 815
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 816
    const-class v0, Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 817
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 821
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 822
    const-class v1, Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 824
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    .line 826
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 827
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 829
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 830
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 833
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 557
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    move v3, v4

    .line 558
    .local v3, "thumbHeight":I
    :goto_0
    const/16 v2, 0x14

    .line 559
    .local v2, "minHeight":I
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 560
    add-int/lit8 v2, v2, 0x32

    .line 562
    :cond_0
    move v0, v2

    .line 563
    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v5

    add-int/lit8 v5, v5, 0x40

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    add-int v1, v5, v6

    .line 564
    .local v1, "dw":I
    if-eqz v3, :cond_2

    .line 565
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    const/16 v4, 0x32

    :cond_1
    add-int/2addr v4, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 567
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 568
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 570
    const/4 v4, 0x0

    invoke-static {v1, p1, v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, p2, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return-void

    .line 557
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v2    # "minHeight":I
    .end local v3    # "thumbHeight":I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 808
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;

    .line 809
    .local v0, "ss":Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 810
    iget v1, v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 811
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 798
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 799
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 801
    .local v0, "ss":Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    iput v2, v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    .line 803
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/EnhanceSeekBar;->updateThumbPos(II)V

    .line 406
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    .line 744
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onStartTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    .line 747
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    .line 754
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onStopTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    .line 757
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 577
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 654
    :cond_0
    :goto_0
    return v3

    .line 581
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v5

    if-eqz v5, :cond_0

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 586
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    move v3, v4

    .line 654
    goto :goto_0

    .line 588
    :pswitch_0
    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    .line 589
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 590
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    .line 592
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 593
    .local v0, "available":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadis:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float v1, v5, v6

    .line 594
    .local v1, "process":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    .line 596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/meizu/common/widget/EnhanceSeekBar;->isPointInside(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 597
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    .line 598
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    .line 599
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 601
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStartTrackingTouch()V

    .line 604
    :cond_5
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->attemptClaimDrag()V

    .line 605
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    goto :goto_1

    .line 609
    .end local v0    # "available":I
    .end local v1    # "process":F
    :pswitch_1
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v5, :cond_6

    .line 610
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    .line 611
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->flingThumb(Landroid/view/MotionEvent;)V

    .line 612
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->attemptClaimDrag()V

    .line 614
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mScaledTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    .line 615
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    .line 616
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDrag:Z

    .line 617
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 618
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 621
    :cond_7
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    goto/16 :goto_1

    .line 626
    :pswitch_2
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    if-nez v5, :cond_8

    .line 627
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->trackTapUpTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 630
    :cond_8
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDrag:Z

    .line 631
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    .line 632
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 635
    :cond_9
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v5, :cond_a

    .line 636
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 637
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStopTrackingTouch()V

    .line 638
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    goto/16 :goto_1

    .line 641
    :cond_a
    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    invoke-virtual {p0, v5, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    goto/16 :goto_1

    .line 646
    :pswitch_3
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v5, :cond_b

    .line 647
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStopTrackingTouch()V

    .line 648
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    .line 650
    :cond_b
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 837
    const/16 v4, 0x40

    if-ne p1, v4, :cond_1

    .line 838
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    .line 843
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 868
    :goto_1
    return v2

    .line 839
    :cond_1
    const/16 v4, 0x80

    if-ne p1, v4, :cond_0

    .line 840
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    goto :goto_0

    .line 846
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 847
    goto :goto_1

    .line 850
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v1

    .line 851
    .local v1, "progress":I
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 852
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 868
    goto :goto_1

    .line 854
    :sswitch_0
    if-gtz v1, :cond_4

    move v2, v3

    .line 855
    goto :goto_1

    .line 857
    :cond_4
    sub-int v4, v1, v0

    invoke-virtual {p0, v4, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    goto :goto_1

    .line 861
    :sswitch_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_5

    move v2, v3

    .line 862
    goto :goto_1

    .line 864
    :cond_5
    add-int v4, v1, v0

    invoke-virtual {p0, v4, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    goto :goto_1

    .line 852
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setItems([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 202
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 204
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    .line 205
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_1
    array-length v0, p1

    .line 210
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    .line 211
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    goto :goto_0
.end method

.method public setItemsCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    goto :goto_0

    .line 228
    :cond_1
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    goto :goto_0
.end method

.method public setOnEnhanceSeekBarChangeListener(Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    .line 194
    return-void
.end method

.method public setPaintColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 956
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    .line 957
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 309
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "fromFling"    # Z

    .prologue
    .line 316
    monitor-enter p0

    if-gez p1, :cond_0

    .line 317
    const/4 p1, 0x0

    .line 320
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-le p1, v2, :cond_1

    .line 321
    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    .line 324
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    if-ne p1, v2, :cond_2

    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    if-nez v2, :cond_4

    .line 325
    :cond_2
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    .line 326
    if-nez p2, :cond_6

    .line 327
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 328
    .local v1, "scale":F
    :goto_0
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->onProgressRefresh(F)V

    .line 334
    .end local v1    # "scale":F
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 335
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    if-eqz v2, :cond_4

    .line 336
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->scheduleAccessibilityEventSender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_4
    monitor-exit p0

    return-void

    .line 327
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 330
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 331
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressDragging(Lcom/meizu/common/widget/EnhanceSeekBar;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 316
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "oldThumbWidth":I
    if-nez p1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020214

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 245
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v3, :cond_6

    .line 246
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 247
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 248
    const/4 v0, 0x1

    .line 253
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_4

    .line 254
    if-eqz v0, :cond_1

    .line 264
    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 266
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumbOffset:I

    .line 268
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->requestLayout()V

    .line 274
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    .line 278
    :cond_4
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 279
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 280
    if-eqz v0, :cond_5

    .line 281
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->updateThumbPos(II)V

    .line 282
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 283
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDrawableState()[I

    move-result-object v2

    .line 284
    .local v2, "state":[I
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 287
    .end local v2    # "state":[I
    :cond_5
    return-void

    .line 250
    .end local v0    # "needUpdate":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0
.end method
