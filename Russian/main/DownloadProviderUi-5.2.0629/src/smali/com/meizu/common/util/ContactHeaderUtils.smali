.class public Lcom/meizu/common/util/ContactHeaderUtils;
.super Ljava/lang/Object;
.source "ContactHeaderUtils.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BG_COLOR:I = -0xab51aa

.field private static final DEFAULT_BORDER_COLOR:I = -0x1

.field private static final colorArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1d90bf
        -0x22a7b9
        -0x919438
        -0xae842f
        -0xd7436e
        -0xab51aa
        -0x1659c5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "checkText"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 271
    const-string v2, ""

    .line 272
    .local v2, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    const-string v2, ""

    .line 288
    :goto_0
    return-object v2

    .line 275
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    const-string v2, ""

    goto :goto_0

    .line 279
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "firstLetter":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 282
    .local v0, "c":C
    const/16 v4, 0x61

    if-gt v4, v0, :cond_2

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_2

    .line 283
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 285
    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method public static createContactHeaderDrawable(Landroid/content/res/Resources;IILjava/lang/Object;Ljava/lang/Object;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "content"    # Ljava/lang/Object;
    .param p4, "background"    # Ljava/lang/Object;
    .param p5, "bordercolor"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    new-array v3, v1, [Ljava/lang/Object;

    .line 49
    .local v3, "obj":[Ljava/lang/Object;
    new-array v4, v1, [Ljava/lang/Object;

    .line 50
    .local v4, "bg":[Ljava/lang/Object;
    aput-object p3, v3, v0

    .line 51
    aput-object p4, v4, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    .line 52
    invoke-static/range {v0 .. v5}, Lcom/meizu/common/util/ContactHeaderUtils;->createContactHeaderDrawable(Landroid/content/res/Resources;II[Ljava/lang/Object;[Ljava/lang/Object;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createContactHeaderDrawable(Landroid/content/res/Resources;II[Ljava/lang/Object;[Ljava/lang/Object;I)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "content"    # [Ljava/lang/Object;
    .param p4, "background"    # [Ljava/lang/Object;
    .param p5, "bordercolor"    # I

    .prologue
    .line 67
    const/16 v28, 0x1

    .line 68
    .local v28, "mIconCount":I
    if-eqz p3, :cond_0

    .line 69
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    .line 70
    :cond_0
    const/16 v37, 0x3

    move/from16 v0, v28

    move/from16 v1, v37

    if-le v0, v1, :cond_1

    const/16 v28, 0x3

    .line 71
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v37

    move-object/from16 v0, v37

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    .line 72
    .local v8, "density":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v8

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v36, v0

    .line 73
    .local v36, "width":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v8

    move/from16 v0, v37

    float-to-int v12, v0

    .line 74
    .local v12, "height":I
    float-to-int v0, v8

    move/from16 v37, v0

    add-int/lit8 v23, v37, 0x1

    .line 75
    .local v23, "mBorderWidth":I
    const/4 v14, 0x0

    .line 76
    .local v14, "isDefaultIcon":Z
    const/16 v37, 0x1

    move/from16 v0, v28

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    const/16 v23, 0x0

    .line 78
    :cond_2
    const v25, -0xab51aa

    .line 79
    .local v25, "mDefaultBgColor":I
    new-instance v27, Landroid/graphics/RectF;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/RectF;-><init>()V

    .line 80
    .local v27, "mDrawableRect":Landroid/graphics/RectF;
    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    .line 81
    .local v22, "mBorderRect":Landroid/graphics/RectF;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 82
    .local v18, "mBitmapPaint":Landroid/graphics/Paint;
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 83
    .local v20, "mBorderPaint":Landroid/graphics/Paint;
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 84
    .local v24, "mCoverBorderPaint":Landroid/graphics/Paint;
    new-instance v31, Landroid/graphics/Paint;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Paint;-><init>()V

    .line 85
    .local v31, "mTextBgPaint":Landroid/graphics/Paint;
    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    .line 86
    .local v32, "mTextPaint":Landroid/graphics/Paint;
    const/16 v19, -0x1

    .line 87
    .local v19, "mBorderColor":I
    const/16 v37, -0x1

    move/from16 v0, p5

    move/from16 v1, v37

    if-eq v0, v1, :cond_3

    move/from16 v19, p5

    .line 90
    :cond_3
    const/4 v9, 0x0

    .line 91
    .local v9, "det":F
    const/16 v17, 0x0

    .line 92
    .local v17, "mBitmap":Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    .line 93
    .local v16, "mBitMapShader":Landroid/graphics/BitmapShader;
    const/16 v29, 0x0

    .line 94
    .local v29, "mShaderMatrix":Landroid/graphics/Matrix;
    move/from16 v15, v25

    .line 95
    .local v15, "mBgColor":I
    const-string v30, ""

    .line 97
    .local v30, "mText":Ljava/lang/String;
    sget-object v37, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 99
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    .local v7, "canvas":Landroid/graphics/Canvas;
    sget-object v37, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    const/16 v37, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    const/16 v37, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    sget-object v37, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 109
    const/16 v37, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    sget-object v37, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    const/16 v37, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    sget-object v37, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    const/16 v37, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    const/high16 v37, 0x19000000

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    const/high16 v37, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    const/16 v37, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    const/16 v37, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 129
    const/16 v37, 0x3

    move/from16 v0, v28

    move/from16 v1, v37

    if-ne v0, v1, :cond_4

    .line 130
    const/16 v37, 0x0

    const/16 v38, 0x0

    mul-int/lit8 v39, v36, 0x21

    div-int/lit8 v39, v39, 0x2e

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-int/lit8 v40, v12, 0x21

    div-int/lit8 v40, v40, 0x2e

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v22

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 131
    :cond_4
    const/16 v37, 0x2

    move/from16 v0, v28

    move/from16 v1, v37

    if-ne v0, v1, :cond_10

    .line 132
    const/16 v37, 0x0

    const/16 v38, 0x0

    mul-int/lit8 v39, v36, 0x26

    div-int/lit8 v39, v39, 0x2e

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-int/lit8 v40, v12, 0x26

    div-int/lit8 v40, v40, 0x2e

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v22

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    :goto_0
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v37

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v37, v37, v38

    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v38

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v39, v0

    sub-float v38, v38, v39

    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v38, v38, v39

    const/high16 v39, 0x40000000    # 2.0f

    div-float v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 137
    .local v21, "mBorderRadius":F
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 138
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v27

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 139
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v37

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v38

    const/high16 v39, 0x40000000    # 2.0f

    div-float v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(FF)F

    move-result v26

    .line 142
    .local v26, "mDrawableRadius":F
    const/16 v37, 0x3

    move/from16 v0, v28

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    mul-int/lit8 v37, v36, 0xd

    div-int/lit8 v37, v37, 0x5c

    add-int v37, v37, v23

    move/from16 v0, v37

    int-to-float v9, v0

    .line 143
    :cond_5
    const/16 v37, 0x2

    move/from16 v0, v28

    move/from16 v1, v37

    if-ne v0, v1, :cond_6

    mul-int/lit8 v37, v36, 0x8

    div-int/lit8 v37, v37, 0x5c

    div-int/lit8 v38, v23, 0x2

    add-int v37, v37, v38

    move/from16 v0, v37

    int-to-float v9, v0

    .line 144
    :cond_6
    const/16 v37, 0x1

    move/from16 v0, v28

    move/from16 v1, v37

    if-ne v0, v1, :cond_7

    const/4 v9, 0x0

    .line 146
    :cond_7
    add-int/lit8 v13, v28, -0x1

    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_1e

    .line 147
    const/4 v14, 0x0

    .line 148
    if-eqz p3, :cond_8

    aget-object v37, p3, v13

    if-eqz v37, :cond_8

    aget-object v37, p3, v13

    move-object/from16 v0, v37

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v37, v0

    if-eqz v37, :cond_11

    .line 149
    :cond_8
    if-eqz p3, :cond_9

    aget-object v37, p3, v13

    if-eqz v37, :cond_9

    .line 150
    aget-object v37, p3, v13

    check-cast v37, Ljava/lang/String;

    invoke-static/range {v37 .. v37}, Lcom/meizu/common/util/ContactHeaderUtils;->checkText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 151
    aget-object v37, p3, v13

    check-cast v37, Ljava/lang/String;

    invoke-static/range {v37 .. v37}, Lcom/meizu/common/util/ContactHeaderUtils;->getColorByText(Ljava/lang/String;)I

    move-result v15

    .line 153
    :cond_9
    if-eqz p3, :cond_a

    aget-object v37, p3, v13

    if-eqz v37, :cond_a

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_b

    .line 154
    :cond_a
    const v37, 0x7f02005e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/meizu/common/util/ContactHeaderUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 155
    const/4 v14, 0x1

    .line 162
    :cond_b
    :goto_2
    if-eqz p4, :cond_c

    aget-object v37, p4, v13

    if-eqz v37, :cond_c

    .line 163
    aget-object v37, p4, v13

    check-cast v37, Ljava/lang/String;

    invoke-static/range {v37 .. v37}, Lcom/meizu/common/util/ContactHeaderUtils;->getColorByText(Ljava/lang/String;)I

    move-result v15

    .line 165
    :cond_c
    if-eqz v17, :cond_d

    .line 167
    new-instance v16, Landroid/graphics/BitmapShader;

    .end local v16    # "mBitMapShader":Landroid/graphics/BitmapShader;
    sget-object v37, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v38, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 169
    .restart local v16    # "mBitMapShader":Landroid/graphics/BitmapShader;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v38

    mul-float v37, v37, v38

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v38

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v38, v38, v39

    cmpl-float v37, v37, v38

    if-lez v37, :cond_13

    .line 170
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v37

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v35, v37, v38

    .line 174
    .local v35, "scale":F
    :goto_3
    new-instance v29, Landroid/graphics/Matrix;

    .end local v29    # "mShaderMatrix":Landroid/graphics/Matrix;
    invoke-direct/range {v29 .. v29}, Landroid/graphics/Matrix;-><init>()V

    .line 175
    .restart local v29    # "mShaderMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 176
    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 178
    .end local v35    # "scale":F
    :cond_d
    if-nez v13, :cond_16

    .line 179
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_14

    .line 181
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    sub-float v37, v37, v9

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v31

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0x3feccccccccccccdL    # 0.9

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 183
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 184
    .local v10, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v37, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v38, v0

    sub-float v11, v37, v38

    .line 185
    .local v11, "fontTotalHeight":F
    const/high16 v37, 0x40000000    # 2.0f

    div-float v37, v11, v37

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v38, v0

    sub-float v34, v37, v38

    .line 186
    .local v34, "offY":F
    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v37, v37, v34

    const/high16 v38, 0x40000000    # 2.0f

    sub-float v33, v37, v38

    .line 187
    .local v33, "newY":F
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    sub-float v37, v37, v9

    move-object/from16 v0, v30

    move/from16 v1, v37

    move/from16 v2, v33

    move-object/from16 v3, v32

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 197
    .end local v10    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v11    # "fontTotalHeight":F
    .end local v33    # "newY":F
    .end local v34    # "offY":F
    :cond_e
    :goto_4
    if-eqz v23, :cond_f

    .line 199
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    sub-float v37, v37, v9

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 201
    :cond_f
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    sub-float v37, v37, v9

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v24

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    :goto_5
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    .line 134
    .end local v13    # "i":I
    .end local v21    # "mBorderRadius":F
    .end local v26    # "mDrawableRadius":F
    :cond_10
    const/16 v37, 0x0

    const/16 v38, 0x0

    add-int/lit8 v39, v28, 0x1

    mul-int v39, v39, v36

    mul-int/lit8 v40, v28, 0x2

    div-int v39, v39, v40

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    add-int/lit8 v40, v28, 0x1

    mul-int v40, v40, v12

    mul-int/lit8 v41, v28, 0x2

    div-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v22

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 157
    .restart local v13    # "i":I
    .restart local v21    # "mBorderRadius":F
    .restart local v26    # "mDrawableRadius":F
    :cond_11
    aget-object v37, p3, v13

    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/graphics/Bitmap;

    move/from16 v37, v0

    if-eqz v37, :cond_12

    .line 158
    aget-object v17, p3, v13

    .end local v17    # "mBitmap":Landroid/graphics/Bitmap;
    check-cast v17, Landroid/graphics/Bitmap;

    .restart local v17    # "mBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 159
    :cond_12
    aget-object v37, p3, v13

    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    move/from16 v37, v0

    if-eqz v37, :cond_b

    .line 160
    aget-object v37, p3, v13

    check-cast v37, Landroid/graphics/drawable/Drawable;

    invoke-static/range {v37 .. v37}, Lcom/meizu/common/util/ContactHeaderUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v17

    goto/16 :goto_2

    .line 172
    :cond_13
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v37

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v35, v37, v38

    .restart local v35    # "scale":F
    goto/16 :goto_3

    .line 188
    .end local v35    # "scale":F
    :cond_14
    if-eqz v17, :cond_e

    .line 189
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v38

    sub-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    sub-float v37, v37, v9

    int-to-float v0, v12

    move/from16 v38, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v39

    sub-float v38, v38, v39

    const/high16 v39, 0x40000000    # 2.0f

    div-float v38, v38, v39

    move-object/from16 v0, v29

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 190
    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 191
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 192
    if-eqz v14, :cond_15

    .line 193
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    sub-float v37, v37, v9

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v31

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 195
    :cond_15
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    sub-float v37, v37, v9

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v18

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 202
    :cond_16
    add-int/lit8 v37, v28, -0x1

    move/from16 v0, v37

    if-ne v13, v0, :cond_1a

    .line 203
    if-eqz v17, :cond_19

    .line 204
    if-eqz v14, :cond_18

    .line 205
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v37, v37, v9

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v31

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 217
    :goto_6
    if-eqz v23, :cond_17

    .line 218
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v37, v37, v9

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 220
    :cond_17
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v37, v37, v9

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v24

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 208
    :cond_18
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v38

    sub-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    add-float v37, v37, v9

    int-to-float v0, v12

    move/from16 v38, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v39

    sub-float v38, v38, v39

    const/high16 v39, 0x40000000    # 2.0f

    div-float v38, v38, v39

    move-object/from16 v0, v29

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 209
    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 210
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 211
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v37, v37, v9

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v18

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 214
    :cond_19
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v37, v37, v9

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v31

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 222
    :cond_1a
    if-eqz v17, :cond_1d

    .line 223
    if-eqz v14, :cond_1c

    .line 224
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v31

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 236
    :goto_7
    if-eqz v23, :cond_1b

    .line 237
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 239
    :cond_1b
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v24

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 227
    :cond_1c
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v38

    sub-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    int-to-float v0, v12

    move/from16 v38, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v39

    sub-float v38, v38, v39

    const/high16 v39, 0x40000000    # 2.0f

    div-float v38, v38, v39

    move-object/from16 v0, v29

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 228
    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 229
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 230
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v18

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 233
    :cond_1d
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    div-int/lit8 v37, v36, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-int/lit8 v38, v12, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v26

    move-object/from16 v3, v31

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 243
    :cond_1e
    return-object v6
.end method

.method private static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 292
    if-nez p0, :cond_0

    .line 312
    :goto_0
    return-object v0

    .line 296
    :cond_0
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 297
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 303
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    instance-of v2, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 304
    const/4 v2, 0x2

    const/4 v3, 0x2

    sget-object v4, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 306
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 310
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ContactHeaderUtils "

    const-string v3, "getBitmapFromDrawable  OutOfMemoryError !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getColorByText(Ljava/lang/String;)I
    .locals 4
    .param p0, "colorText"    # Ljava/lang/String;

    .prologue
    .line 254
    const v1, -0xab51aa

    .line 255
    .local v1, "result":I
    const/4 v0, 0x5

    .line 256
    .local v0, "index":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    array-length v3, v3

    rem-int v0, v2, v3

    .line 258
    :cond_0
    sget-object v2, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 259
    sget-object v2, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    aget v1, v2, v0

    .line 261
    :cond_1
    return v1
.end method
