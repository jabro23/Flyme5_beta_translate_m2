.class public Lcom/meizu/common/widget/CircularProgressButton;
.super Landroid/widget/Button;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CircularProgressButton$7;,
        Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;,
        Lcom/meizu/common/widget/CircularProgressButton$StateManager;,
        Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;,
        Lcom/meizu/common/widget/CircularProgressButton$SavedState;,
        Lcom/meizu/common/widget/CircularProgressButton$State;
    }
.end annotation


# static fields
.field public static final ERROR_STATE_PROGRESS:I = -0x1

.field public static final IDLE_STATE_PROGRESS:I


# instance fields
.field private background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

.field private isCycle:Z

.field private isFirstTime:Z

.field private mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

.field private mColorIndicator:I

.field private mColorIndicatorBackground:I

.field private mColorProgress:I

.field private mCompleteColorState:Landroid/content/res/ColorStateList;

.field private mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

.field private mCompleteText:Ljava/lang/String;

.field private mConfigurationChanged:Z

.field private mCornerRadius:F

.field private mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mErrorColorState:Landroid/content/res/ColorStateList;

.field private mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

.field private mErrorText:Ljava/lang/String;

.field private mIconComplete:I

.field private mIconError:I

.field private mIdleColorState:Landroid/content/res/ColorStateList;

.field private mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

.field private mIdleText:Ljava/lang/String;

.field private mIndeterminateProgressMode:Z

.field private mIsUseTransitionAnim:Z

.field private mMaxProgress:I

.field private mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

.field private mMorphingInProgress:Z

.field private mNeedInvalidateCenterIcon:Z

.field private mOrginWidth:I

.field private mPaddingProgress:I

.field private mProgress:I

.field private mProgressCenterIcon:Landroid/graphics/drawable/Drawable;

.field private mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

.field private mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mProgressStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

.field private mProgressText:Ljava/lang/String;

.field private mProgressWidth:I

.field private mShouldShowCenterIcon:Z

.field private mShouldUpdateBounds:Z

.field private mState:Lcom/meizu/common/widget/CircularProgressButton$State;

.field private mStrokeColorComplete:Landroid/content/res/ColorStateList;

.field private mStrokeColorError:Landroid/content/res/ColorStateList;

.field private mStrokeColorIdle:Landroid/content/res/ColorStateList;

.field private mStrokeWidth:I

.field private mTextColorComplete:Landroid/content/res/ColorStateList;

.field private mTextColorError:Landroid/content/res/ColorStateList;

.field private mTextColorIdle:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 321
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 295
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    .line 303
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldShowCenterIcon:Z

    .line 304
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    .line 306
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    .line 307
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->isFirstTime:Z

    .line 316
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 771
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$1;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 812
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$2;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 861
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$3;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$3;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 936
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$5;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$5;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 323
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 295
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    .line 303
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldShowCenterIcon:Z

    .line 304
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    .line 306
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    .line 307
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->isFirstTime:Z

    .line 316
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 771
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$1;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 812
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$2;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 861
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$3;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$3;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 936
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$5;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$5;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 295
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    .line 303
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldShowCenterIcon:Z

    .line 304
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    .line 306
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    .line 307
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->isFirstTime:Z

    .line 316
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 771
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$1;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 812
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$2;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 861
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$3;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$3;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 936
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$5;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$5;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 333
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/CircularProgressButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 258
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIconComplete:I

    return v0
.end method

