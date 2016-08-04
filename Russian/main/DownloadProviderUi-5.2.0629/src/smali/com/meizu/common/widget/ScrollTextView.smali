.class public Lcom/meizu/common/widget/ScrollTextView;
.super Landroid/view/View;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/ScrollTextView$AnimationHandler;,
        Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;,
        Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;,
        Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;,
        Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;,
        Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;,
        Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;,
        Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;,
        Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    }
.end annotation


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final DEF_YSCROLL_END:I = 0x7fffffff

.field private static TAG:Ljava/lang/String;


# instance fields
.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mChangingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentItem:I

.field private mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

.field private mFadingHeight:F

.field private mFadingMatrix:Landroid/graphics/Matrix;

.field private mFadingPaint:Landroid/graphics/Paint;

.field private mFadingShader:Landroid/graphics/Shader;

.field private mFirstItem:I

.field private mFontMetricsCenterY:F

.field private mIsBitmapChanged:Z

.field private mIsDrawFading:Z

.field private mNormalFontMetricsCenterY:F

.field private mNormalItemHeight:F

.field private mNormalTextColor:I

.field private mNormalTextSize:F

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

.field private mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

.field private mScrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollingOffset:I

.field private mSelectFontMetricsCenterY:F

.field private mSelectItemHeight:F

.field private mSelectTextColor:I

.field private mSelectTextSize:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTmpBitmap:Landroid/graphics/Bitmap;

.field private mTmpCanvas:Landroid/graphics/Canvas;

.field private mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

.field private mVisibleItems:I

