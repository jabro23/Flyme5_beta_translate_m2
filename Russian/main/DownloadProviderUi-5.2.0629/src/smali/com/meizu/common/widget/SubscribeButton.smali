.class public Lcom/meizu/common/widget/SubscribeButton;
.super Landroid/widget/Button;
.source "SubscribeButton.java"


# static fields
.field private static final DEFAULT_TEXT_SIZE:I = 0xf

.field private static MAX_ALPHASIGN:F = 0.0f

.field private static MIN_ALPHASIGN:F = 0.0f

.field private static final Tag:Ljava/lang/String; = "SubButton"


# instance fields
.field private mAlphaAnim:Landroid/animation/ValueAnimator;

.field private mAlphaSign:F

.field private mAnimDuration:I

.field private mBackgroundBound:Landroid/graphics/Rect;

.field private mBaseline:I

.field private mBtnBeAddedText:Ljava/lang/String;

.field private mBtnBeAddedTextColor:I

.field private mBtnNormalText:Ljava/lang/String;

.field private mBtnNormalTextColor:I

.field private mBtnSubTextSize:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mIsSelected:Z

.field private mManuaStartAnim:Z

.field private mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

.field private mResNormalDrawble:Landroid/graphics/drawable/Drawable;

.field private mTextPaintA:Landroid/graphics/Paint;

.field private mTextPaintB:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    sput v0, Lcom/meizu/common/widget/SubscribeButton;->MIN_ALPHASIGN:F

    .line 174
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/meizu/common/widget/SubscribeButton;->MAX_ALPHASIGN:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/SubscribeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 191
    const v0, 0x7f01011f

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/SubscribeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v3, 0x41700000    # 15.0f

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 169
    iput-boolean v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    .line 170
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    .line 178
    iput v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnSubTextSize:F

    .line 184
    iput-boolean v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mManuaStartAnim:Z

    .line 196
    sget-object v1, Lcom/meizu/common/R$styleable;->SubscribeButton:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 197
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    .line 198
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    .line 199
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnSubTextSize:F

    .line 200
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    .line 201
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    .line 202
    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedTextColor:I

    .line 203
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalTextColor:I

    .line 204
    const/4 v1, 0x7

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimDuration:I

    .line 205
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    .line 211
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    invoke-direct {p0}, Lcom/meizu/common/widget/SubscribeButton;->init()V

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/SubscribeButton;F)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/SubscribeButton;
    .param p1, "x1"    # F

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/SubscribeButton;->setAlphaSign(F)V

    return-void
.end method

.method private getAlphaSign()F
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    return v0
.end method

.method private init()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 217
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 218
    .local v1, "paint":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 219
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnSubTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/graphics/Paint;

    .line 222
    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    .line 224
    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 226
    .local v0, "SDK":I
    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 227
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3f2b851f    # 0.67f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private setAlphaSign(F)V
    .locals 0
    .param p1, "alphaSign"    # F

    .prologue
    .line 234
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    .line 235
    return-void
.end method

