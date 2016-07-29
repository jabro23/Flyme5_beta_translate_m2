.class public Lcom/meizu/common/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final THUMB_STATUS_CHANGE:F = 0.8f

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I

.field private static sSwitchStyleableId:[I


# instance fields
.field private isChanged:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mSplitTrack:Z

.field private mSwitchAnimator:Landroid/animation/ValueAnimator;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Lcom/meizu/common/widget/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbOffCache:Landroid/graphics/drawable/Drawable;

.field private mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbOnCache:Landroid/graphics/drawable/Drawable;

.field private mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackCache:Landroid/graphics/drawable/Drawable;

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private pathInterpolator:Landroid/view/animation/Interpolator;

.field public switchOff:Ljava/lang/CharSequence;

.field public switchOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 185
    const v0, 0x7f010114

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffCache:Landroid/graphics/drawable/Drawable;

    .line 90
    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnCache:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackCache:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-boolean v6, p0, Lcom/meizu/common/widget/Switch;->isChanged:Z

    .line 109
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 161
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 201
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 203
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 204
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 207
    sget-object v4, Lcom/meizu/common/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 209
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 211
    const v4, 0x7f02008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 214
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 216
    :cond_1
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 218
    const v4, 0x7f02008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 221
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 223
    :cond_3
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 225
    const v4, 0x7f020091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 227
    :cond_4
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 228
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 237
    :cond_5
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    .line 239
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    .line 241
    iput-boolean v6, p0, Lcom/meizu/common/widget/Switch;->mSplitTrack:Z

    .line 250
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/meizu/common/widget/Switch;->sSwitchStyleableId:[I

    .line 253
    sget-object v4, Lcom/meizu/common/widget/Switch;->sSwitchStyleableId:[I

    const v5, 0x101043f

    invoke-virtual {p1, p2, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 254
    .local v1, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    .line 255
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    .line 256
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 259
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    .line 260
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/Switch;->mMinFlingVelocity:I

    .line 263
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->refreshDrawableState()V

    .line 264
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 265
    return-void

    .line 252
    nop

    :array_0
    .array-data 4
        0x1010124
        0x1010125
    .end array-data
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/Switch;F)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;
    .param p1, "x1"    # F

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 7
    .param p1, "newCheckedState"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v6, 0x3ea8f5c3    # 0.33f

    .line 965
    if-eqz p1, :cond_2

    move v0, v1

    .line 973
    .local v0, "targetPosition":F
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 974
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 976
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    .line 977
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->pathInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_1

    .line 978
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    .line 979
    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v6, v2, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->pathInterpolator:Landroid/view/animation/Interpolator;

    .line 984
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->pathInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 985
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 986
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 987
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/meizu/common/widget/Switch$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/Switch$1;-><init>(Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 993
    return-void

    .end local v0    # "targetPosition":F
    :cond_2
    move v0, v2

    .line 965
    goto :goto_0

    .line 981
    .restart local v0    # "targetPosition":F
    :cond_3
    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    invoke-direct {v3, v6, v2, v6, v1}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->pathInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 999
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 930
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 931
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 932
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 933
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 934
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 1002
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 2

    .prologue
    .line 1317
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->isThumbOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1318
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v0

    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1320
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 4

    .prologue
    .line 1350
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1351
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1352
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1355
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1356
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 1361
    .local v0, "insets":Lcom/meizu/common/widget/Insets;
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    iget v3, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/meizu/common/widget/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/meizu/common/widget/Insets;->right:I

    sub-int/2addr v2, v3

    .line 1364
    .end local v0    # "insets":Lcom/meizu/common/widget/Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :goto_1
    return v2

    .line 1358
    .restart local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .restart local v0    # "insets":Lcom/meizu/common/widget/Insets;
    goto :goto_0

    .line 1364
    .end local v0    # "insets":Lcom/meizu/common/widget/Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getThumbValue()F
    .locals 3

    .prologue
    const v2, 0x3f4ccccd    # 0.8f

    .line 1331
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->isThumbOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1332
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    sub-float/2addr v1, v2

    const v2, 0x3e4ccccc    # 0.19999999f

    div-float v0, v1, v2

    .line 1336
    .local v0, "thumbStatus":F
    :goto_0
    return v0

    .line 1334
    .end local v0    # "thumbStatus":F
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    div-float v0, v1, v2

    .restart local v0    # "thumbStatus":F
    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 825
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThumbOn()Z
    .locals 2

    .prologue
    .line 1346
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    .line 809
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchTransformationMethod:Lcom/meizu/common/widget/TransformationMethod2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchTransformationMethod:Lcom/meizu/common/widget/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Lcom/meizu/common/widget/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 813
    .local v1, "transformed":Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 814
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Landroid/text/TextPaint;->density:F

    .line 815
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .end local v1    # "transformed":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p1

    .line 809
    goto :goto_0
.end method

.method private setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 1011
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    .line 1012
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1013
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 942
    iput v3, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 948
    .local v0, "commitChange":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 949
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 950
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 951
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/Switch;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 952
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    cmpg-float v4, v2, v6

    if-gez v4, :cond_2

    .line 960
    .end local v2    # "xvel":F
    .local v1, "newState":Z
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 961
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 962
    return-void

    .end local v0    # "commitChange":Z
    .end local v1    # "newState":Z
    :cond_1
    move v0, v3

    .line 946
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_2
    move v1, v3

    .line 952
    goto :goto_1

    :cond_3
    cmpl-float v4, v2, v6

    if-gtz v4, :cond_0

    move v1, v3

    goto :goto_1

    .line 954
    :cond_4
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 957
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1101
    .local v1, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    .line 1102
    .local v3, "switchLeft":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    .line 1103
    .local v5, "switchTop":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    .line 1104
    .local v4, "switchRight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    .line 1107
    .local v2, "switchBottom":I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbOffset()I

    move-result v15

    add-int v6, v3, v15

    .line 1110
    .local v6, "thumbInitialLeft":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_6

    .line 1111
    sget-object v7, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 1117
    .local v7, "thumbInsets":Lcom/meizu/common/widget/Insets;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_4

    .line 1118
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1121
    iget v15, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v15

    .line 1124
    move v11, v3

    .line 1125
    .local v11, "trackLeft":I
    move v13, v5

    .line 1126
    .local v13, "trackTop":I
    move v12, v4

    .line 1127
    .local v12, "trackRight":I
    move v10, v2

    .line 1128
    .local v10, "trackBottom":I
    sget-object v15, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    if-eq v7, v15, :cond_3

    .line 1129
    iget v15, v7, Lcom/meizu/common/widget/Insets;->left:I

    iget v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 1130
    iget v15, v7, Lcom/meizu/common/widget/Insets;->left:I

    iget v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v11, v15

    .line 1132
    :cond_0
    iget v15, v7, Lcom/meizu/common/widget/Insets;->top:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 1133
    iget v15, v7, Lcom/meizu/common/widget/Insets;->top:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v13, v15

    .line 1135
    :cond_1
    iget v15, v7, Lcom/meizu/common/widget/Insets;->right:I

    iget v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 1136
    iget v15, v7, Lcom/meizu/common/widget/Insets;->right:I

    iget v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v12, v15

    .line 1138
    :cond_2
    iget v15, v7, Lcom/meizu/common/widget/Insets;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 1139
    iget v15, v7, Lcom/meizu/common/widget/Insets;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v10, v15

    .line 1142
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v11, v13, v12, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1148
    .end local v10    # "trackBottom":I
    .end local v11    # "trackLeft":I
    .end local v12    # "trackRight":I
    .end local v13    # "trackTop":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->isThumbOn()Z

    move-result v15

    if-nez v15, :cond_8

    .line 1149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1156
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbOffset()I

    move-result v15

    sub-int v9, v4, v15

    .line 1157
    .local v9, "thumbRight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    sub-int v15, v9, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v18

    sub-float v17, v17, v18

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    sub-int v8, v15, v16

    .line 1167
    .local v8, "thumbLeft":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v8, v5, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1191
    .end local v8    # "thumbLeft":I
    .end local v9    # "thumbRight":I
    :cond_5
    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1192
    return-void

    .line 1113
    .end local v7    # "thumbInsets":Lcom/meizu/common/widget/Insets;
    :cond_6
    sget-object v7, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .restart local v7    # "thumbInsets":Lcom/meizu/common/widget/Insets;
    goto/16 :goto_0

    .line 1161
    :cond_7
    move v8, v6

    .line 1162
    .restart local v8    # "thumbLeft":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    add-int/2addr v15, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v18

    sub-float v17, v17, v18

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v9, v15, v16

    .restart local v9    # "thumbRight":I
    goto :goto_1

    .line 1175
    .end local v8    # "thumbLeft":I
    .end local v9    # "thumbRight":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->isThumbOn()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1178
    iget v15, v1, Landroid/graphics/Rect;->left:I

    sub-int v8, v3, v15

    .line 1179
    .restart local v8    # "thumbLeft":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    add-int/2addr v15, v8

    iget v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v9, v15, v16

    .line 1186
    .restart local v9    # "thumbRight":I
    :goto_3
    sub-int v15, v9, v8

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v17

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    const v16, 0x3f333333    # 0.7f

    mul-float v15, v15, v16

    float-to-int v14, v15

    .line 1187
    .local v14, "xx":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    add-int v16, v8, v14

    add-int v17, v5, v14

    sub-int v18, v9, v14

    sub-int v19, v2, v14

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    .line 1181
    .end local v8    # "thumbLeft":I
    .end local v9    # "thumbRight":I
    .end local v14    # "xx":I
    :cond_9
    iget v15, v1, Landroid/graphics/Rect;->right:I

    sub-int v9, v4, v15

    .line 1182
    .restart local v9    # "thumbRight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    sub-int v15, v9, v15

    iget v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v8, v15, v16

    .restart local v8    # "thumbLeft":I
    goto :goto_3
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1379
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1381
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1383
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1386
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1387
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1390
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1391
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1394
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1395
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 1269
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1270
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 1276
    :cond_0
    :goto_0
    return v0

    .line 1272
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1273
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1274
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1281
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1282
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 1288
    :cond_0
    :goto_0
    return v0

    .line 1284
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1285
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1286
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isLayoutRtl()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1296
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 1297
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1299
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1297
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1299
    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1419
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1421
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1429
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1430
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    .line 1433
    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1370
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1371
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1372
    sget-object v1, Lcom/meizu/common/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/meizu/common/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 1374
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1196
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1198
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1199
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1200
    .local v5, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 1201
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1213
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 1214
    .local v3, "thumbOffDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 1215
    iget-boolean v6, p0, Lcom/meizu/common/widget/Switch;->mSplitTrack:Z

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    .line 1216
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 1217
    .local v0, "insets":Lcom/meizu/common/widget/Insets;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1218
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v0, Lcom/meizu/common/widget/Insets;->left:I

    add-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 1219
    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v0, Lcom/meizu/common/widget/Insets;->right:I

    sub-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 1221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1222
    .local v2, "saveCount":I
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1223
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1224
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1230
    .end local v0    # "insets":Lcom/meizu/common/widget/Insets;
    .end local v2    # "saveCount":I
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1232
    .restart local v2    # "saveCount":I
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 1233
    .local v4, "thumbOnDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->isThumbOn()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1234
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1235
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1264
    :goto_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1265
    return-void

    .line 1203
    .end local v2    # "saveCount":I
    .end local v3    # "thumbOffDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "thumbOnDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 1226
    .restart local v3    # "thumbOffDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1237
    .restart local v2    # "saveCount":I
    .restart local v4    # "thumbOnDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1437
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1438
    const-class v0, Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1439
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1443
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1444
    const-class v3, Lcom/meizu/common/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1447
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    .line 1448
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1449
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1450
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1451
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 1447
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1453
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1454
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1044
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1046
    const/4 v1, 0x0

    .line 1047
    .local v1, "opticalInsetLeft":I
    const/4 v2, 0x0

    .line 1048
    .local v2, "opticalInsetRight":I
    iget-object v8, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 1049
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1050
    .local v7, "trackPadding":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 1051
    iget-object v8, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1056
    :goto_0
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 1057
    .local v0, "insets":Lcom/meizu/common/widget/Insets;
    const/4 v8, 0x0

    iget v9, v0, Lcom/meizu/common/widget/Insets;->left:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1058
    const/4 v8, 0x0

    iget v9, v0, Lcom/meizu/common/widget/Insets;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1063
    .end local v0    # "insets":Lcom/meizu/common/widget/Insets;
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1064
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingLeft()I

    move-result v8

    add-int v4, v8, v1

    .line 1065
    .local v4, "switchLeft":I
    iget v8, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v1

    sub-int v5, v8, v2

    .line 1073
    .local v5, "switchRight":I
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getGravity()I

    move-result v8

    and-int/lit8 v8, v8, 0x70

    sparse-switch v8, :sswitch_data_0

    .line 1076
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingTop()I

    move-result v6

    .line 1077
    .local v6, "switchTop":I
    iget v8, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    .line 1092
    .local v3, "switchBottom":I
    :goto_2
    iput v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    .line 1093
    iput v6, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    .line 1094
    iput v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    .line 1095
    iput v5, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    .line 1096
    return-void

    .line 1053
    .end local v3    # "switchBottom":I
    .end local v4    # "switchLeft":I
    .end local v5    # "switchRight":I
    .end local v6    # "switchTop":I
    .restart local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 1067
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v5, v8, v2

    .line 1068
    .restart local v5    # "switchRight":I
    iget v8, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    sub-int v8, v5, v8

    add-int/2addr v8, v1

    add-int v4, v8, v2

    .restart local v4    # "switchLeft":I
    goto :goto_1

    .line 1081
    :sswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    .line 1083
    .restart local v6    # "switchTop":I
    iget v8, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    .line 1084
    .restart local v3    # "switchBottom":I
    goto :goto_2

    .line 1087
    .end local v3    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 1088
    .restart local v3    # "switchBottom":I
    iget v8, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    sub-int v6, v3, v8

    .restart local v6    # "switchTop":I
    goto :goto_2

    .line 1073
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 729
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 732
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    .line 734
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 735
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v10, v11

    .line 736
    .local v8, "thumbWidth":I
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 753
    .local v7, "thumbHeight":I
    :goto_0
    iput v8, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    .line 756
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_3

    .line 757
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 758
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 766
    .local v9, "trackHeight":I
    :goto_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 767
    .local v3, "paddingLeft":I
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 768
    .local v4, "paddingRight":I
    iget-object v10, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    .line 769
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 770
    .local v0, "inset":Lcom/meizu/common/widget/Insets;
    iget v10, v0, Lcom/meizu/common/widget/Insets;->left:I

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 771
    iget v10, v0, Lcom/meizu/common/widget/Insets;->right:I

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 774
    .end local v0    # "inset":Lcom/meizu/common/widget/Insets;
    :cond_0
    iget v10, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    iget v11, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v3

    add-int/2addr v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 776
    .local v6, "switchWidth":I
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 777
    .local v5, "switchHeight":I
    iput v6, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    .line 778
    iput v5, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    .line 788
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 790
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getMeasuredHeight()I

    move-result v1

    .line 791
    .local v1, "measuredHeight":I
    if-ge v1, v5, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getMeasuredWidthAndState()I

    move-result v10

    invoke-virtual {p0, v10, v5}, Lcom/meizu/common/widget/Switch;->setMeasuredDimension(II)V

    .line 794
    :cond_1
    return-void

    .line 738
    .end local v1    # "measuredHeight":I
    .end local v3    # "paddingLeft":I
    .end local v4    # "paddingRight":I
    .end local v5    # "switchHeight":I
    .end local v6    # "switchWidth":I
    .end local v7    # "thumbHeight":I
    .end local v8    # "thumbWidth":I
    .end local v9    # "trackHeight":I
    :cond_2
    const/4 v8, 0x0

    .line 739
    .restart local v8    # "thumbWidth":I
    const/4 v7, 0x0

    .restart local v7    # "thumbHeight":I
    goto :goto_0

    .line 760
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 761
    const/4 v9, 0x0

    .restart local v9    # "trackHeight":I
    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 798
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 806
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 852
    iget-object v9, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 854
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 926
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_1
    return v7

    .line 856
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 857
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 858
    .local v6, "y":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v5, v6}, Lcom/meizu/common/widget/Switch;->hitThumb(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 859
    iput v8, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 860
    iput v5, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 861
    iput v6, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    goto :goto_0

    .line 867
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_2
    iget v9, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 873
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 874
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 875
    .restart local v6    # "y":F
    iget v7, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_1

    iget v7, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    .line 877
    :cond_1
    iput v11, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 878
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 879
    iput v5, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 880
    iput v6, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    move v7, v8

    .line 881
    goto :goto_1

    .line 887
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 888
    .restart local v5    # "x":F
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v4

    .line 889
    .local v4, "thumbScrollRange":I
    iget v9, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    sub-float v3, v5, v9

    .line 891
    .local v3, "thumbScrollOffset":F
    if-eqz v4, :cond_4

    .line 892
    int-to-float v9, v4

    div-float v1, v3, v9

    .line 898
    .local v1, "dPos":F
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 899
    neg-float v1, v1

    .line 901
    :cond_2
    iget v9, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    add-float/2addr v9, v1

    invoke-static {v9, v10, v7}, Lcom/meizu/common/widget/MathUtils;->constrain(FFF)F

    move-result v2

    .line 902
    .local v2, "newPos":F
    iget v7, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_3

    .line 903
    iput v5, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 904
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    :cond_3
    move v7, v8

    .line 906
    goto/16 :goto_1

    .line 896
    .end local v1    # "dPos":F
    .end local v2    # "newPos":F
    :cond_4
    cmpl-float v9, v3, v10

    if-lez v9, :cond_5

    move v1, v7

    .restart local v1    # "dPos":F
    :goto_3
    goto :goto_2

    .end local v1    # "dPos":F
    :cond_5
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_3

    .line 914
    .end local v3    # "thumbScrollOffset":F
    .end local v4    # "thumbScrollRange":I
    .end local v5    # "x":F
    :pswitch_5
    iget v7, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    if-ne v7, v11, :cond_6

    .line 915
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 917
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v7, v8

    .line 918
    goto/16 :goto_1

    .line 920
    :cond_6
    const/4 v7, 0x0

    iput v7, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 921
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 854
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 867
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 1022
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/Switch;->setChecked(ZZ)V

    .line 1023
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2
    .param p1, "checked"    # Z
    .param p2, "useAnim"    # Z

    .prologue
    .line 1027
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1031
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result p1

    .line 1033
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->animateThumbToCheckedState(Z)V

    .line 1040
    :goto_0
    return-void

    .line 1037
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->cancelPositionAnimator()V

    .line 1038
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 847
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 848
    return-void
.end method

.method public setStyleDefault()V
    .locals 1

    .prologue
    .line 1487
    iget-boolean v0, p0, Lcom/meizu/common/widget/Switch;->isChanged:Z

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOnCache:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 1489
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOffCache:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 1490
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackCache:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1491
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1492
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1493
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1494
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1496
    :cond_0
    return-void
.end method

.method public setStyleWhite()V
    .locals 2

    .prologue
    .line 1465
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1466
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnCache:Landroid/graphics/drawable/Drawable;

    .line 1467
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffCache:Landroid/graphics/drawable/Drawable;

    .line 1468
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackCache:Landroid/graphics/drawable/Drawable;

    .line 1469
    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 1470
    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 1471
    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1472
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1473
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->setStyleDefault()V

    .line 1481
    :goto_0
    return-void

    .line 1475
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1476
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1477
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1478
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1479
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/widget/Switch;->isChanged:Z

    goto :goto_0
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 500
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    .line 501
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->requestLayout()V

    .line 502
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 478
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    .line 479
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->requestLayout()V

    .line 480
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 588
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 589
    if-eqz p1, :cond_1

    .line 590
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 592
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->requestLayout()V

    .line 593
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 550
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 551
    if-eqz p1, :cond_1

    .line 552
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->requestLayout()V

    .line 555
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 1018
    return-void

    .line 1017
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1414
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