.field private mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "ScrollTextView"

    sput-object v0, Lcom/meizu/common/widget/ScrollTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 71
    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    .line 77
    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 78
    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 97
    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 111
    iput-boolean v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsDrawFading:Z

    .line 189
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    .line 366
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$1;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    .line 679
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 681
    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z

    .line 206
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->initData(Landroid/content/Context;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 71
    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    .line 77
    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 78
    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 97
    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 111
    iput-boolean v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsDrawFading:Z

    .line 189
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    .line 366
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$1;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    .line 679
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 681
    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z

    .line 197
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->initData(Landroid/content/Context;)V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/ScrollTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/ScrollTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/meizu/common/widget/ScrollTextView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/ScrollTextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 59
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/ScrollTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getYScrollEnd()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getYScrollStart()I

    move-result v0

    return v0
.end method

.method private computeFontMetrics()V
    .locals 3

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1059
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 1060
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectFontMetricsCenterY:F

    .line 1062
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1063
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 1064
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalFontMetricsCenterY:F

    .line 1065
    return-void
.end method

.method private computeTextSizeAndColor(IF)V
    .locals 21
    .param p1, "index"    # I
    .param p2, "scale"    # F

    .prologue
    .line 807
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    .line 808
    .local v8, "selectColor":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    .line 809
    .local v6, "normalColor":I
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 810
    .local v9, "selectalpha":I
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v12

    .line 811
    .local v12, "slecetred":I
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 812
    .local v11, "slecetgreen":I
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    .line 814
    .local v10, "slecetblue":I
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    .line 815
    .local v13, "unselectalpha":I
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v16

    .line 816
    .local v16, "unslecetred":I
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 817
    .local v15, "unslecetgreen":I
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    .line 819
    .local v14, "unslecetblue":I
    sub-int v17, v9, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p2

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v2, v13, v17

    .line 820
    .local v2, "a":I
    sub-int v17, v12, v16

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p2

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v7, v16, v17

    .line 821
    .local v7, "r":I
    sub-int v17, v11, v15

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p2

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v5, v15, v17

    .line 822
    .local v5, "g":I
    sub-int v17, v10, v14

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p2

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v3, v14, v17

    .line 823
    .local v3, "b":I
    invoke-static {v2, v7, v5, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 825
    .local v4, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v19, v19, p2

    add-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 828
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalFontMetricsCenterY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mSelectFontMetricsCenterY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalFontMetricsCenterY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v18, v18, p2

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/ScrollTextView;->mFontMetricsCenterY:F

    .line 829
    return-void
.end method

.method private configTextView(IF)F
    .locals 8
    .param p1, "index"    # I
    .param p2, "scale"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 786
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    int-to-float v0, v4

    .line 787
    .local v0, "dy":F
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    iget v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 788
    .local v1, "gap":I
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    div-int/lit8 v3, v4, 0x2

    .line 790
    .local v3, "selectItemId":I
    const/4 v2, 0x0

    .line 791
    .local v2, "k":F
    if-ne p1, v3, :cond_1

    .line 792
    int-to-float v4, v1

    mul-float/2addr v4, p2

    div-float/2addr v4, v7

    add-float/2addr v0, v4

    .line 793
    move v2, p2

    .line 801
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/meizu/common/widget/ScrollTextView;->computeTextSizeAndColor(IF)V

    .line 803
    return v0

    .line 794
    :cond_1
    add-int/lit8 v4, v3, 0x1

    if-ne p1, v4, :cond_2

    .line 795
    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 796
    sub-float v2, v6, p2

    goto :goto_0

    .line 797
    :cond_2
    add-int/lit8 v4, v3, 0x2

    if-ne p1, v4, :cond_0

    .line 798
    int-to-float v4, v1

    sub-float v5, v6, p2

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v0, v4

    goto :goto_0
.end method

.method private doScroll(I)V
    .locals 9
    .param p1, "delta"    # I

    .prologue
    const/4 v8, 0x0

    .line 927
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 929
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v3

    .line 930
    .local v3, "itemHeight":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    div-int v0, v6, v3

    .line 932
    .local v0, "count":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    sub-int v5, v6, v0

    .line 933
    .local v5, "pos":I
    iget-object v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v6}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    .line 935
    .local v2, "itemCount":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    rem-int v1, v6, v3

    .line 936
    .local v1, "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    if-gt v6, v7, :cond_0

    .line 937
    const/4 v1, 0x0

    .line 940
    :cond_0
    iget-boolean v6, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v6, :cond_6

    if-lez v2, :cond_6

    .line 941
    if-lez v1, :cond_2

    .line 942
    add-int/lit8 v5, v5, -0x1

    .line 943
    add-int/lit8 v0, v0, 0x1

    .line 949
    :cond_1
    :goto_0
    if-gez v5, :cond_3

    .line 950
    add-int/2addr v5, v2

    goto :goto_0

    .line 944
    :cond_2
    if-gez v1, :cond_1

    .line 945
    add-int/lit8 v5, v5, 0x1

    .line 946
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 952
    :cond_3
    rem-int/2addr v5, v2

    .line 980
    :cond_4
    :goto_1
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 981
    .local v4, "offset":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-eq v5, v6, :cond_c

    .line 982
    invoke-virtual {p0, v5, v8}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 988
    :goto_2
    mul-int v6, v0, v3

    sub-int v6, v4, v6

    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 989
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_5

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v6

    if-eqz v6, :cond_5

    .line 990
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 992
    :cond_5
    return-void

    .line 954
    .end local v4    # "offset":I
    :cond_6
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 955
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v7

    sub-int v0, v6, v7

    .line 956
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v5

    .line 957
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto :goto_1

    .line 958
    :cond_7
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v6

    if-le v5, v6, :cond_8

    .line 959
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v7

    sub-int v0, v6, v7

    .line 960
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v5

    .line 961
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto :goto_1

    .line 962
    :cond_8
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v6

    if-le v5, v6, :cond_9

    if-lez v1, :cond_9

    .line 963
    add-int/lit8 v5, v5, -0x1

    .line 964
    add-int/lit8 v0, v0, 0x1

    .line 965
    sget-object v6, Lcom/meizu/common/widget/ScrollTextView;->TAG:Ljava/lang/String;

    const-string v7, "pos > 0 && fixPos > 0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 966
    :cond_9
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v6

    if-ge v5, v6, :cond_a

    if-gez v1, :cond_a

    .line 967
    add-int/lit8 v5, v5, 0x1

    .line 968
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 969
    :cond_a
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 970
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-gez v6, :cond_4

    .line 971
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto/16 :goto_1

    .line 973
    :cond_b
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 974
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-lez v6, :cond_4

    .line 975
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto/16 :goto_1

    .line 984
    .restart local v4    # "offset":I
    :cond_c
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    goto/16 :goto_2
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 725
    const/4 v7, 0x0

    .line 726
    .local v7, "yoff":F
    iget v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    iget v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    sub-int/2addr v8, v9

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v9

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    float-to-int v9, v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 729
    .local v6, "top":I
    neg-int v8, v6

    iget v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int/2addr v8, v9

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v1, v8

    .line 730
    .local v1, "dy":F
    iget v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetX:I

    int-to-float v8, v8

    invoke-virtual {p1, v8, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 732
    iget v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-lez v8, :cond_0

    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 734
    .local v4, "scrolloff":I
    :goto_0
    int-to-float v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 736
    .local v3, "k":F
    move v7, v1

    .line 737
    const/4 v1, 0x0

    .line 738
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v8}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 739
    invoke-direct {p0, v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->configTextView(IF)F

    move-result v1

    .line 740
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 742
    add-float/2addr v7, v1

    .line 744
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/ScrollTextView;->getItemText(I)Ljava/lang/String;

    move-result-object v5

    .line 746
    .local v5, "text":Ljava/lang/String;
    iget v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mFontMetricsCenterY:F

    sub-float v0, v8, v9

    .line 747
    .local v0, "baseline":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v0, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 738
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 732
    .end local v0    # "baseline":F
    .end local v2    # "i":I
    .end local v3    # "k":F
    .end local v4    # "scrolloff":I
    .end local v5    # "text":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int v4, v8, v9

    goto :goto_0

    .line 752
    .restart local v2    # "i":I
    .restart local v3    # "k":F
    .restart local v4    # "scrolloff":I
    :cond_1
    iget v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetX:I

    neg-int v8, v8

    int-to-float v8, v8

    neg-float v9, v7

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 753
    return-void
.end method

.method private drawVerticalFading(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 709
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 710
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 711
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    iget-object v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 713
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 714
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 715
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 716
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 717
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 718
    return-void
.end method

.method private getBitmap(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 684
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    .line 685
    iput-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z

    .line 694
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 696
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 688
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    .line 689
    iput-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z

    goto :goto_0

    .line 691
    :cond_2
    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z

    goto :goto_0
.end method

.method private getItemHeight()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    float-to-int v0, v0

    return v0
.end method

.method private getItemText(I)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 761
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    add-int v1, p1, v2

    .line 763
    .local v1, "t":I
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "s":Ljava/lang/String;
    if-gez v1, :cond_3

    .line 765
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 766
    iget-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    .line 772
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 773
    const-string v0, ""

    .line 776
    :cond_1
    return-object v0

    .line 766
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 767
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 768
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 769
    iget-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_1
.end method

.method private getItemsRange()Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;
    .locals 8

    .prologue
    .line 1011
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v3

    if-nez v3, :cond_0

    .line 1012
    const/4 v3, 0x0

    .line 1035
    :goto_0
    return-object v3

    .line 1015
    :cond_0
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 1016
    .local v2, "first":I
    const/4 v0, 0x1

    .line 1018
    .local v0, "count":I
    :goto_1
    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1019
    add-int/lit8 v2, v2, -0x1

    .line 1020
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1023
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-eqz v3, :cond_3

    .line 1024
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-lez v3, :cond_2

    .line 1025
    add-int/lit8 v2, v2, -0x1

    .line 1027
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1030
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 1031
    .local v1, "emptyItems":I
    sub-int/2addr v2, v1

    .line 1032
    int-to-double v4, v0

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 1035
    .end local v1    # "emptyItems":I
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v3, v2, v0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->update(II)Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    move-result-object v3

    goto :goto_0
.end method

.method private getScrollEndItem()I
    .locals 5

    .prologue
    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, "index":I
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v3}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    .line 894
    .local v2, "itemCount":I
    iget-boolean v3, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v3, :cond_0

    move v1, v0

    .line 903
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 897
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    if-gt v2, v3, :cond_1

    .line 898
    add-int/lit8 v0, v2, -0x1

    :goto_1
    move v1, v0

    .line 903
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 900
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v3, v2, -0x1

    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    goto :goto_1
.end method

.method private getScrollStartItem()I
    .locals 4

    .prologue
    .line 907
    const/4 v0, 0x0

    .line 908
    .local v0, "index":I
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v3}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    .line 910
    .local v2, "itemCount":I
    iget-boolean v3, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v3, :cond_0

    move v1, v0

    .line 919
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 913
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    if-gt v2, v3, :cond_1

    .line 914
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 919
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 916
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    div-int/lit8 v0, v3, 0x2

    goto :goto_1
.end method

.method private getYScrollEnd()I
    .locals 4

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 867
    .local v0, "end":I
    iget-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v1, :cond_0

    .line 868
    const v0, 0x7fffffff

    .line 874
    :goto_0
    return v0

    .line 870
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private getYScrollStart()I
    .locals 4

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 880
    .local v0, "start":I
    iget-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v1, :cond_0

    .line 881
    const v0, -0x7fffffff

    .line 887
    :goto_0
    return v0

    .line 883
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 214
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    invoke-direct {v0, p0, v2, v3}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;-><init>(Lcom/meizu/common/widget/ScrollTextView;Landroid/content/Context;Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b01eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b01ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b01f5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b01f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a007c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a007b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    .line 231
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    .line 233
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    .line 234
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    .line 237
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    .line 238
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 240
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    .line 244
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    .line 246
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 247
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 251
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->computeFontMetrics()V

    .line 252
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rebuildItems()Z
    .locals 4

    .prologue
    .line 1043
    const/4 v1, 0x0

    .line 1044
    .local v1, "updated":Z
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemsRange()Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    .line 1046
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v3}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getFirst()I

    move-result v3

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v3}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getLast()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 1047
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getFirst()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1048
    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    .line 1047
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1051
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getFirst()I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    .line 1054
    :cond_1
    return v1
.end method

.method private setViewAdapter(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;)V
    .locals 0
    .param p1, "viewAdapter"    # Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    .line 453
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 454
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    return-void
.end method

.method public addClickingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method public addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    return v0
.end method

.method public getIDataAdapter()Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    return v0
.end method

.method public getViewAdapter()Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    return v0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 481
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;

    .line 482
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;->onChanged(Lcom/meizu/common/widget/ScrollTextView;II)V

    goto :goto_0

    .line 484
    .end local v1    # "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 547
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 549
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;

    .line 550
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;
    invoke-interface {v1, p0, p1}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;->onItemClicked(Lcom/meizu/common/widget/ScrollTextView;I)V

    goto :goto_0

    .line 552
    .end local v1    # "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 5

    .prologue
    .line 517
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    if-eqz v2, :cond_0

    .line 518
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;->onChanged(Landroid/view/View;II)V

    .line 520
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;

    .line 521
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;
    invoke-interface {v1, p0}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;->onScrollingFinished(Lcom/meizu/common/widget/ScrollTextView;)V

    goto :goto_0

    .line 523
    .end local v1    # "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;
    :cond_1
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 508
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;

    .line 509
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;
    invoke-interface {v1, p0}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;->onScrollingStarted(Lcom/meizu/common/widget/ScrollTextView;)V

    goto :goto_0

    .line 511
    .end local v1    # "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 662
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 663
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 668
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->rebuildItems()Z

    .line 669
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ScrollTextView;->drawItems(Landroid/graphics/Canvas;)V

    .line 672
    :cond_1
    iget-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsDrawFading:Z

    if-eqz v1, :cond_2

    .line 673
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ScrollTextView;->drawVerticalFading(Landroid/graphics/Canvas;)V

    .line 676
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 677
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1587
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1588
    const-class v0, Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1589
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 647
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 648
    .local v0, "height":I
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/ScrollTextView;->setMeasuredDimension(II)V

    .line 649
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 833
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getViewAdapter()Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 861
    :cond_0
    :goto_0
    return v2

    .line 837
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 861
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v2, p1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 839
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 840
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 845
    :pswitch_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isScrollingPerformed:Z

    if-nez v2, :cond_2

    .line 846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 847
    .local v0, "distance":I
    if-gez v0, :cond_3

    .line 848
    int-to-float v2, v0

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    div-float/2addr v3, v4

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 852
    :goto_2
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .line 854
    .local v1, "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/ScrollTextView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 855
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/ScrollTextView;->notifyClickListenersAboutClick(I)V

    goto :goto_1

    .line 850
    .end local v1    # "items":I
    :cond_3
    int-to-float v2, v0

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    div-float/2addr v3, v4

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_2

    .line 837
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 701
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 703
    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    .line 706
    :cond_0
    return-void
.end method

.method public refreshCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 259
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 260
    return-void
.end method

.method public refreshCountAndCurrent(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "current"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 278
    return-void
.end method

.method public refreshCurrent(I)V
    .locals 3
    .param p1, "current"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidStart()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidEnd()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 269
    return-void
.end method

.method refreshData(IIII)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "currentItem"    # I
    .param p3, "validStart"    # I
    .param p4, "validEnd"    # I

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->stopScrolling()V

    .line 290
    if-gez p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v1, p1, p3, p4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->update(III)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setViewAdapter(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;)V

    .line 295
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 297
    .local v0, "oldCurrentItem":I
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-eq p2, v1, :cond_2

    .line 298
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 300
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-gt v1, p4, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-lt v1, p1, :cond_2

    .line 301
    :cond_1
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 305
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-eq v0, v1, :cond_3

    .line 306
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-interface {v1, p0, v0, v2}, Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;->onChanged(Landroid/view/View;II)V

    .line 312
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    goto :goto_0
.end method

.method public removeChangingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 472
    return-void
.end method

.method public removeClickingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 541
    return-void
.end method

.method public removeScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 502
    return-void
.end method

.method public scroll(II)V
    .locals 3
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int v0, v1, v2

    .line 1002
    .local v0, "distance":I
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v1, v0, p2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroll(II)V

    .line 1003
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 614
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 615
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x0

    .line 568
    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    .line 573
    .local v0, "itemCount":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_4

    .line 574
    :cond_2
    iget-boolean v4, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v4, :cond_0

    .line 575
    :goto_1
    if-gez p1, :cond_3

    .line 576
    add-int/2addr p1, v0

    goto :goto_1

    .line 578
    :cond_3
    rem-int/2addr p1, v0

    .line 584
    :cond_4
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-eq p1, v4, :cond_0

    .line 585
    if-eqz p2, :cond_7

    .line 586
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    sub-int v1, p1, v4

    .line 587
    .local v1, "itemsToScroll":I
    iget-boolean v4, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v4, :cond_5

    .line 588
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    .line 590
    .local v3, "scroll":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 591
    if-gez v1, :cond_6

    move v1, v3

    .line 594
    .end local v3    # "scroll":I
    :cond_5
    :goto_2
    invoke-virtual {p0, v1, v6}, Lcom/meizu/common/widget/ScrollTextView;->scroll(II)V

    goto :goto_0

    .line 591
    .restart local v3    # "scroll":I
    :cond_6
    neg-int v1, v3

    goto :goto_2

    .line 596
    .end local v1    # "itemsToScroll":I
    .end local v3    # "scroll":I
    :cond_7
    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 598
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 599
    .local v2, "old":I
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 601
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-virtual {p0, v2, v4}, Lcom/meizu/common/widget/ScrollTextView;->notifyChangingListeners(II)V

    .line 603
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 0
    .param p1, "isCyclic"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 634
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 635
    return-void
.end method

.method public setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V
    .locals 4
    .param p1, "dataAdapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .param p2, "lineOffset"    # F
    .param p3, "currentItem"    # I
    .param p4, "count"    # I
    .param p5, "oneScreenCount"    # I
    .param p6, "validStart"    # I
    .param p7, "validEnd"    # I
    .param p8, "cycleEnabled"    # Z

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIDataAdapter(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;)V

    .line 343
    iput p5, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    .line 344
    iput-boolean p8, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 346
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_2

    .line 347
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetY:I

    .line 356
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    if-lt p4, v2, :cond_0

    add-int/lit8 v2, p7, 0x1

    if-lt v2, p4, :cond_0

    if-lez p6, :cond_1

    .line 358
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 362
    :cond_1
    invoke-virtual {p0, p4, p3, p6, p7}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 363
    return-void

    .line 350
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 352
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 353
    .local v0, "density":F
    mul-float v2, p2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetY:I

    goto :goto_0
.end method

.method public setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;III)V
    .locals 9
    .param p1, "dataAdapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .param p2, "currentItem"    # I
    .param p3, "count"    # I
    .param p4, "oneScreenCount"    # I

    .prologue
    .line 324
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v6, 0x0

    add-int/lit8 v7, p3, -0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 326
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 657
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetX:I

    .line 658
    return-void
.end method

.method public setIDataAdapter(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    .line 1173
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 413
    return-void
.end method

.method public setIsDrawFading(Z)V
    .locals 0
    .param p1, "isDrawFading"    # Z

    .prologue
    .line 1202
    iput-boolean p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsDrawFading:Z

    .line 1203
    return-void
.end method

.method public setItemHeight(FF)V
    .locals 2
    .param p1, "selectHeight"    # F
    .param p2, "normalHeight"    # F

    .prologue
    .line 1148
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1149
    return-void
.end method

.method public setNormalItemHeight(F)V
    .locals 3
    .param p1, "normalHeight"    # F

    .prologue
    .line 1164
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1165
    return-void
.end method

.method public setSelectItemHeight(F)V
    .locals 3
    .param p1, "selectHeight"    # F

    .prologue
    .line 1156
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1157
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I

    .prologue
    .line 1099
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    if-ne v0, p2, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1102
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    .line 1103
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    .line 1105
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextPreference(FFFF)V
    .locals 1
    .param p1, "selectedSize"    # F
    .param p2, "normalSize"    # F
    .param p3, "selectHeight"    # F
    .param p4, "normalHeight"    # F

    .prologue
    .line 1117
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1123
    :cond_0
    iput p3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 1124
    iput p4, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 1125
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    .line 1126
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    .line 1128
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->computeFontMetrics()V

    .line 1129
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextSize(FF)V
    .locals 2
    .param p1, "selectedSize"    # F
    .param p2, "normalSize"    # F

    .prologue
    .line 1139
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1140
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1193
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->computeFontMetrics()V

    .line 1194
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 1195
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 432
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    .line 433
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->stopScrolling()V

    .line 1087
    :cond_0
    return-void
.end method
