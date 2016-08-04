.class public Lcom/meizu/common/widget/AnimSeekBar;
.super Lcom/meizu/common/widget/SkipPosSeekBar;
.source "AnimSeekBar.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final DEFAULT_ANIMSEEKBAE_HEIGHT:I = 0x41

.field private static final DEFAULT_DISTANCE_BEW:I = 0x28

.field private static final DEFAULT_EXPANDED_PIN_RADIUS_DP:I = 0xf

.field private static final DEFAULT_LAGRECIRCLE_MOVEUP_VALUE:I = 0x18

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final DEFAULT_TEXT_SIZE:I = 0xf

.field private static final DEFAULT_THUMB_RADIUS_DP:F = 0.0f

.field private static final Debug:Z = false

.field private static final TAG:Ljava/lang/String; = "AnimSeekBar"


# instance fields
.field private mAinmSeekBarHeight:I

.field private mBounds:Landroid/graphics/Rect;

.field private mCheckRadisChanged:Z

.field private mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

.field private mCircleRadius:I

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mDistanceBwCircle:I

.field private mFadeAnim:Landroid/animation/ValueAnimator;

.field private mFadeInterpolator:Landroid/view/animation/Interpolator;

.field private mFadeValue:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mIsLongOrScroll:Z

.field private mIsStartAnim:Z

.field private mIsTapPressed:Z

.field private mMoveAnim:Landroid/animation/ValueAnimator;

.field private mMoveDownInterpolator:Landroid/view/animation/Interpolator;

.field private mMoveUpInterpolator:Landroid/view/animation/Interpolator;

.field private mMoveUpValue:I

.field private mMoveUpValueDp:I

.field private mPinRadisMax:F

.field private mPinRadisMin:F

.field private mPinRadiusPx:F

.field private mProgressDrawble:Landroid/graphics/drawable/Drawable;

.field private mRes:Landroid/content/res/Resources;

.field private mScaleInterpolator:Landroid/view/animation/Interpolator;

.field private mScaleanim:Landroid/animation/ValueAnimator;

.field private mSdkApi:I

.field private mTextNumber:Ljava/lang/String;

.field private mTextNumberColor:I

.field private mTextNumberSize:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mThumbHeight:F

