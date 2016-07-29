.class public Lcom/meizu/common/drawble/TipDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "TipDrawable.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mRadius:I

.field mTiPaint:Landroid/graphics/Paint;

.field mTipColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 35
    invoke-direct {p0, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/meizu/common/drawble/TipDrawable;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "is"    # Ljava/io/InputStream;

    .prologue
    .line 57
    invoke-direct {p0, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/meizu/common/drawble/TipDrawable;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "filepath"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/common/drawble/TipDrawable;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    iput-object p1, p0, Lcom/meizu/common/drawble/TipDrawable;->mContext:Landroid/content/Context;

    .line 63
    const/4 v1, 0x0

    sget-object v2, Lcom/meizu/common/R$styleable;->TipDrawable:[I

    const v3, 0x7f01011c

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/meizu/common/drawble/TipDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/drawble/TipDrawable;->mTipColor:I

    .line 65
    iget-object v1, p0, Lcom/meizu/common/drawble/TipDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0273

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/drawble/TipDrawable;->mRadius:I

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/drawble/TipDrawable;->mTiPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v1, p0, Lcom/meizu/common/drawble/TipDrawable;->mTiPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v1, p0, Lcom/meizu/common/drawble/TipDrawable;->mTiPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/drawble/TipDrawable;->mTipColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p0}, Lcom/meizu/common/drawble/TipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/meizu/common/drawble/TipDrawable;->mRadius:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/drawble/TipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/meizu/common/drawble/TipDrawable;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/drawble/TipDrawable;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/drawble/TipDrawable;->mTiPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    return-void
.end method

.method public setTipColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 84
    iget v0, p0, Lcom/meizu/common/drawble/TipDrawable;->mTipColor:I

    if-eq v0, p1, :cond_0

    .line 85
    iput p1, p0, Lcom/meizu/common/drawble/TipDrawable;->mTipColor:I

    .line 86
    iget-object v0, p0, Lcom/meizu/common/drawble/TipDrawable;->mTiPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/drawble/TipDrawable;->mTipColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    invoke-virtual {p0}, Lcom/meizu/common/drawble/TipDrawable;->invalidateSelf()V

    .line 89
    :cond_0
    return-void
.end method

.method public setTipRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .prologue
    .line 96
    iget v0, p0, Lcom/meizu/common/drawble/TipDrawable;->mRadius:I

    if-eq v0, p1, :cond_0

    .line 97
    iput p1, p0, Lcom/meizu/common/drawble/TipDrawable;->mRadius:I

    .line 98
    invoke-virtual {p0}, Lcom/meizu/common/drawble/TipDrawable;->invalidateSelf()V

    .line 100
    :cond_0
    return-void
.end method