.method private startAnimator(FFI)V
    .locals 4
    .param p1, "begin"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # I

    .prologue
    .line 325
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    .line 326
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/SubscribeButton$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/SubscribeButton$1;-><init>(Lcom/meizu/common/widget/SubscribeButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 334
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 335
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 337
    return-void
.end method


# virtual methods
.method public getBtnBeAddedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    return-object v0
.end method

.method public getBtnBeAddedTextColor()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getBtnNormalText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    return-object v0
.end method

.method public getBtnNormalTextColor()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getSelectedState()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    return v0
.end method

.method public isManuaStartAnim()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mManuaStartAnim:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 297
    sget v1, Lcom/meizu/common/widget/SubscribeButton;->MAX_ALPHASIGN:F

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    sub-float v0, v1, v2

    .line 298
    .local v0, "inverAlphaSign":F
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/graphics/Paint;

    mul-float v2, v0, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 299
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    const/high16 v3, 0x429a0000    # 77.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    iget-boolean v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 302
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 303
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    mul-float v2, v0, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 304
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 313
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 314
    return-void

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    mul-float v2, v0, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 307
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 309
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 438
    const-class v0, Lcom/meizu/common/widget/SubscribeButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 439
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 255
    const/4 v8, 0x0

    .line 256
    .local v8, "width":I
    const/4 v0, 0x0

    .line 257
    .local v0, "height":I
    iget-object v10, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 258
    .local v7, "textMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v10, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v11, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v6, v10, v11

    .line 259
    .local v6, "textHeigt":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getPaddingBottom()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    float-to-int v1, v10

    .line 261
    .local v1, "heightTemp":I
    iget-object v10, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    iget-object v11, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/high16 v11, 0x41a00000    # 20.0f

    add-float/2addr v10, v11

    float-to-int v9, v10

    .line 262
    .local v9, "widthTemp":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 263
    .local v5, "measureWidthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 264
    .local v3, "measureHeightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 265
    .local v4, "measureWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 267
    .local v2, "measureHeight":I
    const/high16 v10, -0x80000000

    if-ne v5, v10, :cond_1

    .line 268
    move v8, v9

    .line 275
    :goto_0
    const/high16 v10, -0x80000000

    if-ne v3, v10, :cond_3

    .line 276
    move v0, v1

    .line 282
    :cond_0
    :goto_1
    invoke-virtual {p0, v8, v0}, Lcom/meizu/common/widget/SubscribeButton;->setMeasuredDimension(II)V

    .line 283
    return-void

    .line 269
    :cond_1
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v5, v10, :cond_2

    .line 270
    move v8, v4

    goto :goto_0

    .line 272
    :cond_2
    move v8, v4

    goto :goto_0

    .line 277
    :cond_3
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v3, v10, :cond_4

    .line 278
    move v0, v2

    goto :goto_1

    .line 279
    :cond_4
    if-nez v5, :cond_0

    .line 280
    move v0, v2

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 288
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    .line 289
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 290
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    .line 291
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 292
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 293
    return-void
.end method

.method public onStartAnimation()V
    .locals 3

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    .line 341
    iget v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 342
    iget v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    sget v1, Lcom/meizu/common/widget/SubscribeButton;->MIN_ALPHASIGN:F

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimDuration:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V

    .line 345
    :goto_1
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    sget v1, Lcom/meizu/common/widget/SubscribeButton;->MAX_ALPHASIGN:F

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimDuration:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 249
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mManuaStartAnim:Z

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->onStartAnimation()V

    .line 321
    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimDuration:I

    .line 403
    return-void
.end method

.method public setBtnBeAddedText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    .line 349
    .local v0, "textTemp":Ljava/lang/String;
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->requestLayout()V

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 354
    return-void
.end method

.method public setBtnBeAddedTextColor(I)V
    .locals 1
    .param p1, "beaddedTextColor"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 376
    return-void
.end method

.method public setBtnNormalText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    .line 362
    .local v0, "textTemp":Ljava/lang/String;
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->requestLayout()V

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 367
    return-void
.end method

.method public setBtnNormalTextColor(I)V
    .locals 1
    .param p1, "addTextColor"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 385
    return-void
.end method

.method public setBtnSubTextSize(I)V
    .locals 4
    .param p1, "textSize"    # I

    .prologue
    .line 392
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 393
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 394
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 396
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    .line 398
    .end local v0    # "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 399
    return-void
.end method

.method public setManuaStartAnim(Z)V
    .locals 0
    .param p1, "manuaStartAnim"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mManuaStartAnim:Z

    .line 433
    return-void
.end method

.method public setSelectedable(Z)V
    .locals 3
    .param p1, "selectedable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    if-eq v0, p1, :cond_0

    .line 411
    iput-boolean p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    .line 412
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    if-eqz v0, :cond_1

    .line 413
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/SubscribeButton;->setAlphaSign(F)V

    .line 414
    sget v0, Lcom/meizu/common/widget/SubscribeButton;->MIN_ALPHASIGN:F

    iget v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/SubscribeButton;->setAlphaSign(F)V

    .line 417
    sget v0, Lcom/meizu/common/widget/SubscribeButton;->MAX_ALPHASIGN:F

    iget v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V

    goto :goto_0
.end method