.field private mThumbRadis:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/AnimSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 207
    const v0, 0x7f010120

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/AnimSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    .line 144
    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    .line 150
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMax:F

    .line 154
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMin:F

    .line 158
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    .line 160
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 162
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsLongOrScroll:Z

    .line 164
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCheckRadisChanged:Z

    .line 182
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultWidth:I

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mGesture:Landroid/view/GestureDetector;

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AnimSeekBar;->seekBarAnimationInit(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/AnimSeekBar;F)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimSeekBar;
    .param p1, "x1"    # F

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AnimSeekBar;->setSize(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AnimSeekBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AnimSeekBar;->setFadeValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/AnimSeekBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AnimSeekBar;->setMoveValue(I)V

    return-void
.end method

.method private onActionUp(FF)V
    .locals 2
    .param p1, "f"    # F
    .param p2, "g"    # F

    .prologue
    const/4 v1, 0x0

    .line 398
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-eqz v0, :cond_0

    .line 399
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->releasePin()V

    .line 402
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsLongOrScroll:Z

    .line 403
    return-void
.end method

.method private pressPin()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0xa6

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 494
    new-array v0, v3, [F

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    aput v1, v0, v2

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    .line 495
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$1;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 504
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 505
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 506
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 509
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    .line 510
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$2;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 521
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 522
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 523
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 526
    new-array v0, v3, [I

    aput v2, v0, v2

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    aput v1, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    .line 527
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$3;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 536
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 537
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 538
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 539
    return-void

    .line 509
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private releasePin()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0xa6

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 543
    new-array v0, v3, [F

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v2

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    aput v1, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    .line 544
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$4;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 553
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 554
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 555
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 557
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    .line 558
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$5;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$5;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 567
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 568
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 569
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 571
    new-array v0, v3, [I

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    aput v1, v0, v2

    aput v2, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    .line 572
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$6;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$6;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 581
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 582
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveDownInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 583
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 584
    return-void

    .line 557
    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private seekBarAnimationInit(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v7, 0x3ea8f5c3    # 0.33f

    const v6, 0x3dcccccd    # 0.1f

    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    .line 217
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mGesture:Landroid/view/GestureDetector;

    .line 218
    sget-object v1, Lcom/meizu/common/R$styleable;->AnimSeekBar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 219
    .local v0, "seek":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    .line 220
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    .line 222
    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    .line 223
    const/4 v1, 0x3

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    .line 224
    const/4 v1, 0x4

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    .line 225
    const/high16 v1, 0x41c00000    # 24.0f

    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    .line 226
    const/high16 v1, 0x42820000    # 65.0f

    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultHeight:I

    .line 227
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    .line 228
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 230
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 231
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mSdkApi:I

    .line 236
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mSdkApi:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 237
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v4, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    .line 238
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v7, v4, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    .line 239
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v7, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpInterpolator:Landroid/view/animation/Interpolator;

    .line 240
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f28f5c3    # 0.66f

    const v3, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveDownInterpolator:Landroid/view/animation/Interpolator;

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    .line 243
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    .line 244
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpInterpolator:Landroid/view/animation/Interpolator;

    .line 245
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveDownInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private setFadeValue(I)V
    .locals 0
    .param p1, "fadevalue"    # I

    .prologue
    .line 726
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    .line 727
    return-void
.end method

.method private setMoveValue(I)V
    .locals 0
    .param p1, "moveUpValue"    # I

    .prologue
    .line 730
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    .line 731
    return-void
.end method

.method private setSize(F)V
    .locals 1
    .param p1, "thumbRadius"    # F

    .prologue
    .line 734
    float-to-int v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    .line 735
    return-void
.end method

.method private setmY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 722
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    .line 723
    return-void
.end method


# virtual methods
.method public getDistanceToCircle()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    return v0
.end method

.method public getLargeCircleDrawble()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    .line 686
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLargeCircleRadius()I
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    return v0
.end method

.method public getTextNumberColor()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    return v0
.end method

.method public getTextNumberSize()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 413
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x4

    .line 314
    monitor-enter p0

    const/4 v6, 0x0

    :try_start_0
    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbHeight:F

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 316
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    .line 321
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v3, v6

    .line 322
    .local v3, "left":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v4, v6

    .line 323
    .local v4, "right":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v5, v6

    .line 324
    .local v5, "top":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v1, v6

    .line 325
    .local v1, "bottom":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    sub-float v7, v3, v7

    float-to-int v7, v7

    iget v8, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    sub-float v8, v5, v8

    float-to-int v8, v8

    iget v9, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    add-float/2addr v9, v4

    float-to-int v9, v9

    iget v10, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    add-float/2addr v10, v1

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 327
    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    iget v8, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    iget v9, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    iget v10, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    iget v11, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 329
    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 330
    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 331
    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 332
    iget v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    const/16 v7, 0x64

    if-le v6, v7, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    .line 337
    :goto_0
    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v12, :cond_0

    .line 338
    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    .line 340
    :cond_0
    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 341
    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 342
    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 343
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 345
    .local v0, "baseline":I
    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    int-to-float v8, v0

    iget-object v9, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 347
    .end local v0    # "baseline":I
    .end local v1    # "bottom":F
    .end local v2    # "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v3    # "left":F
    .end local v4    # "right":F
    .end local v5    # "top":F
    :cond_1
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 335
    .restart local v1    # "bottom":F
    .restart local v3    # "left":F
    .restart local v4    # "right":F
    .restart local v5    # "top":F
    :cond_2
    :try_start_1
    const-string v6, ""

    iput-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    .end local v1    # "bottom":F
    .end local v3    # "left":F
    .end local v4    # "right":F
    .end local v5    # "top":F
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->releasePin()V

    .line 485
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 487
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsLongOrScroll:Z

    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 739
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 740
    const-class v0, Lcom/meizu/common/widget/AnimSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 741
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsLongOrScroll:Z

    .line 476
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 252
    monitor-enter p0

    const/4 v0, 0x0

    .line 254
    .local v0, "height":I
    :try_start_0
    iget v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbHeight:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    .line 255
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 256
    .local v4, "measureWidthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 257
    .local v2, "measureHeightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 258
    .local v3, "measureWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 261
    .local v1, "measureHeight":I
    if-ne v4, v8, :cond_0

    .line 262
    move v5, v3

    .line 270
    .local v5, "width":I
    :goto_0
    if-ne v2, v8, :cond_2

    .line 271
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    .line 284
    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/meizu/common/widget/AnimSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 263
    .end local v5    # "width":I
    :cond_0
    if-ne v4, v9, :cond_1

    .line 264
    move v5, v3

    .restart local v5    # "width":I
    goto :goto_0

    .line 266
    .end local v5    # "width":I
    :cond_1
    :try_start_1
    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultWidth:I

    .restart local v5    # "width":I
    goto :goto_0

    .line 272
    :cond_2
    if-ne v2, v9, :cond_4

    .line 273
    iget v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultHeight:I

    if-ge v1, v6, :cond_3

    .line 274
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultHeight:I

    .line 276
    const/4 v6, 0x1

    const/high16 v7, 0x41700000    # 15.0f

    iget-object v8, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    .line 277
    const/4 v6, 0x1

    const/high16 v7, 0x41200000    # 10.0f

    iget-object v8, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 252
    .end local v1    # "measureHeight":I
    .end local v2    # "measureHeightMode":I
    .end local v3    # "measureWidth":I
    .end local v4    # "measureWidthMode":I
    .end local v5    # "width":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 279
    .restart local v1    # "measureHeight":I
    .restart local v2    # "measureHeightMode":I
    .restart local v3    # "measureWidth":I
    .restart local v4    # "measureWidthMode":I
    .restart local v5    # "width":I
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    goto :goto_1

    .line 282
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v7, 0x1

    .line 448
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 449
    iput-boolean v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsLongOrScroll:Z

    .line 450
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v0, v2

    .line 452
    .local v0, "thumbCenterX":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v1, v2

    .line 453
    .local v1, "thumbCenterY":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v1, v4

    float-to-int v4, v4

    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    iget v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    .end local v0    # "thumbCenterX":F
    .end local v1    # "thumbCenterY":F
    :cond_0
    iget-boolean v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-nez v2, :cond_1

    .line 458
    iput-boolean v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    .line 459
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->pressPin()V

    .line 464
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 465
    return v7

    .line 461
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    .line 462
    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMin:F

    iput v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-nez v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->pressPin()V

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    .line 425
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 433
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 438
    :goto_0
    return v2

    .line 436
    :cond_1
    iput-boolean v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/SkipPosSeekBar;->onSizeChanged(IIII)V

    .line 290
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mProgressDrawble:Landroid/graphics/drawable/Drawable;

    .line 291
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 292
    .local v0, "thumbDrable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mProgressDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    .line 294
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMax:F

    .line 295
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMin:F

    .line 296
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbHeight:F

    .line 297
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    .line 298
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mProgressDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/AnimSeekBar;->setmY(F)V

    .line 300
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mSdkApi:I

    const/16 v2, 0x15

    if-gt v1, v2, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mProgressDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mProgressDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 353
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 390
    :goto_0
    return v2

    .line 356
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 390
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 363
    :pswitch_0
    iget-boolean v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsLongOrScroll:Z

    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v0, v2

    .line 366
    .local v0, "thumbCenterX":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v1, v2

    .line 367
    .local v1, "thumbCenterY":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v1, v4

    float-to-int v4, v4

    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    iget v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    .end local v0    # "thumbCenterX":F
    .end local v1    # "thumbCenterY":F
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    goto :goto_1

    .line 375
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 376
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 383
    :cond_3
    iget-boolean v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    if-nez v2, :cond_1

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/meizu/common/widget/AnimSeekBar;->onActionUp(FF)V

    goto :goto_1

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDistanceToCircle(I)V
    .locals 5
    .param p1, "distanceBew"    # I

    .prologue
    const/4 v4, 0x1

    .line 664
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 665
    .local v0, "c":Landroid/content/Context;
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    .line 666
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    .line 669
    :goto_0
    int-to-float v2, p1

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 670
    .local v1, "distance":I
    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    if-eq p1, v2, :cond_0

    .line 671
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    .line 672
    iput-boolean v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCheckRadisChanged:Z

    .line 673
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 676
    return-void

    .line 668
    .end local v1    # "distance":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public setLargeCircleDrawble(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawble"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 622
    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    if-eq v4, p1, :cond_3

    .line 623
    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 624
    .local v3, "oldBoundsWidth":I
    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 625
    .local v2, "oldBoundsHeight":I
    const/4 v1, -0x1

    .line 626
    .local v1, "newBoundsWith":I
    const/4 v0, -0x1

    .line 627
    .local v0, "newBoundsHeiht":I
    iput-object p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    .line 628
    if-eqz p1, :cond_0

    .line 629
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 630
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 632
    :cond_0
    if-ne v3, v1, :cond_1

    if-eq v2, v0, :cond_2

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    .line 635
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 637
    .end local v0    # "newBoundsHeiht":I
    .end local v1    # "newBoundsWith":I
    .end local v2    # "oldBoundsHeight":I
    .end local v3    # "oldBoundsWidth":I
    :cond_3
    return-void
.end method

.method public setLargeCircleRadis(I)V
    .locals 5
    .param p1, "largeCircleRadis"    # I

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 645
    .local v0, "c":Landroid/content/Context;
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    .line 646
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    .line 649
    :goto_0
    const/4 v2, 0x1

    int-to-float v3, p1

    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 650
    .local v1, "larCircleRadis":I
    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    if-eq v2, p1, :cond_0

    .line 651
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    .line 652
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 655
    return-void

    .line 648
    .end local v1    # "larCircleRadis":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public setTextNumberColor(I)V
    .locals 2
    .param p1, "numberColor"    # I

    .prologue
    .line 591
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    if-eq v0, p1, :cond_0

    .line 592
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    .line 593
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 594
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->postInvalidate()V

    .line 596
    :cond_0
    return-void
.end method

.method public setTextNumberSize(I)V
    .locals 4
    .param p1, "numberSize"    # I

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 604
    .local v0, "c":Landroid/content/Context;
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    .line 605
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    .line 608
    :goto_0
    const/4 v1, 0x2

    int-to-float v2, p1

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int p1, v1

    .line 609
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    if-eq p1, v1, :cond_0

    .line 610
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    .line 611
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 612
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 615
    return-void

    .line 607
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method
