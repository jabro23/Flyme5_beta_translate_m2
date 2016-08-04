.class public Lcom/meizu/common/widget/LoadingAnimotionView;
.super Landroid/view/View;
.source "LoadingAnimotionView.java"


# instance fields
.field private final alphaProperty:[Ljava/lang/String;

.field private animator:Landroid/animation/AnimatorSet;

.field private bAlpha:I

.field private bDraw:Z

.field private baseX:F

.field private baseY:F

.field private cbPosition:F

.field private cbRadius:F

.field private cgPosition:F

.field private cgRadius:F

.field private crPosition:F

.field private crRadius:F

.field private gAlpha:I

.field private gDraw:Z

.field private halfMaxRadius:F

.field private mAnimScale:F

.field private mBluePaint:Landroid/graphics/Paint;

.field private mGreenPaint:Landroid/graphics/Paint;

.field private mIsAnimRun:Z

.field private mRedPaint:Landroid/graphics/Paint;

.field private mStopFromUser:Z

.field private maxRadius:F

.field private po1:F

.field private po2:F

.field private po3:F

.field private po4:F

.field private po5:F

.field private final positionProperty:[Ljava/lang/String;

.field private rAlpha:I

.field private rDraw:Z

.field private final radiusProperty:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/common/widget/LoadingAnimotionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/LoadingAnimotionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v1, 0xff

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rAlpha:I

    .line 31
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bAlpha:I

    .line 32
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gAlpha:I

    .line 49
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "crPosition"

    aput-object v2, v1, v3

    const-string v2, "cbPosition"

    aput-object v2, v1, v4

    const-string v2, "cgPosition"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    .line 50
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "rAlpha"

    aput-object v2, v1, v3

    const-string v2, "bAlpha"

    aput-object v2, v1, v4

    const-string v2, "gAlpha"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    .line 51
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "crRadius"

    aput-object v2, v1, v3

    const-string v2, "cbRadius"

    aput-object v2, v1, v4

    const-string v2, "cgRadius"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    .line 53
    iput-boolean v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rDraw:Z

    .line 54
    iput-boolean v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bDraw:Z

    .line 55
    iput-boolean v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gDraw:Z

    .line 65
    iput-boolean v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    .line 66
    iput-boolean v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mIsAnimRun:Z

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    .line 80
    sget-object v1, Lcom/meizu/common/R$styleable;->ApplyingAnimationView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingAnimotionView;->init(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/LoadingAnimotionView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingAnimotionView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/LoadingAnimotionView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingAnimotionView;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/LoadingAnimotionView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingAnimotionView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/LoadingAnimotionView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingAnimotionView;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mIsAnimRun:Z

    return p1
.end method

.method private createAlphaAnimator(I)Landroid/animation/Animator;
    .locals 12
    .param p1, "begin"    # I

    .prologue
    const v11, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 258
    const/4 v1, 0x5

    .line 259
    .local v1, "length":I
    new-array v0, v1, [Landroid/animation/ObjectAnimator;

    .line 260
    .local v0, "array":[Landroid/animation/ObjectAnimator;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    aget-object v4, v4, p1

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v3

    .line 261
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-wide/16 v4, 0x2d0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 262
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    aget-object v4, v4, p1

    new-array v5, v7, [I

    fill-array-data v5, :array_1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v3

    .line 263
    const/4 v3, 0x1

    aget-object v3, v0, v3

    const-wide/16 v4, 0x2c0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v7, [I

    fill-array-data v4, :array_2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v7

    .line 265
    aget-object v3, v0, v7

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v11, v10, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    aget-object v3, v0, v7

    const-wide/16 v4, 0xea

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 267
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v7, [I

    fill-array-data v4, :array_3

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v8

    .line 268
    aget-object v3, v0, v8

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v11, v10, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    aget-object v3, v0, v8

    const-wide/16 v4, 0xec

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 270
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v7, [I

    fill-array-data v4, :array_4

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v9

    .line 271
    aget-object v3, v0, v9

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v11, v10, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    aget-object v3, v0, v9

    const-wide/16 v4, 0xea

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 275
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    rem-int v5, p1, v1

    aget-object v5, v0, v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    add-int/lit8 v5, p1, 0x1

    rem-int/2addr v5, v1

    aget-object v5, v0, v5

    aput-object v5, v3, v4

    add-int/lit8 v4, p1, 0x2

    rem-int/2addr v4, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v7

    add-int/lit8 v4, p1, 0x3

    rem-int/2addr v4, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v8

    add-int/lit8 v4, p1, 0x4

    rem-int/2addr v4, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v9

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 277
    return-object v2

    .line 260
    nop

    :array_0
    .array-data 4
        0xff
        0xff
    .end array-data

    .line 262
    :array_1
    .array-data 4
        0xff
        0xff
    .end array-data

    .line 264
    :array_2
    .array-data 4
        0xff
        0x0
    .end array-data

    .line 267
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 270
    :array_4
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private createAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 15

    .prologue
    .line 165
    const/4 v13, 0x0

    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v10

    .line 166
    .local v10, "rPosition":Landroid/animation/Animator;
    const/4 v13, 0x1

    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v3

    .line 167
    .local v3, "bPosition":Landroid/animation/Animator;
    const/4 v13, 0x2

    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v6

    .line 168
    .local v6, "gPosition":Landroid/animation/Animator;
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 169
    .local v8, "positionSet":Landroid/animation/AnimatorSet;
    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v6, v13, v14

    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 171
    const/4 v13, 0x0

    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v11

    .line 172
    .local v11, "rRadiusAnim":Landroid/animation/Animator;
    const/4 v13, 0x1

    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v4

    .line 173
    .local v4, "bRadiusAnim":Landroid/animation/Animator;
    const/4 v13, 0x2

    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v7

    .line 174
    .local v7, "gRadiusAnim":Landroid/animation/Animator;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 175
    .local v12, "radiusSet":Landroid/animation/AnimatorSet;
    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v7, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 177
    const/4 v13, 0x0

    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v9

    .line 178
    .local v9, "rAlphaAnim":Landroid/animation/Animator;
    const/4 v13, 0x1

    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    .line 179
    .local v2, "bAlphaAnim":Landroid/animation/Animator;
    const/4 v13, 0x2

    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v5

    .line 180
    .local v5, "gAlphaAnim":Landroid/animation/Animator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 181
    .local v0, "alphaSet":Landroid/animation/AnimatorSet;
    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v2, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 183
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 185
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v13, 0x9

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v6, v13, v14

    const/4 v14, 0x3

    aput-object v11, v13, v14

    const/4 v14, 0x4

    aput-object v4, v13, v14

    const/4 v14, 0x5

    aput-object v7, v13, v14

    const/4 v14, 0x6

    aput-object v9, v13, v14

    const/4 v14, 0x7

    aput-object v2, v13, v14

    const/16 v14, 0x8

    aput-object v5, v13, v14

    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 186
    new-instance v13, Lcom/meizu/common/widget/LoadingAnimotionView$1;

    invoke-direct {v13, p0}, Lcom/meizu/common/widget/LoadingAnimotionView$1;-><init>(Lcom/meizu/common/widget/LoadingAnimotionView;)V

    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    return-object v1
.end method

.method private createCommonPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 148
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    return-object v0
.end method

.method private createPositionAnimator(I)Landroid/animation/Animator;
    .locals 14
    .param p1, "begin"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 208
    const/4 v1, 0x5

    .line 209
    .local v1, "length":I
    new-array v0, v1, [Landroid/animation/ObjectAnimator;

    .line 210
    .local v0, "array":[Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v11, [F

    aput v12, v4, v9

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po2:F

    aput v5, v4, v10

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v9

    .line 211
    aget-object v3, v0, v9

    const-wide/16 v4, 0x2c0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 212
    aget-object v3, v0, v9

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e570a3d    # 0.21f

    const v6, 0x3eb33333    # 0.35f

    const v7, 0x3ef126e9    # 0.471f

    invoke-direct {v4, v5, v12, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v11, [F

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po2:F

    aput v5, v4, v9

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po3:F

    aput v5, v4, v10

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v10

    .line 214
    aget-object v3, v0, v10

    const-wide/16 v4, 0x2c0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 215
    aget-object v3, v0, v10

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e75c28f    # 0.24f

    const v6, 0x3eae978d    # 0.341f

    const v7, 0x3ed1eb85    # 0.41f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 216
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v11, [F

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po3:F

    aput v5, v4, v9

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po4:F

    aput v5, v4, v10

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v11

    .line 217
    aget-object v3, v0, v11

    const-wide/16 v4, 0xea

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 218
    aget-object v3, v0, v11

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e851eb8    # 0.26f

    const v6, 0x3f5eb852    # 0.87f

    const v7, 0x3f420c4a    # 0.758f

    invoke-direct {v4, v5, v12, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v11, [F

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po4:F

    aput v5, v4, v9

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po5:F

    aput v5, v4, v10

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v13

    .line 220
    aget-object v3, v0, v13

    const-wide/16 v4, 0xec

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 221
    aget-object v3, v0, v13

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e570a3d    # 0.21f

    const v6, 0x3eb33333    # 0.35f

    const v7, 0x3ef126e9    # 0.471f

    invoke-direct {v4, v5, v12, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    aget-object v4, v4, p1

    new-array v5, v11, [F

    iget v6, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po5:F

    aput v6, v5, v9

    iget v6, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po1:F

    aput v6, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v3

    .line 223
    const/4 v3, 0x4

    aget-object v3, v0, v3

    const-wide/16 v4, 0xea

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    const/4 v3, 0x4

    aget-object v3, v0, v3

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e3851ec    # 0.18f

    const v6, 0x3ede353f    # 0.434f

    const v7, 0x3f170a3d    # 0.59f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 227
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/Animator;

    rem-int v4, p1, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v9

    add-int/lit8 v4, p1, 0x1

    rem-int/2addr v4, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v10

    add-int/lit8 v4, p1, 0x2

    rem-int/2addr v4, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v11

    add-int/lit8 v4, p1, 0x3

    rem-int/2addr v4, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v13

    const/4 v4, 0x4

    add-int/lit8 v5, p1, 0x4

    rem-int/2addr v5, v1

    aget-object v5, v0, v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 229
    return-object v2
.end method

.method private createRadiusAnimator(I)Landroid/animation/Animator;
    .locals 14
    .param p1, "begin"    # I

    .prologue
    const/4 v13, 0x3

    const/high16 v12, 0x3e800000    # 0.25f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 233
    const/4 v1, 0x5

    .line 234
    .local v1, "length":I
    new-array v0, v1, [Landroid/animation/ObjectAnimator;

    .line 235
    .local v0, "array":[Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v11, [F

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    aput v5, v4, v9

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    aput v5, v4, v10

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v9

    .line 236
    aget-object v3, v0, v9

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e75c28f    # 0.24f

    const v6, 0x3e560419    # 0.209f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v12, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    aget-object v3, v0, v9

    const-wide/16 v4, 0x2d0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 238
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v11, [F

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    aput v5, v4, v9

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    aput v5, v4, v10

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v10

    .line 239
    aget-object v3, v0, v10

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e947ae1    # 0.29f

    const/4 v6, 0x0

    const v7, 0x3ea3d70a    # 0.32f

    const v8, 0x3f218937    # 0.631f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    aget-object v3, v0, v10

    const-wide/16 v4, 0x2c0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 241
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v11, [F

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    aput v5, v4, v9

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    mul-float/2addr v5, v12

    aput v5, v4, v10

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v11

    .line 242
    aget-object v3, v0, v11

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3eac8b44    # 0.337f

    const v7, 0x3e2e147b    # 0.17f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    aget-object v3, v0, v11

    const-wide/16 v4, 0xea

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 244
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v11, [F

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    mul-float/2addr v5, v12

    aput v5, v4, v9

    iget v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    mul-float/2addr v5, v12

    aput v5, v4, v10

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v13

    .line 245
    aget-object v3, v0, v13

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3eac8b44    # 0.337f

    const v7, 0x3e2e147b    # 0.17f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    aget-object v3, v0, v13

    const-wide/16 v4, 0xec

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 247
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    aget-object v4, v4, p1

    new-array v5, v11, [F

    iget v6, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    mul-float/2addr v6, v12

    aput v6, v5, v9

    iget v6, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    aput v6, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v3

    .line 248
    const/4 v3, 0x4

    aget-object v3, v0, v3

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e428f5c    # 0.19f

    const/4 v6, 0x0

    const v7, 0x3ebd70a4    # 0.37f

    const v8, 0x3e9eb852    # 0.31f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    const/4 v3, 0x4

    aget-object v3, v0, v3

    const-wide/16 v4, 0xea

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 251
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 252
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/Animator;

    rem-int v4, p1, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v9

    add-int/lit8 v4, p1, 0x1

    rem-int/2addr v4, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v10

    add-int/lit8 v4, p1, 0x2

    rem-int/2addr v4, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v11

    add-int/lit8 v4, p1, 0x3

    rem-int/2addr v4, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v13

    const/4 v4, 0x4

    add-int/lit8 v5, p1, 0x4

    rem-int/2addr v5, v1

    aget-object v5, v0, v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 254
    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingAnimotionView;->initData(Landroid/content/Context;)V

    .line 91
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mRedPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mRedPaint:Landroid/graphics/Paint;

    const v1, -0xb257b1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mBluePaint:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mBluePaint:Landroid/graphics/Paint;

    const v1, -0xb2862d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mGreenPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mGreenPaint:Landroid/graphics/Paint;

    const v1, 0xde6a3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/LoadingAnimotionView;->getDensity(Landroid/content/Context;)F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    mul-float v0, v1, v2

    .line 104
    .local v0, "ratio":F
    const/high16 v1, 0x40e00000    # 7.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    .line 105
    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    .line 106
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po1:F

    .line 107
    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po2:F

    .line 108
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po3:F

    .line 109
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po4:F

    .line 110
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po5:F

    .line 112
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getX()F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    .line 113
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getY()F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    .line 114
    return-void
.end method

.method private setBAlpha(I)V
    .locals 2
    .param p1, "bAlpha"    # I

    .prologue
    .line 287
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bAlpha:I

    .line 288
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mBluePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 289
    return-void
.end method

.method private setCbPosition(F)V
    .locals 0
    .param p1, "cbPosition"    # F

    .prologue
    .line 315
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbPosition:F

    .line 316
    return-void
.end method

.method private setCbRadius(F)V
    .locals 0
    .param p1, "cbRadius"    # F

    .prologue
    .line 302
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbRadius:F

    .line 303
    return-void
.end method

.method private setCgPosition(F)V
    .locals 0
    .param p1, "cgPosition"    # F

    .prologue
    .line 319
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgPosition:F

    .line 320
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->invalidate()V

    .line 321
    return-void
.end method

.method private setCgRadius(F)V
    .locals 0
    .param p1, "cgRadius"    # F

    .prologue
    .line 306
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgRadius:F

    .line 307
    return-void
.end method

.method private setCrPosition(F)V
    .locals 0
    .param p1, "crPosition"    # F

    .prologue
    .line 311
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crPosition:F

    .line 312
    return-void
.end method

.method private setCrRadius(F)V
    .locals 0
    .param p1, "crRadius"    # F

    .prologue
    .line 298
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crRadius:F

    .line 299
    return-void
.end method

.method private setGAlpha(I)V
    .locals 2
    .param p1, "gAlpha"    # I

    .prologue
    .line 292
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gAlpha:I

    .line 293
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mGreenPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 294
    return-void
.end method

.method private setRAlpha(I)V
    .locals 2
    .param p1, "rAlpha"    # I

    .prologue
    .line 282
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rAlpha:I

    .line 283
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mRedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 284
    return-void
.end method

.method private startAnimator()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mIsAnimRun:Z

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    .line 160
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mIsAnimRun:Z

    .line 161
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private stopRunAnimator()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mIsAnimRun:Z

    .line 365
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 367
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->clearData()V

    .line 369
    :cond_0
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    const/4 v0, 0x0

    .line 372
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crPosition:F

    .line 373
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgPosition:F

    .line 374
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbPosition:F

    .line 375
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crRadius:F

    .line 376
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbRadius:F

    .line 377
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgRadius:F

    .line 378
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rAlpha:I

    .line 379
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bAlpha:I

    .line 380
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gAlpha:I

    .line 381
    return-void
.end method

.method public getDensity(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 405
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crRadius:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 120
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    iput-boolean v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rDraw:Z

    .line 123
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbRadius:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 124
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    iput-boolean v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bDraw:Z

    .line 127
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgRadius:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 128
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    iput-boolean v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gDraw:Z

    .line 131
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rDraw:Z

    if-nez v0, :cond_3

    .line 132
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bDraw:Z

    if-nez v0, :cond_4

    .line 135
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 137
    :cond_4
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gDraw:Z

    if-nez v0, :cond_5

    .line 138
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    :cond_5
    iput-boolean v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rDraw:Z

    .line 141
    iput-boolean v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bDraw:Z

    .line 142
    iput-boolean v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gDraw:Z

    .line 143
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 411
    const-class v0, Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 412
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 387
    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po3:F

    iget v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po1:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 388
    .local v1, "dw":I
    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 390
    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 391
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 393
    invoke-static {v1, p1, v6}, Lcom/meizu/common/widget/LoadingAnimotionView;->resolveSizeAndState(III)I

    move-result v2

    invoke-static {v0, p2, v6}, Lcom/meizu/common/widget/LoadingAnimotionView;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/LoadingAnimotionView;->setMeasuredDimension(II)V

    .line 395
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 326
    if-eqz p2, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->stopRunAnimator()V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->startAnimator()V

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 337
    if-eqz p1, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->stopRunAnimator()V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->startAnimator()V

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    if-nez p1, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->startAnimator()V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 357
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->stopRunAnimator()V

    goto :goto_0
.end method