.method static synthetic access$1002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->isCycle:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/CircularProgressButton;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;
    .param p1, "x1"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->setIcon(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/CircularProgressButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 258
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIconError:I

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/common/widget/CircularProgressButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->isFirstTime:Z

    return p1
.end method

.method private changeBackground(Lcom/meizu/common/widget/CircularProgressButton$State;Z)V
    .locals 11
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1626
    if-nez p2, :cond_0

    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne p1, v7, :cond_0

    .line 1683
    :goto_0
    return-void

    .line 1629
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->cancelAllAnimation()V

    .line 1630
    const-string v4, ""

    .line 1631
    .local v4, "st":Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 1632
    .local v0, "backgroundColor":I
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 1633
    .local v5, "strokeColor":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 1634
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1669
    :goto_1
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v7}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 1670
    .local v1, "d":Landroid/graphics/drawable/GradientDrawable;
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne p1, v7, :cond_1

    .line 1671
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    add-int v2, v7, v8

    .line 1672
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    iget v8, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int v3, v7, v8

    .line 1673
    .local v3, "right":I
    iget v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int/2addr v8, v9

    invoke-virtual {v1, v2, v7, v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1677
    .end local v2    # "left":I
    .end local v3    # "right":I
    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1678
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    iget v8, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeWidth:I

    invoke-virtual {v7, v8}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->setStrokeWidth(I)V

    .line 1679
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v7, v5}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->setStrokeColor(I)V

    .line 1680
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/CircularProgressButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1682
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->invalidate()V

    goto :goto_0

    .line 1636
    .end local v1    # "d":Landroid/graphics/drawable/GradientDrawable;
    :pswitch_0
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 1637
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 1638
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    .line 1639
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 1640
    iget-object v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    .line 1641
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_1

    .line 1644
    :pswitch_1
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 1645
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 1646
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    .line 1647
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 1648
    iget-object v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    .line 1649
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_1

    .line 1652
    :pswitch_2
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 1653
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 1654
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    .line 1656
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 1657
    iget-object v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    .line 1658
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto/16 :goto_1

    .line 1661
    :pswitch_3
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    .line 1662
    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicatorBackground:I

    .line 1663
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 1664
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto/16 :goto_1

    .line 1675
    .restart local v1    # "d":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v1, v10, v10, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto/16 :goto_2

    .line 1634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;
    .locals 4
    .param p1, "color"    # I
    .param p2, "strokeColor"    # I

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 460
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 461
    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 462
    new-instance v1, Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-direct {v1, v0}, Lcom/meizu/common/drawble/StrokeGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable;)V

    .line 463
    .local v1, "strokeGradientDrawable":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    invoke-virtual {v1, p2}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->setStrokeColor(I)V

    .line 464
    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeWidth:I

    invoke-virtual {v1, v2}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->setStrokeWidth(I)V

    .line 466
    return-object v1
.end method

