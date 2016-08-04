.class public Lflyme/support/v7/drawable/RippleDrawableComp;
.super Landroid/graphics/drawable/Drawable;
.source "RippleDrawableComp.java"


# static fields
.field private static final RIPPLE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final RIPPLE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAlpha:I

.field private mAlphaBg:I

.field private mAnimation:Landroid/animation/ValueAnimator;

.field private mColor:I

.field private mColorBg:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mInDuration:I

.field private mIsDown:Z

.field private mIsHaveBg:Z

.field private mIsRipple:Z

.field private mIsRippleFade:Z

.field private mIsShrink:Z

.field private mIsUseFadeOut:Z

.field private mMaxRadius:I

.field private mOutDuration:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBg:Landroid/graphics/Paint;

.field private mRadius:I

.field private mStartRadius:I

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lflyme/support/v7/drawable/RippleDrawableComp;->createInInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lflyme/support/v7/drawable/RippleDrawableComp;->RIPPLE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 36
    invoke-static {}, Lflyme/support/v7/drawable/RippleDrawableComp;->createOutInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lflyme/support/v7/drawable/RippleDrawableComp;->RIPPLE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/high16 v6, -0x1000000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    iput v6, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mColorBg:I

    .line 42
    const/16 v2, 0x4b

    iput v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAlphaBg:I

    .line 43
    iput v6, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mColor:I

    .line 47
    iput v4, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    .line 50
    iput v4, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mInDuration:I

    .line 51
    iput v4, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mOutDuration:I

    .line 54
    iput-boolean v4, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsDown:Z

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "you must use a view to create a RippleDrawableComp"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 72
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->MzRippleDrawableComp:[I

    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mColor:I

    .line 75
    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iput v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAlpha:I

    .line 76
    const/4 v2, -0x1

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mStartRadius:I

    .line 77
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    .line 78
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsUseFadeOut:Z

    .line 79
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsHaveBg:Z

    .line 80
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsRippleFade:Z

    .line 81
    const/4 v2, 0x6

    const/16 v3, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mInDuration:I

    .line 82
    const/4 v2, 0x7

    const/16 v3, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mOutDuration:I

    .line 83
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsShrink:Z

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaint:Landroid/graphics/Paint;

    .line 87
    iget-object v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    iget-object v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaintBg:Landroid/graphics/Paint;

    .line 93
    iget-object v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaintBg:Landroid/graphics/Paint;

    iget v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaintBg:Landroid/graphics/Paint;

    iget v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAlpha:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 95
    iget-object v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mView:Ljava/lang/ref/WeakReference;

    .line 99
    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mStartRadius:I

    iput v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mRadius:I

    .line 100
    invoke-virtual {p0}, Lflyme/support/v7/drawable/RippleDrawableComp;->init()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/drawable/RippleDrawableComp;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;

    .prologue
    .line 34
    invoke-direct {p0}, Lflyme/support/v7/drawable/RippleDrawableComp;->initValue()V

    return-void
.end method

.method static synthetic access$1000(Lflyme/support/v7/drawable/RippleDrawableComp;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;

    .prologue
    .line 34
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$102(Lflyme/support/v7/drawable/RippleDrawableComp;I)I
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mRadius:I

    return p1
.end method

.method static synthetic access$1100(Lflyme/support/v7/drawable/RippleDrawableComp;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;

    .prologue
    .line 34
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaintBg:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lflyme/support/v7/drawable/RippleDrawableComp;)I
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;

    .prologue
    .line 34
    iget v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    return v0
.end method

.method static synthetic access$302(Lflyme/support/v7/drawable/RippleDrawableComp;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsRipple:Z

    return p1
.end method

.method static synthetic access$400(Lflyme/support/v7/drawable/RippleDrawableComp;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;

    .prologue
    .line 34
    iget-boolean v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsDown:Z

    return v0
.end method

.method static synthetic access$500(Lflyme/support/v7/drawable/RippleDrawableComp;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;

    .prologue
    .line 34
    iget-boolean v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsRippleFade:Z

    return v0
.end method

.method static synthetic access$600(Lflyme/support/v7/drawable/RippleDrawableComp;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;

    .prologue
    .line 34
    iget-boolean v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsShrink:Z

    return v0
.end method

.method static synthetic access$700(Lflyme/support/v7/drawable/RippleDrawableComp;)I
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;

    .prologue
    .line 34
    iget v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mStartRadius:I

    return v0
.end method

.method static synthetic access$800(Lflyme/support/v7/drawable/RippleDrawableComp;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;

    .prologue
    .line 34
    iget-boolean v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsUseFadeOut:Z

    return v0
.end method

.method static synthetic access$900(Lflyme/support/v7/drawable/RippleDrawableComp;)I
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/drawable/RippleDrawableComp;

    .prologue
    .line 34
    iget v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAlpha:I

    return v0
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 397
    :cond_1
    return-void
.end method

.method private compatVivo()V
    .locals 5

    .prologue
    .line 423
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "vivo X3t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    neg-int v0, v0

    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    neg-int v1, v1

    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    iget v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    iget v4, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lflyme/support/v7/drawable/RippleDrawableComp;->setBounds(IIII)V

    .line 426
    :cond_0
    return-void
.end method

.method private static createInInterpolator()Landroid/view/animation/Interpolator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 441
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 442
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 446
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    return-object v0

    .line 444
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0
.end method

.method private static createOutInterpolator()Landroid/view/animation/Interpolator;
    .locals 5

    .prologue
    .line 451
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 452
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 456
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    return-object v0

    .line 454
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0
.end method

.method private initValue()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 132
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 133
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mWidth:I

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mHeight:I

    .line 138
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mWidth:I

    iget v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lflyme/support/v7/drawable/RippleDrawableComp;->setBounds(Landroid/graphics/Rect;)V

    .line 141
    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    if-gtz v1, :cond_2

    .line 142
    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mWidth:I

    int-to-double v2, v1

    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mHeight:I

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    .line 146
    :cond_2
    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mStartRadius:I

    if-gez v1, :cond_0

    .line 147
    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    int-to-float v1, v1

    const v2, 0x3f533333    # 0.825f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mStartRadius:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "aCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 405
    invoke-direct {p0}, Lflyme/support/v7/drawable/RippleDrawableComp;->compatVivo()V

    .line 407
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 412
    :cond_0
    iget-boolean v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsRipple:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsDown:Z

    if-eqz v0, :cond_3

    .line 414
    :cond_1
    iget-boolean v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsHaveBg:Z

    if-eqz v0, :cond_2

    .line 415
    iget v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 417
    :cond_2
    iget v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 419
    :cond_3
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAlpha:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 115
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lflyme/support/v7/drawable/RippleDrawableComp$1;

    invoke-direct {v1, p0}, Lflyme/support/v7/drawable/RippleDrawableComp$1;-><init>(Lflyme/support/v7/drawable/RippleDrawableComp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 123
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lflyme/support/v7/drawable/RippleDrawableComp$2;

    invoke-direct {v1, p0}, Lflyme/support/v7/drawable/RippleDrawableComp$2;-><init>(Lflyme/support/v7/drawable/RippleDrawableComp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 9
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v8, 0x1

    .line 156
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v1

    .line 158
    .local v1, "changed":Z
    const/4 v2, 0x0

    .line 159
    .local v2, "enabled":Z
    const/4 v5, 0x0

    .line 161
    .local v5, "pressed":Z
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget v6, v0, v3

    .line 162
    .local v6, "state":I
    const v7, 0x101009e

    if-ne v6, v7, :cond_0

    .line 163
    const/4 v2, 0x1

    .line 166
    :cond_0
    const v7, 0x10100a7

    if-ne v6, v7, :cond_1

    .line 167
    const/4 v5, 0x1

    .line 161
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    .end local v6    # "state":I
    :cond_2
    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    .line 173
    iput-boolean v8, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsDown:Z

    .line 175
    invoke-virtual {p0}, Lflyme/support/v7/drawable/RippleDrawableComp;->ripple()V

    .line 187
    :cond_3
    :goto_1
    return v1

    .line 177
    :cond_4
    iget-boolean v7, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsDown:Z

    if-ne v7, v8, :cond_3

    .line 178
    const/4 v7, 0x0

    iput-boolean v7, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsDown:Z

    .line 179
    invoke-virtual {p0}, Lflyme/support/v7/drawable/RippleDrawableComp;->invalidateSelf()V

    .line 180
    iget-boolean v7, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsRipple:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsRippleFade:Z

    if-eqz v7, :cond_3

    .line 182
    invoke-virtual {p0}, Lflyme/support/v7/drawable/RippleDrawableComp;->rippleFade()V

    goto :goto_1
.end method

.method public ripple()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 307
    invoke-direct {p0}, Lflyme/support/v7/drawable/RippleDrawableComp;->cancelAnimation()V

    .line 309
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 310
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaintBg:Landroid/graphics/Paint;

    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAlpha:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    iput-boolean v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsRipple:Z

    .line 312
    iget v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mStartRadius:I

    iput v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mRadius:I

    .line 314
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mRadius:I

    aput v2, v0, v1

    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    .line 315
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lflyme/support/v7/drawable/RippleDrawableComp$3;

    invoke-direct {v1, p0}, Lflyme/support/v7/drawable/RippleDrawableComp$3;-><init>(Lflyme/support/v7/drawable/RippleDrawableComp;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 340
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mInDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 341
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lflyme/support/v7/drawable/RippleDrawableComp;->RIPPLE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 343
    return-void
.end method

.method public rippleFade()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 350
    invoke-direct {p0}, Lflyme/support/v7/drawable/RippleDrawableComp;->cancelAnimation()V

    .line 352
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 353
    iput-boolean v4, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mIsRipple:Z

    .line 354
    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    iput v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mRadius:I

    .line 355
    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mStartRadius:I

    int-to-float v1, v1

    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 357
    .local v0, "x1":F
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I

    aput v3, v1, v2

    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mStartRadius:I

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    .line 358
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lflyme/support/v7/drawable/RippleDrawableComp$4;

    invoke-direct {v2, p0, v0}, Lflyme/support/v7/drawable/RippleDrawableComp$4;-><init>(Lflyme/support/v7/drawable/RippleDrawableComp;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 385
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    iget v2, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 386
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v2, Lflyme/support/v7/drawable/RippleDrawableComp;->RIPPLE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 388
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "aAlpha"    # I

    .prologue
    .line 291
    iput p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAlpha:I

    .line 292
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 293
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "aBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 200
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 203
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "aColorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 436
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 437
    return-void
.end method