.method private createMorphing()Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 670
    iput-boolean v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    .line 672
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setClickable(Z)V

    .line 674
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-direct {v0, p0, p0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;-><init>(Lcom/meizu/common/widget/CircularProgressButton;Landroid/widget/TextView;Lcom/meizu/common/drawble/StrokeGradientDrawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .line 675
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromCornerRadius(F)V

    .line 676
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToCornerRadius(F)V

    .line 678
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromWidth(I)V

    .line 679
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToWidth(I)V

    .line 681
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mConfigurationChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    if-nez v0, :cond_1

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setDuration(I)V

    .line 687
    :goto_0
    iput-boolean v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mConfigurationChanged:Z

    .line 689
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    return-object v0

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setDuration(I)V

    goto :goto_0
.end method

.method private createProgressMorphing(FFII)Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    .locals 4
    .param p1, "fromCorner"    # F
    .param p2, "toCorner"    # F
    .param p3, "fromWidth"    # I
    .param p4, "toWidth"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 694
    iput-boolean v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    .line 695
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setClickable(Z)V

    .line 697
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-direct {v0, p0, p0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;-><init>(Lcom/meizu/common/widget/CircularProgressButton;Landroid/widget/TextView;Lcom/meizu/common/drawble/StrokeGradientDrawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .line 698
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromCornerRadius(F)V

    .line 699
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, p2}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToCornerRadius(F)V

    .line 701
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setPadding(F)V

    .line 703
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, p3}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromWidth(I)V

    .line 704
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, p4}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToWidth(I)V

    .line 706
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mConfigurationChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    if-nez v0, :cond_1

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setDuration(I)V

    .line 712
    :goto_0
    iput-boolean v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mConfigurationChanged:Z

    .line 714
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    return-object v0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setDuration(I)V

    goto :goto_0
.end method

.method private directprogressToError()V
    .locals 2

    .prologue
    .line 895
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-direct {v0, p0, p0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;-><init>(Lcom/meizu/common/widget/CircularProgressButton;Landroid/widget/TextView;Lcom/meizu/common/drawble/StrokeGradientDrawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .line 896
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 897
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 899
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 900
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 901
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    new-instance v1, Lcom/meizu/common/widget/CircularProgressButton$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CircularProgressButton$4;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 916
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 917
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 918
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->colorMorphingStart()V

    .line 919
    return-void
.end method

.method private drawIndeterminateProgress(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 611
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    if-nez v5, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 613
    .local v2, "offset":I
    new-instance v5, Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    iget v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeWidth:I

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;-><init>(IF)V

    iput-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    .line 614
    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    add-int v1, v2, v5

    .line 615
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int v3, v5, v6

    .line 616
    .local v3, "right":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int v0, v5, v6

    .line 617
    .local v0, "bottom":I
    iget v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    .line 618
    .local v4, "top":I
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    invoke-virtual {v5, v1, v4, v3, v0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->setBounds(IIII)V

    .line 619
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    invoke-virtual {v5, p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 620
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    invoke-virtual {v5}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->start()V

    .line 625
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "offset":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->setAllowLoading(Z)V

    .line 623
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    invoke-virtual {v5, p1}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 628
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    if-nez v4, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 630
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 631
    .local v2, "size":I
    new-instance v4, Lcom/meizu/common/drawble/CircularProgressDrawable;

    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeWidth:I

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    invoke-direct {v4, v2, v5, v6}, Lcom/meizu/common/drawble/CircularProgressDrawable;-><init>(III)V

    iput-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    .line 632
    iget v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    add-int v0, v1, v4

    .line 633
    .local v0, "left":I
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    invoke-virtual {v4, v0, v5, v0, v6}, Lcom/meizu/common/drawble/CircularProgressDrawable;->setBounds(IIII)V

    .line 635
    .end local v0    # "left":I
    .end local v1    # "offset":I
    .end local v2    # "size":I
    :cond_0
    iget-boolean v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mNeedInvalidateCenterIcon:Z

    if-eqz v4, :cond_1

    .line 636
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mNeedInvalidateCenterIcon:Z

    .line 637
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/meizu/common/drawble/CircularProgressDrawable;->setCenterIcon(Landroid/graphics/drawable/Drawable;)V

    .line 638
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressCenterIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 639
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    iget-boolean v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldShowCenterIcon:Z

    invoke-virtual {v4, v5}, Lcom/meizu/common/drawble/CircularProgressDrawable;->setShowCenterIcon(Z)V

    .line 642
    :cond_1
    const/high16 v4, 0x43b40000    # 360.0f

    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMaxProgress:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    int-to-float v5, v5

    mul-float v3, v4, v5

    .line 643
    .local v3, "sweepAngle":F
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    invoke-virtual {v4, v3}, Lcom/meizu/common/drawble/CircularProgressDrawable;->setSweepAngle(F)V

    .line 644
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    invoke-virtual {v4, p1}, Lcom/meizu/common/drawble/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 645
    return-void
.end method

.method private drawStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1868
    if-eqz p1, :cond_0

    .line 1869
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1871
    :cond_0
    return-void
.end method

.method private ensureBackgroundBounds()V
    .locals 2

    .prologue
    .line 1536
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundBound(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/graphics/drawable/Drawable;)V

    .line 1537
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundBound(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/graphics/drawable/Drawable;)V

    .line 1538
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundBound(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/graphics/drawable/Drawable;)V

    .line 1539
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundBound(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/graphics/drawable/Drawable;)V

    .line 1540
    return-void
.end method

.method private getDisabledColor(Landroid/content/res/ColorStateList;)I
    .locals 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v2, 0x0

    .line 452
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getFocusedColor(Landroid/content/res/ColorStateList;)I
    .locals 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v2, 0x0

    .line 446
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009c

    aput v1, v0, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    .line 1922
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1923
    .local v0, "version":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1924
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1926
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    goto :goto_0
.end method

.method private getNormalColor(Landroid/content/res/ColorStateList;)I
    .locals 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v2, 0x0

    .line 434
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getPressedColor(Landroid/content/res/ColorStateList;)I
    .locals 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v2, 0x0

    .line 440
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CircularProgressButton;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 339
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMaxProgress:I

    .line 340
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    .line 343
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initIdleStateDrawable()V

    .line 346
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initCompleteStateDrawable()V

    .line 347
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initProgressStateDrawable()V

    .line 348
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initErrorStateDrawable()V

    .line 349
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 351
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 513
    sget-object v10, Lcom/meizu/common/R$styleable;->CircularProgressButton:[I

    invoke-virtual {p0, p1, p2, v10}, Lcom/meizu/common/widget/CircularProgressButton;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 514
    .local v0, "attr":Landroid/content/res/TypedArray;
    if-nez v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 518
    :cond_0
    const/16 v10, 0xe

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b029b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeWidth:I

    .line 522
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    .line 523
    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    .line 525
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    .line 526
    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressText:Ljava/lang/String;

    .line 529
    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIconComplete:I

    .line 531
    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIconError:I

    .line 533
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    .line 535
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    .line 538
    const v10, 0x7f0a00a3

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/CircularProgressButton;->getColor(I)I

    move-result v1

    .line 539
    .local v1, "blue":I
    const v10, 0x7f0a00a6

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/CircularProgressButton;->getColor(I)I

    move-result v9

    .line 540
    .local v9, "white":I
    const v10, 0x7f0a00a2

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/CircularProgressButton;->getColor(I)I

    move-result v6

    .line 542
    .local v6, "grey":I
    const/4 v10, 0x0

    const v11, 0x7f0a00a3

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 545
    .local v7, "idleStateSelector":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    .line 546
    const/16 v10, 0x12

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 547
    .local v8, "idleStrokeColorSelector":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    .line 549
    const/4 v10, 0x1

    const v11, 0x7f0a00a5

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 552
    .local v2, "completeStateSelector":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    .line 553
    const/16 v10, 0x13

    invoke-virtual {v0, v10, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 554
    .local v3, "completeStrokeColorSelector":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    .line 556
    const/4 v10, 0x2

    const v11, 0x7f0a00a4

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 559
    .local v4, "errorStateSelector":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    .line 560
    const/16 v10, 0x14

    invoke-virtual {v0, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 561
    .local v5, "errorStrokeColorSelector":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    .line 563
    const/4 v10, 0x7

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    .line 565
    const/16 v10, 0x8

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    .line 567
    const/16 v10, 0x9

    invoke-virtual {v0, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicatorBackground:I

    .line 571
    const/16 v10, 0x10

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    .line 572
    iget-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    if-nez v10, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    .line 575
    :cond_1
    const/16 v10, 0x11

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    .line 576
    iget-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    if-nez v10, :cond_2

    .line 577
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    .line 579
    :cond_2
    const/16 v10, 0xf

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    .line 580
    iget-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    if-nez v10, :cond_3

    .line 581
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    .line 583
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method private initCompleteStateDrawable()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 371
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 372
    .local v0, "colorPressed":I
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v2

    .line 374
    .local v2, "strokeColorPressed":I
    invoke-direct {p0, v0, v2}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v1

    .line 375
    .local v1, "drawablePressed":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v3, :cond_0

    .line 376
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 377
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 380
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10100a7

    aput v5, v4, v7

    invoke-virtual {v1}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 383
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v5}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 384
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 385
    return-void
.end method

.method private initErrorStateDrawable()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 354
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 355
    .local v0, "colorPressed":I
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v2

    .line 356
    .local v2, "strokeColorPressed":I
    invoke-direct {p0, v0, v2}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v1

    .line 357
    .local v1, "drawablePressed":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v3, :cond_0

    .line 358
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 359
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 362
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10100a7

    aput v5, v4, v7

    invoke-virtual {v1}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v5}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 367
    return-void
.end method

.method private initIdleStateDrawable()V
    .locals 18

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v3

    .line 389
    .local v3, "colorNormal":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v4

    .line 390
    .local v4, "colorPressed":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getFocusedColor(Landroid/content/res/ColorStateList;)I

    move-result v2

    .line 391
    .local v2, "colorFocused":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getDisabledColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    .line 392
    .local v1, "colorDisabled":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v10

    .line 393
    .local v10, "strokeColorNormal":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v11

    .line 394
    .local v11, "strokeColorPressed":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getFocusedColor(Landroid/content/res/ColorStateList;)I

    move-result v9

    .line 395
    .local v9, "strokeColorFocused":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getDisabledColor(Landroid/content/res/ColorStateList;)I

    move-result v8

    .line 396
    .local v8, "strokeColorDisabled":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    if-nez v12, :cond_0

    .line 397
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    .line 400
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v5

    .line 401
    .local v5, "drawableDisabled":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v6

    .line 402
    .local v6, "drawableFocused":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v7

    .line 403
    .local v7, "drawablePressed":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v12, :cond_1

    .line 404
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 408
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x10100a7

    aput v15, v13, v14

    invoke-virtual {v7}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x101009c

    aput v15, v13, v14

    invoke-virtual {v6}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, -0x101009e

    aput v15, v13, v14

    invoke-virtual {v5}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v13, Landroid/util/StateSet;->WILD_CARD:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v14}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getBottom()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 419
    return-void
.end method

.method private initProgressStateDrawable()V
    .locals 6

    .prologue
    .line 422
    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v2, :cond_0

    .line 423
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 424
    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v4}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 427
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    add-int v0, v2, v3

    .line 428
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int v1, v2, v3

    .line 429
    .local v1, "right":I
    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 431
    return-void
.end method

.method private morphCompleteToIdle()V
    .locals 2

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->createMorphing()Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 832
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 833
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 835
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 836
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 838
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 839
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 840
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 841
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 843
    return-void
.end method

.method private morphErrorToIdle()V
    .locals 2

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->createMorphing()Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 848
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 849
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 851
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 852
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 854
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 855
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 856
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 857
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 859
    return-void
.end method

.method private morphIdleToComplete()V
    .locals 2

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->createMorphing()Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 800
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 801
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 802
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 803
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 805
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 806
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 807
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 808
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 810
    return-void
.end method

.method private morphIdleToError()V
    .locals 2

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->createMorphing()Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 877
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 878
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 880
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 881
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 883
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 884
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 885
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 886
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 888
    return-void
.end method

.method private morphProgressToComplete()V
    .locals 5

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 787
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 788
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 789
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 790
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 791
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 792
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 793
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 794
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 796
    return-void
.end method

.method private morphProgressToError()V
    .locals 5

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 925
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 926
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 928
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 929
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 930
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 931
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 932
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 933
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 934
    return-void
.end method

.method private morphProgressToIdle()V
    .locals 5

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 957
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 958
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 960
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 961
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 962
    new-instance v1, Lcom/meizu/common/widget/CircularProgressButton$6;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CircularProgressButton$6;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 974
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 975
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 976
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 977
    return-void
.end method

.method private morphToProgress()V
    .locals 5

    .prologue
    .line 744
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    if-nez v1, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    .line 747
    :cond_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->isFirstTime:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->isCycle:Z

    if-nez v1, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressWidth:I

    .line 754
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressWidth:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setWidth(I)V

    .line 755
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressWidth:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 759
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 760
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 762
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 763
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicatorBackground:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 765
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 766
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 767
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 768
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 769
    return-void

    .line 752
    .end local v0    # "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressWidth:I

    goto :goto_0
.end method

.method private recordBackgroundBoundIfNeed()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 482
    iget-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez v1, :cond_0

    .line 483
    const/4 v0, 0x0

    .line 487
    :goto_0
    return-object v0

    .line 485
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 486
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private restoreBackgroundBoundIfNeed(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 494
    :cond_0
    return-void
.end method

.method private setBackgroundBound(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 1543
    if-nez p2, :cond_0

    .line 1554
    :goto_0
    return-void

    .line 1546
    :cond_0
    sget-object v2, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne p1, v2, :cond_1

    .line 1547
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    add-int v0, v2, v3

    .line 1548
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int v1, v2, v3

    .line 1549
    .local v1, "right":I
    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1553
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private setBackgroundFromState(Lcom/meizu/common/widget/CircularProgressButton$State;)V
    .locals 2
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;

    .prologue
    .line 1767
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1782
    :goto_0
    return-void

    .line 1769
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 1772
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 1775
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 1778
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 1767
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private setBackgroundState(Landroid/graphics/drawable/Drawable;[I)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # [I

    .prologue
    .line 497
    if-nez p1, :cond_0

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method private setIcon(I)V
    .locals 5
    .param p1, "icon"    # I

    .prologue
    const/4 v4, 0x0

    .line 980
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 981
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 983
    .local v1, "padding":I
    invoke-virtual {p0, p1, v4, v4, v4}, Lcom/meizu/common/widget/CircularProgressButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 984
    invoke-virtual {p0, v1, v4, v4, v4}, Lcom/meizu/common/widget/CircularProgressButton;->setPadding(IIII)V

    .line 986
    .end local v1    # "padding":I
    :cond_0
    return-void
.end method

.method private setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V
    .locals 1
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, p1, :cond_0

    .line 1786
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    .line 1788
    :cond_0
    return-void
.end method

.method private setTextForState(Lcom/meizu/common/widget/CircularProgressButton$State;)V
    .locals 2
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;

    .prologue
    .line 1897
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1910
    :goto_0
    :pswitch_0
    return-void

    .line 1899
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1902
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1905
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1897
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelAllAnimation()V
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->cancelAllAnim()V

    .line 1722
    :cond_0
    return-void
.end method

.method public dp2px(F)F
    .locals 2
    .param p1, "dpValue"    # F

    .prologue
    .line 739
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1817
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez v0, :cond_1

    .line 1818
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    .line 1819
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->ensureBackgroundBounds()V

    .line 1821
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1822
    invoke-super {p0, p1}, Landroid/widget/Button;->draw(Landroid/graphics/Canvas;)V

    .line 1865
    :goto_0
    return-void

    .line 1824
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3

    .line 1825
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollY()I

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 1840
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1862
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/Button;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1842
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1845
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1848
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1851
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1857
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1858
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1859
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 1840
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->recordBackgroundBoundIfNeed()Landroid/graphics/Rect;

    move-result-object v0

    .line 473
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getDrawableState()[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundState(Landroid/graphics/drawable/Drawable;[I)V

    .line 474
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getDrawableState()[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundState(Landroid/graphics/drawable/Drawable;[I)V

    .line 475
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getDrawableState()[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundState(Landroid/graphics/drawable/Drawable;[I)V

    .line 476
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getDrawableState()[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundState(Landroid/graphics/drawable/Drawable;[I)V

    .line 477
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->restoreBackgroundBoundIfNeed(Landroid/graphics/Rect;)V

    .line 478
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 479
    return-void
.end method

.method protected getColor(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getCompleteText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1065
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    return v0
.end method

.method public getState()Lcom/meizu/common/widget/CircularProgressButton$State;
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    return-object v0
.end method

.method public getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 726
    .local v0, "transformation":Landroid/text/method/TransformationMethod;
    if-eqz v0, :cond_0

    .line 727
    invoke-interface {v0, p2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 729
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "attr"    # [I

    .prologue
    const/4 v0, 0x0

    .line 591
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public isIndeterminateProgressMode()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    return v0
.end method

.method public isMorphing()Z
    .locals 1

    .prologue
    .line 1946
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1710
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 1711
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->cancelAllAnimation()V

    .line 1712
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 596
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 597
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez v0, :cond_2

    .line 598
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    if-eqz v0, :cond_1

    .line 599
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawIndeterminateProgress(Landroid/graphics/Canvas;)V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->setAllowLoading(Z)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1951
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1952
    const-class v0, Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1953
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 1142
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 1143
    if-eqz p1, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-virtual {p0, v0, v1, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;ZZ)V

    .line 1146
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1161
    instance-of v1, p1, Lcom/meizu/common/widget/CircularProgressButton$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1162
    check-cast v0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;

    .line 1163
    .local v0, "savedState":Lcom/meizu/common/widget/CircularProgressButton$SavedState;
    # getter for: Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mProgress:I
    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1200(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 1164
    # getter for: Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z
    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1300(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    .line 1165
    # getter for: Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z
    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1400(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mConfigurationChanged:Z

    .line 1166
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1167
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setProgress(I)V

    .line 1171
    .end local v0    # "savedState":Lcom/meizu/common/widget/CircularProgressButton$SavedState;
    :goto_0
    return-void

    .line 1169
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1150
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1151
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1152
    .local v0, "savedState":Lcom/meizu/common/widget/CircularProgressButton$SavedState;
    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    # setter for: Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mProgress:I
    invoke-static {v0, v2}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1202(Lcom/meizu/common/widget/CircularProgressButton$SavedState;I)I

    .line 1153
    iget-boolean v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    # setter for: Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z
    invoke-static {v0, v2}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1302(Lcom/meizu/common/widget/CircularProgressButton$SavedState;Z)Z

    .line 1154
    const/4 v2, 0x1

    # setter for: Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z
    invoke-static {v0, v2}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1402(Lcom/meizu/common/widget/CircularProgressButton$SavedState;Z)Z

    .line 1156
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1914
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 1915
    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    .line 1916
    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    .line 1917
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mNeedInvalidateCenterIcon:Z

    .line 1918
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    .line 1919
    return-void
.end method

.method protected removeIcon()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 989
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 990
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setPadding(IIII)V

    .line 991
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1075
    return-void
.end method

.method public setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 999
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1000
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1004
    :goto_0
    return-void

    .line 1002
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCompleteText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    .line 1129
    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    .line 1138
    return-void
.end method

.method public setIdleText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    .line 1120
    return-void
.end method

.method public setIndeterminateProgressMode(Z)V
    .locals 0
    .param p1, "indeterminateProgressMode"    # Z

    .prologue
    .line 661
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    .line 662
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 506
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-eqz v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setPressed(Z)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1057
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setProgress(IZ)V

    .line 1058
    return-void
.end method

.method public setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "useAnim"    # Z

    .prologue
    .line 1013
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 1014
    iput-boolean p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    .line 1015
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMaxProgress:I

    if-lt v0, v1, :cond_3

    .line 1022
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_2

    .line 1023
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToComplete()V

    goto :goto_0

    .line 1024
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_0

    .line 1025
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphIdleToComplete()V

    goto :goto_0

    .line 1027
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    if-lez v0, :cond_6

    .line 1028
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_5

    .line 1029
    :cond_4
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphToProgress()V

    goto :goto_0

    .line 1030
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->invalidate()V

    goto :goto_0

    .line 1033
    :cond_6
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1034
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_7

    .line 1035
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToError()V

    goto :goto_0

    .line 1036
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_0

    .line 1037
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphIdleToError()V

    goto :goto_0

    .line 1039
    :cond_8
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_9

    .line 1041
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphCompleteToIdle()V

    goto :goto_0

    .line 1042
    :cond_9
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_a

    .line 1043
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToIdle()V

    goto :goto_0

    .line 1044
    :cond_a
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_0

    .line 1045
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphErrorToIdle()V

    goto :goto_0
.end method

.method public setProgressCenterIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "centerIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressCenterIcon:Landroid/graphics/drawable/Drawable;

    .line 1520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mNeedInvalidateCenterIcon:Z

    .line 1521
    return-void
.end method

.method public setProgressForState(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_0

    .line 1691
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 1692
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->invalidate()V

    .line 1694
    :cond_0
    return-void
.end method

.method public setProgressIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    const/4 v0, 0x0

    .line 1935
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    .line 1936
    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    .line 1937
    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    .line 1938
    return-void
.end method

.method public setShowCenterIcon(Z)V
    .locals 1
    .param p1, "showCenterIcon"    # Z

    .prologue
    .line 1528
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldShowCenterIcon:Z

    .line 1529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mNeedInvalidateCenterIcon:Z

    .line 1530
    return-void
.end method

.method public setState(Lcom/meizu/common/widget/CircularProgressButton$State;ZZ)V
    .locals 3
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "useAnim"    # Z
    .param p3, "fromUser"    # Z

    .prologue
    .line 1563
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne p1, v1, :cond_1

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    iput-boolean p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    .line 1567
    if-nez p2, :cond_2

    .line 1568
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/CircularProgressButton;->changeBackground(Lcom/meizu/common/widget/CircularProgressButton$State;Z)V

    goto :goto_0

    .line 1571
    :cond_2
    iget-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1574
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1594
    :pswitch_0
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1599
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToComplete()V

    goto :goto_0

    .line 1576
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v2, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v1, v2, :cond_0

    .line 1577
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphToProgress()V

    goto :goto_0

    .line 1581
    :pswitch_3
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 1583
    :pswitch_4
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphCompleteToIdle()V

    goto :goto_0

    .line 1586
    :pswitch_5
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphErrorToIdle()V

    goto :goto_0

    .line 1589
    :pswitch_6
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToIdle()V

    goto :goto_0

    .line 1596
    :pswitch_7
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphIdleToComplete()V

    goto :goto_0

    .line 1604
    :pswitch_8
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    goto :goto_0

    .line 1610
    :pswitch_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingLeft()I

    move-result v2

    add-int v0, v1, v2

    .line 1611
    .local v0, "width":I
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    if-le v0, v1, :cond_3

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1612
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->directprogressToError()V

    goto/16 :goto_0

    .line 1606
    .end local v0    # "width":I
    :pswitch_a
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphIdleToError()V

    goto/16 :goto_0

    .line 1614
    .restart local v0    # "width":I
    :cond_3
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToError()V

    goto/16 :goto_0

    .line 1574
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1594
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 1581
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1604
    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setStateColorSelector(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "backgroundColorStateList"    # Landroid/content/res/ColorStateList;
    .param p3, "strokeColorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v2, 0x0

    .line 1731
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1764
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1750
    :goto_1
    :pswitch_0
    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    .line 1751
    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 1752
    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 1753
    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 1754
    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 1755
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initIdleStateDrawable()V

    .line 1756
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initProgressStateDrawable()V

    .line 1757
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initErrorStateDrawable()V

    .line 1758
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initCompleteStateDrawable()V

    .line 1759
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, p1, :cond_2

    .line 1760
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundFromState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 1762
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->changeBackground(Lcom/meizu/common/widget/CircularProgressButton$State;Z)V

    .line 1763
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->drawableStateChanged()V

    goto :goto_0

    .line 1736
    :pswitch_1
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    .line 1737
    iput-object p3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 1740
    :pswitch_2
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    .line 1741
    iput-object p3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 1744
    :pswitch_3
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    .line 1745
    iput-object p3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 1734
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStateText(Lcom/meizu/common/widget/CircularProgressButton$State;Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1878
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1891
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez v0, :cond_0

    .line 1892
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->setTextForState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 1894
    :cond_0
    return-void

    .line 1880
    :pswitch_1
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    goto :goto_0

    .line 1883
    :pswitch_2
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    goto :goto_0

    .line 1886
    :pswitch_3
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    goto :goto_0

    .line 1878
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStateTextColor(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1796
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1809
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, p1, :cond_0

    .line 1810
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->invalidate()V

    .line 1812
    :cond_0
    return-void

    .line 1798
    :pswitch_1
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 1801
    :pswitch_2
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 1804
    :pswitch_3
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 1796
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->background:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v0, p1}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->setStrokeColor(I)V

    .line 1084
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
