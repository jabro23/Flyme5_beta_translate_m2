.class public Lcom/meizu/common/widget/GalleryFlow;
.super Lcom/meizu/common/widget/AbsSpinner;
.source "GalleryFlow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/GalleryFlow$LayoutParams;,
        Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;
    }
.end annotation


# static fields
.field private static final AREA_0:I = 0x0

.field private static final AREA_1:I = 0x1

.field private static final AREA_2:I = 0x2

.field private static final AREA_3:I = 0x3

.field private static final AREA_4:I = 0x4

.field private static final AREA_5:I = 0x5

.field private static final AREA_COUNT:I = 0x6

.field private static final FACTOR:F = 0.083333336f

.field private static final PIC_NUMS:I = 0x5

.field private static final PIC_NUMS_OF_SIDE:I = 0x2

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "GalleryFlow"

.field private static final localLOGV:Z


# instance fields
.field private AREA_RANGE:[[I

.field private AREA_RANGE_LENGTH:[I

.field private mAnimationDuration:I

.field private mCenterOfGalleryFlow:I

.field private mCirculate:Z

.field private mContextMenuInfo:Lcom/meizu/common/widget/AdapterView$AdapterContextMenuInfo;

.field private mDelta_1:I

.field private mDelta_2:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mHalfWidth:I

.field private mHasInitial:Z

.field private mHeight:I

.field private mIsFirstScroll:Z

.field private mLeftMost:I

.field private mLength:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPicHeightMid:I

.field private mPicLengthMid:I

.field private mPicLengthS1:I

.field private mPicLengthS2:I

.field private mPicLengthS3:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSuppressSelectionChanged:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GalleryFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 213
    const v0, 0x7f010110

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/GalleryFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/16 v2, 0x5a

    iput v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_1:I

    .line 67
    const/16 v2, 0x1e

    iput v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_2:I

    .line 108
    const/16 v2, 0x15e

    iput v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mAnimationDuration:I

    .line 140
    new-instance v2, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;-><init>(Lcom/meizu/common/widget/GalleryFlow;)V

    iput-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mFlingRunnable:Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;

    .line 146
    new-instance v2, Lcom/meizu/common/widget/GalleryFlow$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/GalleryFlow$1;-><init>(Lcom/meizu/common/widget/GalleryFlow;)V

    iput-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 171
    iput-boolean v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mShouldCallbackDuringFling:Z

    .line 176
    iput-boolean v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mShouldCallbackOnUnselectedItemClick:Z

    .line 204
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mMatrix:Landroid/graphics/Matrix;

    .line 206
    iput-boolean v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    .line 219
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 220
    iget-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 222
    sget-object v2, Lcom/meizu/common/R$styleable;->GalleryFlow:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 224
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    .line 226
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b021b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_1:I

    .line 227
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b021c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_2:I

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "picLength":I
    const/16 v2, 0x12c

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 231
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/GalleryFlow;->initialData(I)V

    .line 232
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    iput-boolean v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mHasInitial:Z

    .line 236
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/GalleryFlow;->setChildrenDrawingOrderEnabled(Z)V

    .line 238
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/GalleryFlow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/GalleryFlow;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/meizu/common/widget/GalleryFlow;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/GalleryFlow;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/GalleryFlow;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/GalleryFlow;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/GalleryFlow;

    .prologue
    .line 55
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/GalleryFlow;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/GalleryFlow;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/GalleryFlow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/GalleryFlow;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Lcom/meizu/common/widget/GalleryFlow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/GalleryFlow;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/meizu/common/widget/GalleryFlow;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/GalleryFlow;)[I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/GalleryFlow;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    return-object v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    .line 1198
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getMeasuredHeight()I

    move-result v3

    .line 1199
    .local v3, "myHeight":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1201
    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    .line 1203
    .local v2, "childTop":I
    iget v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1216
    :goto_2
    return v2

    .line 1198
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getHeight()I

    move-result v3

    goto :goto_0

    .line 1199
    .restart local v3    # "myHeight":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1205
    .restart local v1    # "childHeight":I
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 1206
    goto :goto_2

    .line 1208
    :sswitch_1
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/meizu/common/widget/GalleryFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1210
    .local v0, "availableSpace":I
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1211
    goto :goto_2

    .line 1213
    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 1203
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private correctRealPoint(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 455
    move v2, p1

    .line 457
    .local v2, "indexOfCenterView":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 458
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 459
    if-ne v1, v2, :cond_0

    .line 458
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 463
    .local v3, "view":Landroid/view/View;
    invoke-static {v3}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v0

    .line 464
    .local v0, "areaNum":I
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v3}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 467
    .end local v0    # "areaNum":I
    .end local v1    # "i":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->requestLayout()V

    .line 468
    return-void
.end method

.method private detachOffScreenChildren(Z)V
    .locals 13
    .param p1, "toLeft"    # Z

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 785
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v6

    .line 786
    .local v6, "numChildren":I
    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    .line 787
    .local v3, "firstPosition":I
    const/4 v7, 0x0

    .line 788
    .local v7, "start":I
    const/4 v2, 0x0

    .line 790
    .local v2, "count":I
    if-eqz p1, :cond_3

    .line 791
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_0

    .line 792
    move v5, v4

    .line 793
    .local v5, "n":I
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 794
    .local v0, "child1":Landroid/view/View;
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 795
    .local v1, "child2":Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v9, v9, v11

    aget v9, v9, v10

    if-ne v8, v9, :cond_0

    invoke-static {v1}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v9, v9, v11

    aget v9, v9, v10

    if-ne v8, v9, :cond_0

    .line 796
    move v7, v5

    .line 797
    add-int/lit8 v2, v2, 0x1

    .line 798
    iget-object v8, p0, Lcom/meizu/common/widget/GalleryFlow;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    add-int v9, v3, v5

    invoke-virtual {v8, v9, v0}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 791
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 803
    .end local v0    # "child1":Landroid/view/View;
    .end local v1    # "child2":Landroid/view/View;
    .end local v5    # "n":I
    :cond_0
    const/4 v7, 0x0

    .line 819
    :cond_1
    invoke-virtual {p0, v7, v2}, Lcom/meizu/common/widget/GalleryFlow;->detachViewsFromParent(II)V

    .line 821
    if-eqz p1, :cond_2

    .line 822
    iget v8, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    add-int/2addr v8, v2

    iput v8, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    .line 823
    iget-boolean v8, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    iget v9, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    invoke-direct {p0, v8, v9}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v8

    iput v8, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    .line 825
    :cond_2
    return-void

    .line 805
    .end local v4    # "i":I
    :cond_3
    add-int/lit8 v4, v6, -0x1

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 806
    move v5, v4

    .line 807
    .restart local v5    # "n":I
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 808
    .restart local v0    # "child1":Landroid/view/View;
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 809
    .restart local v1    # "child2":Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v9, v9, v12

    aget v9, v9, v10

    if-ne v8, v9, :cond_1

    invoke-static {v1}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v9, v9, v12

    aget v9, v9, v10

    if-ne v8, v9, :cond_1

    .line 810
    move v7, v5

    .line 811
    add-int/lit8 v2, v2, 0x1

    .line 812
    iget-object v8, p0, Lcom/meizu/common/widget/GalleryFlow;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    add-int v9, v3, v5

    invoke-virtual {v8, v9, v0}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 805
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1486
    const/4 v6, 0x0

    .line 1488
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1489
    iget-boolean v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchPosition:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v3

    .line 1490
    .local v3, "downTouchPosition":I
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchView:Landroid/view/View;

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1494
    .end local v3    # "downTouchPosition":I
    :cond_0
    if-nez v6, :cond_1

    .line 1495
    new-instance v0, Lcom/meizu/common/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/meizu/common/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mContextMenuInfo:Lcom/meizu/common/widget/AdapterView$AdapterContextMenuInfo;

    .line 1496
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1499
    :cond_1
    if-eqz v6, :cond_2

    .line 1500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->performHapticFeedback(I)Z

    .line 1503
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 1420
    if-eqz p1, :cond_0

    .line 1421
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1424
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->setPressed(Z)V

    .line 1425
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1429
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1430
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1429
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1433
    :cond_0
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/GalleryFlow;->setPressed(Z)V

    .line 1434
    return-void
.end method

.method private fillToGalleryLeftLtr()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 984
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 988
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 989
    iget v6, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    add-int/lit8 v2, v6, -0x1

    .line 990
    .local v2, "curPosition":I
    invoke-static {v4}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v0

    .line 991
    .local v0, "areaNum":I
    invoke-static {v4}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v7, v7, v0

    aget v7, v7, v9

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    aget v7, v7, v0

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    div-float v5, v6, v7

    .line 992
    .local v5, "scale":F
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 993
    iget-boolean v6, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    if-eqz v6, :cond_2

    .line 998
    :cond_0
    if-nez v3, :cond_4

    .line 1000
    invoke-static {v4}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v7, v7, v10

    aget v7, v7, v9

    if-le v6, v7, :cond_1

    .line 1001
    iget-object v6, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v6, v6, v10

    aget v1, v6, v9

    .line 1009
    .local v1, "curCenter":I
    :goto_1
    iget v6, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    add-int/2addr v7, v1

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-direct {p0, v2, v6, v7, v9}, Lcom/meizu/common/widget/GalleryFlow;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 1011
    iput v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    .line 1012
    add-int/lit8 v2, v2, -0x1

    .line 992
    .end local v1    # "curCenter":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 994
    :cond_2
    if-gez v2, :cond_0

    .line 1020
    .end local v0    # "areaNum":I
    .end local v3    # "i":I
    .end local v5    # "scale":F
    :cond_3
    :goto_2
    return-void

    .line 1006
    .restart local v0    # "areaNum":I
    .restart local v3    # "i":I
    .restart local v5    # "scale":F
    :cond_4
    iget-object v6, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v6, v6, v3

    aget v6, v6, v9

    iget-object v7, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    aget v7, v7, v3

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v1, v6, v7

    .restart local v1    # "curCenter":I
    goto :goto_1

    .line 1016
    .end local v0    # "areaNum":I
    .end local v1    # "curCenter":I
    .end local v2    # "curPosition":I
    .end local v3    # "i":I
    .end local v5    # "scale":F
    :cond_5
    const/4 v2, 0x0

    .line 1017
    .restart local v2    # "curPosition":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getPaddingRight()I

    move-result v7

    sub-int v1, v6, v7

    .line 1018
    .restart local v1    # "curCenter":I
    iput-boolean v10, p0, Lcom/meizu/common/widget/GalleryFlow;->mShouldStopFling:Z

    goto :goto_2
.end method

.method private fillToGalleryRightLtr()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1023
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v4

    .line 1025
    .local v4, "numChildren":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1029
    .local v5, "prevIterationView":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 1030
    iget v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    add-int v2, v7, v4

    .line 1031
    .local v2, "curPosition":I
    invoke-static {v5}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v0

    .line 1032
    .local v0, "areaNum":I
    invoke-static {v5}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v8, v8, v0

    aget v8, v8, v10

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    aget v8, v8, v0

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    div-float v6, v7, v8

    .line 1033
    .local v6, "scale":F
    add-int/lit8 v3, v0, 0x1

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x6

    if-ge v3, v7, :cond_2

    .line 1034
    iget-boolean v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    if-eqz v7, :cond_1

    .line 1039
    :cond_0
    const/4 v7, 0x5

    if-ne v3, v7, :cond_3

    .line 1040
    iget-object v7, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v7, v7, v3

    aget v1, v7, v10

    .line 1045
    .local v1, "curCenter":I
    :goto_1
    iget v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    sub-int v8, v1, v8

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-direct {p0, v2, v7, v8, v11}, Lcom/meizu/common/widget/GalleryFlow;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v5

    .line 1047
    add-int/lit8 v2, v2, 0x1

    .line 1033
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1035
    .end local v1    # "curCenter":I
    :cond_1
    iget v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-lt v2, v7, :cond_0

    .line 1055
    .end local v0    # "areaNum":I
    .end local v3    # "i":I
    .end local v6    # "scale":F
    :cond_2
    :goto_2
    return-void

    .line 1042
    .restart local v0    # "areaNum":I
    .restart local v3    # "i":I
    .restart local v6    # "scale":F
    :cond_3
    iget-object v7, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v7, v7, v3

    aget v7, v7, v10

    iget-object v8, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    aget v8, v8, v3

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int v1, v7, v8

    .restart local v1    # "curCenter":I
    goto :goto_1

    .line 1051
    .end local v0    # "areaNum":I
    .end local v1    # "curCenter":I
    .end local v2    # "curPosition":I
    .end local v3    # "i":I
    .end local v6    # "scale":F
    :cond_4
    iget v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    add-int/lit8 v2, v7, -0x1

    .restart local v2    # "curPosition":I
    iput v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    .line 1052
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getPaddingLeft()I

    move-result v1

    .line 1053
    .restart local v1    # "curCenter":I
    iput-boolean v11, p0, Lcom/meizu/common/widget/GalleryFlow;->mShouldStopFling:Z

    goto :goto_2
.end method

.method private getCenterOfGalleryFlow()I
    .locals 2

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfViewX(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 770
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfViewY(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getCurAreaNum(I)I
    .locals 4
    .param p1, "center"    # I

    .prologue
    const/4 v1, 0x0

    .line 1063
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 1064
    iget-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ge p1, v2, :cond_0

    .line 1068
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1063
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1068
    goto :goto_1
.end method

.method private getCurLengthFromX(I)F
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfGalleryFlow()I

    move-result v0

    .line 670
    .local v0, "centerOfGallery":I
    sub-int v2, v0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 671
    .local v1, "delta":I
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mHalfWidth:I

    if-le v1, v2, :cond_0

    .line 672
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS2:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 674
    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mLength:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    const v3, 0x3daaaaab

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    goto :goto_0
.end method

.method private getTransitionPosition(ZI)I
    .locals 3
    .param p1, "isCirculate"    # Z
    .param p2, "position"    # I

    .prologue
    .line 1121
    if-nez p1, :cond_0

    move v0, p2

    .line 1128
    .end local p2    # "position":I
    .local v0, "position":I
    :goto_0
    return v0

    .line 1125
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-eqz v1, :cond_1

    .line 1126
    if-lez p2, :cond_2

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    rem-int/2addr p2, v1

    :cond_1
    :goto_1
    move v0, p2

    .line 1128
    .end local p2    # "position":I
    .restart local v0    # "position":I
    goto :goto_0

    .line 1126
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    rem-int v2, p2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    rem-int p2, v1, v2

    goto :goto_1
.end method

.method private initialData(I)V
    .locals 5
    .param p1, "length"    # I

    .prologue
    const/4 v4, 0x1

    const v2, 0x3daaaaab

    .line 241
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    .line 242
    iput p1, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicHeightMid:I

    .line 244
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mLength:I

    .line 246
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mLength:I

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_1:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS1:I

    .line 247
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mLength:I

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_1:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS1:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_2:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS2:I

    .line 248
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS2:I

    add-int/lit8 v0, v0, -0xf

    iput v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS3:I

    .line 250
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_1:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS1:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_2:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mHalfWidth:I

    .line 252
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mHalfWidth:I

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS2:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mWidth:I

    .line 253
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicHeightMid:I

    iput v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mHeight:I

    .line 255
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v4, v0, v1

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS1:I

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_2:I

    add-int/2addr v1, v2

    aput v1, v0, v4

    const/4 v1, 0x2

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_1:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_1:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS1:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_2:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    iput-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    .line 256
    return-void
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 1089
    iget-boolean v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 1090
    iget-object v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 1091
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1096
    .local v2, "childLeft":I
    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mRightMost:I

    .line 1098
    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mLeftMost:I

    .line 1101
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/meizu/common/widget/GalleryFlow;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1111
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .local v1, "child":Landroid/view/View;
    :goto_0
    return-object v1

    .line 1105
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-boolean v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    invoke-direct {p0, v3, p1}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result p1

    .line 1106
    iget-object v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1109
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/meizu/common/widget/GalleryFlow;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1111
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 21
    .param p1, "offset"    # I

    .prologue
    .line 505
    if-nez p1, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    if-gez p1, :cond_2

    const/4 v14, 0x1

    .line 511
    .local v14, "toLeft":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    div-int/lit8 v10, v17, 0x2

    .line 512
    .local v10, "mostCloseCenterViewIndex":I
    const v4, 0x7fffffff

    .line 513
    .local v4, "closestEdgeDistance":I
    const/4 v7, -0x1

    .line 514
    .local v7, "indexOfCenterView":I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfGalleryFlow()I

    move-result v3

    .line 515
    .local v3, "centerOfView":I
    const/4 v13, 0x0

    .line 518
    .local v13, "scale":F
    if-eqz v14, :cond_b

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_3

    .line 521
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 522
    .local v15, "view":Landroid/view/View;
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    sub-int v5, v17, v3

    .line 523
    .local v5, "delta":I
    if-ltz v5, :cond_3

    if-ge v5, v4, :cond_3

    .line 524
    move v10, v6

    .line 525
    move v4, v5

    .line 520
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 509
    .end local v3    # "centerOfView":I
    .end local v4    # "closestEdgeDistance":I
    .end local v5    # "delta":I
    .end local v6    # "i":I
    .end local v7    # "indexOfCenterView":I
    .end local v10    # "mostCloseCenterViewIndex":I
    .end local v13    # "scale":F
    .end local v14    # "toLeft":Z
    .end local v15    # "view":Landroid/view/View;
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 531
    .restart local v3    # "centerOfView":I
    .restart local v4    # "closestEdgeDistance":I
    .restart local v6    # "i":I
    .restart local v7    # "indexOfCenterView":I
    .restart local v10    # "mostCloseCenterViewIndex":I
    .restart local v13    # "scale":F
    .restart local v14    # "toLeft":Z
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 534
    .local v9, "mostCloseCenterView":Landroid/view/View;
    invoke-static {v9}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    add-int v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 536
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    div-float v13, v17, v18

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    :goto_3
    if-ltz v6, :cond_16

    .line 539
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 541
    .restart local v15    # "view":Landroid/view/View;
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v2

    .line 542
    .local v2, "areaNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_5

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v2, v0, :cond_5

    .line 538
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 545
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    move-object/from16 v17, v0

    aget v17, v17, v2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 546
    .local v12, "offers":I
    invoke-virtual {v15, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 548
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v2, :cond_6

    .line 549
    neg-int v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 552
    :cond_6
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v3, :cond_4

    .line 553
    move v7, v6

    goto :goto_4

    .line 559
    .end local v2    # "areaNum":I
    .end local v12    # "offers":I
    .end local v15    # "view":Landroid/view/View;
    :cond_7
    invoke-static {v9}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    add-int v17, v17, p1

    sub-int v17, v17, v3

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    div-float v13, v17, v18

    .line 560
    const/4 v6, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-gt v6, v0, :cond_16

    .line 561
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 562
    .restart local v15    # "view":Landroid/view/View;
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v2

    .line 563
    .restart local v2    # "areaNum":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget v17, v17, v18

    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v18

    sub-int v11, v17, v18

    .line 565
    .local v11, "offer":I
    invoke-virtual {v15, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 572
    :goto_6
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v3, :cond_8

    .line 573
    move v7, v6

    .line 560
    .end local v11    # "offer":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 566
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_a

    const/16 v17, 0x5

    move/from16 v0, v17

    if-eq v2, v0, :cond_8

    .line 569
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, -0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    move-object/from16 v18, v0

    aget-object v18, v18, v2

    const/16 v19, 0x0

    aget v18, v18, v19

    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v19

    sub-int v18, v18, v19

    add-int v11, v17, v18

    .line 570
    .restart local v11    # "offer":I
    invoke-virtual {v15, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_6

    .line 579
    .end local v2    # "areaNum":I
    .end local v6    # "i":I
    .end local v9    # "mostCloseCenterView":Landroid/view/View;
    .end local v11    # "offer":I
    .end local v15    # "view":Landroid/view/View;
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-gt v6, v0, :cond_c

    .line 580
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 581
    .restart local v15    # "view":Landroid/view/View;
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    sub-int v5, v3, v17

    .line 582
    .restart local v5    # "delta":I
    if-ltz v5, :cond_c

    if-ge v5, v4, :cond_c

    .line 583
    move v10, v6

    .line 584
    move v4, v5

    .line 579
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 590
    .end local v5    # "delta":I
    .end local v15    # "view":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 593
    .restart local v9    # "mostCloseCenterView":Landroid/view/View;
    invoke-static {v9}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v3, :cond_d

    invoke-static {v9}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    add-int v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 595
    :cond_d
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    div-float v13, v17, v18

    .line 597
    const/4 v6, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-gt v6, v0, :cond_16

    .line 598
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 599
    .restart local v15    # "view":Landroid/view/View;
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v2

    .line 600
    .restart local v2    # "areaNum":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_f

    if-nez v6, :cond_f

    .line 597
    :cond_e
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 603
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    move-object/from16 v17, v0

    aget v17, v17, v2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 604
    .restart local v12    # "offers":I
    invoke-virtual {v15, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 606
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v2, :cond_10

    .line 607
    neg-int v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 610
    :cond_10
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v3, :cond_e

    .line 611
    move v7, v6

    goto :goto_9

    .line 617
    .end local v2    # "areaNum":I
    .end local v12    # "offers":I
    .end local v15    # "view":Landroid/view/View;
    :cond_11
    invoke-static {v9}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    add-int v17, v17, p1

    sub-int v17, v17, v3

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    div-float v13, v17, v18

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    :goto_a
    if-ltz v6, :cond_16

    .line 619
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 620
    .restart local v15    # "view":Landroid/view/View;
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v2

    .line 622
    .restart local v2    # "areaNum":I
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v2, v0, :cond_13

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    move-object/from16 v17, v0

    const/16 v18, 0x5

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget v17, v17, v18

    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v18

    sub-int v11, v17, v18

    .line 624
    .restart local v11    # "offer":I
    invoke-virtual {v15, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 618
    .end local v11    # "offer":I
    :cond_12
    :goto_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    .line 625
    :cond_13
    if-nez v6, :cond_14

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v2, v0, :cond_12

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_15

    const/16 v17, 0x5

    move/from16 v0, v17

    if-eq v2, v0, :cond_12

    .line 628
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    move-object/from16 v18, v0

    aget-object v18, v18, v2

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v19

    sub-int v18, v18, v19

    add-int v11, v17, v18

    .line 629
    .restart local v11    # "offer":I
    invoke-virtual {v15, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_b

    .line 637
    .end local v2    # "areaNum":I
    .end local v11    # "offer":I
    .end local v15    # "view":Landroid/view/View;
    :cond_16
    if-eqz v14, :cond_18

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 639
    .restart local v15    # "view":Landroid/view/View;
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v2

    .line 640
    .restart local v2    # "areaNum":I
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v2, v0, :cond_17

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 642
    .local v16, "view2":Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    move-object/from16 v17, v0

    const/16 v18, 0x4

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    move-object/from16 v18, v0

    const/16 v19, 0x5

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v18, v18, v19

    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v19

    sub-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 658
    .end local v16    # "view2":Landroid/view/View;
    :cond_17
    :goto_c
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    .line 659
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/meizu/common/widget/GalleryFlow;->correctRealPoint(I)V

    goto/16 :goto_0

    .line 647
    .end local v2    # "areaNum":I
    .end local v15    # "view":Landroid/view/View;
    :cond_18
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 648
    .restart local v15    # "view":Landroid/view/View;
    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v2

    .line 649
    .restart local v2    # "areaNum":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_17

    .line 650
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 651
    .restart local v16    # "view2":Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    invoke-static {v15}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-int v18, v18, v19

    add-int v8, v17, v18

    .line 653
    .local v8, "lent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto/16 :goto_c
.end method

.method private onFinishedMovement()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 847
    iget-boolean v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 848
    iput-boolean v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mSuppressSelectionChanged:Z

    .line 851
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSpinner;->selectionChanged()V

    .line 853
    :cond_0
    iput v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedCenterOffset:I

    .line 854
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->invalidate()V

    .line 855
    return-void
.end method

.method private scaleView(Landroid/view/View;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 697
    const/4 v1, 0x0

    .line 698
    .local v1, "alpha":I
    invoke-static/range {p1 .. p1}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v2

    .line 699
    .local v2, "centerX":I
    invoke-static/range {p1 .. p1}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewY(Landroid/view/View;)I

    move-result v3

    .line 700
    .local v3, "centerY":I
    const/4 v11, 0x0

    .line 703
    .local v11, "width":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/GalleryFlow;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 705
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_4

    .line 706
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 707
    .local v10, "view2":Landroid/view/View;
    if-eqz v10, :cond_3

    invoke-static {v10}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 708
    invoke-static {v10}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    div-float v7, v12, v13

    .line 709
    .local v7, "scales":F
    const/high16 v12, 0x41f00000    # 30.0f

    mul-float/2addr v12, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS3:I

    mul-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v11, v12, v13

    .line 710
    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x42cc0000    # 102.0f

    mul-float/2addr v13, v7

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 727
    .end local v7    # "scales":F
    .end local v10    # "view2":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/GalleryFlow;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/GalleryFlow;->mPicHeightMid:I

    int-to-float v13, v13

    div-float v13, v11, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/GalleryFlow;->mPicHeightMid:I

    int-to-float v14, v14

    div-float v14, v11, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 728
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/GalleryFlow;->mMatrix:Landroid/graphics/Matrix;

    neg-int v13, v2

    int-to-float v13, v13

    neg-int v14, v3

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 729
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/GalleryFlow;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v13, v2

    int-to-float v14, v3

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 733
    const v12, 0x7f0d0010

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 734
    .local v8, "textView":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfGalleryFlow()I

    move-result v12

    sub-int v12, v2, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 735
    .local v5, "delta":I
    if-eqz v8, :cond_0

    .line 736
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    if-ge v5, v12, :cond_7

    .line 737
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v14, v15

    div-float/2addr v13, v14

    sub-float v9, v12, v13

    .line 739
    .local v9, "txtAlpha":F
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 746
    .end local v9    # "txtAlpha":F
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_2

    move-object/from16 v6, p1

    .line 747
    check-cast v6, Landroid/widget/FrameLayout;

    .line 748
    .local v6, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 749
    .local v4, "db":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 750
    const/high16 v12, 0x42dc0000    # 110.0f

    int-to-float v13, v5

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/GalleryFlow;->mHalfWidth:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 752
    :cond_1
    if-eqz v4, :cond_2

    .line 753
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 754
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 757
    .end local v4    # "db":Landroid/graphics/drawable/Drawable;
    .end local v6    # "fl":Landroid/widget/FrameLayout;
    :cond_2
    return-void

    .line 712
    .end local v5    # "delta":I
    .end local v8    # "textView":Landroid/widget/TextView;
    .restart local v10    # "view2":Landroid/view/View;
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/GalleryFlow;->getCurLengthFromX(I)F

    move-result v11

    goto/16 :goto_0

    .line 715
    .end local v10    # "view2":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_6

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 717
    .restart local v10    # "view2":Landroid/view/View;
    if-eqz v10, :cond_5

    invoke-static {v10}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_5

    .line 718
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    const/4 v13, 0x5

    aget-object v12, v12, v13

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-static {v10}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    div-float v7, v12, v13

    .line 719
    .restart local v7    # "scales":F
    const/high16 v12, 0x41f00000    # 30.0f

    mul-float/2addr v12, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthS3:I

    mul-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v11, v12, v13

    .line 720
    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x42cc0000    # 102.0f

    mul-float/2addr v13, v7

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 721
    goto/16 :goto_0

    .line 722
    .end local v7    # "scales":F
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/GalleryFlow;->getCurLengthFromX(I)F

    move-result v11

    goto/16 :goto_0

    .line 725
    .end local v10    # "view2":Landroid/view/View;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/GalleryFlow;->getCurLengthFromX(I)F

    move-result v11

    goto/16 :goto_0

    .line 741
    .restart local v5    # "delta":I
    .restart local v8    # "textView":Landroid/widget/TextView;
    :cond_7
    const/16 v12, 0x8

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v1

    .line 836
    .local v1, "selectedCenter":I
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfGalleryFlow()I

    move-result v2

    .line 838
    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    .line 839
    .local v0, "scrollAmount":I
    if-eqz v0, :cond_2

    .line 840
    iget-object v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mFlingRunnable:Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 842
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 7
    .param p1, "childPosition"    # I

    .prologue
    .line 1595
    iget-boolean v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    invoke-direct {p0, v4, p1}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result p1

    .line 1596
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1598
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1599
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v2

    .line 1600
    .local v2, "childCount":I
    invoke-static {v1}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/meizu/common/widget/GalleryFlow;->getCurAreaNum(I)I

    move-result v0

    .line 1601
    .local v0, "areaNum":I
    rsub-int/lit8 v4, v0, 0x3

    iget-object v5, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    mul-int v3, v4, v5

    .line 1602
    .local v3, "distance":I
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mFlingRunnable:Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;

    invoke-virtual {v4, v3}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->startUsingDistance(I)V

    .line 1603
    const/4 v4, 0x1

    .line 1606
    .end local v0    # "areaNum":I
    .end local v2    # "childCount":I
    .end local v3    # "distance":I
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 870
    iget-object v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    .line 871
    .local v7, "selView":Landroid/view/View;
    iget-object v8, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfGalleryFlow()I

    move-result v3

    .line 876
    .local v3, "galleryCenter":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 881
    :cond_2
    const v2, 0x7fffffff

    .line 882
    .local v2, "closestEdgeDistance":I
    const/4 v6, 0x0

    .line 883
    .local v6, "newSelectedChildIndex":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    .line 885
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 887
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 889
    move v6, v4

    .line 901
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    iget v8, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    add-int v5, v8, v6

    .line 903
    .local v5, "newPos":I
    iget v8, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 904
    iget-boolean v8, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    invoke-direct {p0, v8, v5}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v5

    .line 905
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/GalleryFlow;->setSelectedPositionInt(I)V

    .line 906
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/GalleryFlow;->setNextSelectedPositionInt(I)V

    .line 907
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->checkSelectionChanged()V

    goto :goto_0

    .line 893
    .end local v5    # "newPos":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 895
    .local v1, "childClosestEdgeDistance":I
    if-ge v1, v2, :cond_5

    .line 896
    move v2, v1

    .line 897
    move v6, v4

    .line 883
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 1147
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1149
    .local v7, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v7, :cond_0

    .line 1150
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;

    .line 1157
    .local v6, "lp":Lcom/meizu/common/widget/GalleryFlow$LayoutParams;
    :goto_0
    iget v9, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicHeightMid:I

    iput v9, v6, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;->width:I

    iput v9, v6, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;->height:I

    .line 1158
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1160
    if-eqz p4, :cond_2

    const/4 v9, -0x1

    :goto_1
    invoke-virtual {p0, p1, v9, v6}, Lcom/meizu/common/widget/GalleryFlow;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1162
    if-nez p2, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p1, v9}, Landroid/view/View;->setSelected(Z)V

    .line 1165
    iget v9, p0, Lcom/meizu/common/widget/GalleryFlow;->mHeightMeasureSpec:I

    iget-object v10, p0, Lcom/meizu/common/widget/GalleryFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/meizu/common/widget/GalleryFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget v11, v6, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;->height:I

    invoke-static {v9, v10, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1167
    .local v1, "childHeightSpec":I
    iget v9, p0, Lcom/meizu/common/widget/GalleryFlow;->mWidthMeasureSpec:I

    iget-object v10, p0, Lcom/meizu/common/widget/GalleryFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/meizu/common/widget/GalleryFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    iget v11, v6, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;->width:I

    invoke-static {v9, v10, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1170
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1176
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Lcom/meizu/common/widget/GalleryFlow;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1177
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v0, v4, v9

    .line 1179
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1180
    .local v8, "width":I
    if-eqz p4, :cond_4

    .line 1181
    move v2, p3

    .line 1182
    .local v2, "childLeft":I
    add-int v3, v2, v8

    .line 1187
    .local v3, "childRight":I
    :goto_3
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1188
    return-void

    .line 1151
    .end local v0    # "childBottom":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidthSpec":I
    .end local v6    # "lp":Lcom/meizu/common/widget/GalleryFlow$LayoutParams;
    .end local v8    # "width":I
    :cond_0
    instance-of v9, v7, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;

    if-eqz v9, :cond_1

    move-object v6, v7

    .line 1152
    check-cast v6, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;

    .restart local v6    # "lp":Lcom/meizu/common/widget/GalleryFlow$LayoutParams;
    goto :goto_0

    .line 1154
    .end local v6    # "lp":Lcom/meizu/common/widget/GalleryFlow$LayoutParams;
    :cond_1
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/GalleryFlow;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;

    .restart local v6    # "lp":Lcom/meizu/common/widget/GalleryFlow$LayoutParams;
    goto :goto_0

    .line 1160
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1162
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 1184
    .restart local v0    # "childBottom":I
    .restart local v1    # "childHeightSpec":I
    .restart local v4    # "childTop":I
    .restart local v5    # "childWidthSpec":I
    .restart local v8    # "width":I
    :cond_4
    sub-int v2, p3, v8

    .line 1185
    .restart local v2    # "childLeft":I
    move v3, p3

    .restart local v3    # "childRight":I
    goto :goto_3
.end method

.method private updateSelectedItemMetadata()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1630
    iget-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    .line 1632
    .local v2, "oldSelectedChild":Landroid/view/View;
    iget-boolean v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    iget v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iget v5, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v1

    .line 1633
    .local v1, "delta":I
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    .line 1634
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1638
    :cond_1
    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    .line 1639
    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 1641
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1642
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1647
    :cond_2
    if-eqz v2, :cond_0

    if-eq v2, v0, :cond_0

    .line 1650
    invoke-virtual {v2, v6}, Landroid/view/View;->setSelected(Z)V

    .line 1654
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 324
    instance-of v0, p1, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1509
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1452
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 1443
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 679
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 681
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/GalleryFlow;->scaleView(Landroid/view/View;)V

    .line 683
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 684
    .local v2, "saveCount":I
    iget-object v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 685
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/AbsSpinner;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 686
    .local v1, "ret":Z
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 688
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 689
    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 690
    return v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 342
    new-instance v0, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 334
    new-instance v0, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;

    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 329
    new-instance v0, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;

    invoke-direct {v0, p1}, Lcom/meizu/common/widget/GalleryFlow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1675
    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1676
    .local v0, "selectedIndex":I
    iget-boolean v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    invoke-direct {p0, v1, v0}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v0

    .line 1678
    if-gez v0, :cond_1

    .line 1688
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 1680
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1682
    goto :goto_0

    .line 1683
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1685
    add-int/lit8 v1, p1, -0x1

    sub-int v2, p2, v0

    sub-int p2, v1, v2

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mContextMenuInfo:Lcom/meizu/common/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    .prologue
    const/4 v5, 0x0

    .line 478
    if-eqz p1, :cond_1

    iget v6, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    add-int/lit8 v4, v6, -0x1

    .line 479
    .local v4, "extremeItemPosition":I
    :goto_0
    iget v6, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    sub-int v6, v4, v6

    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 481
    .local v2, "extremeChild":Landroid/view/View;
    if-nez v2, :cond_2

    move v5, p2

    .line 494
    :cond_0
    :goto_1
    return v5

    .end local v2    # "extremeChild":Landroid/view/View;
    .end local v4    # "extremeItemPosition":I
    :cond_1
    move v4, v5

    .line 478
    goto :goto_0

    .line 485
    .restart local v2    # "extremeChild":Landroid/view/View;
    .restart local v4    # "extremeItemPosition":I
    :cond_2
    invoke-static {v2}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v3

    .line 487
    .local v3, "extremeChildCenter":I
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfGalleryFlow()I

    move-result v1

    .line 489
    .local v1, "centerOfView":I
    if-eq v3, v1, :cond_0

    .line 493
    sub-int v0, v1, v3

    .line 494
    .local v0, "centerDifference":I
    if-eqz p1, :cond_3

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method layout(IZ)V
    .locals 5
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 924
    iget-boolean v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mDataChanged:Z

    if-eqz v2, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->handleDataChanged()V

    .line 929
    :cond_0
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-nez v2, :cond_1

    .line 930
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->resetList()V

    .line 981
    :goto_0
    return-void

    .line 935
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mNextSelectedPosition:I

    if-ltz v2, :cond_2

    .line 936
    iget-boolean v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mNextSelectedPosition:I

    invoke-direct {p0, v2, v3}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mNextSelectedPosition:I

    .line 937
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mNextSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/GalleryFlow;->setSelectedPositionInt(I)V

    .line 941
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->recycleAllViews()V

    .line 945
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->detachAllViewsFromParent()V

    .line 951
    iput v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mRightMost:I

    .line 952
    iput v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mLeftMost:I

    .line 960
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iput v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    .line 961
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v4, v4, v3}, Lcom/meizu/common/widget/GalleryFlow;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v0

    .line 964
    .local v0, "sel":Landroid/view/View;
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfGalleryFlow()I

    move-result v2

    invoke-static {v0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedCenterOffset:I

    add-int v1, v2, v3

    .line 965
    .local v1, "selectedOffset":I
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 967
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->fillToGalleryRightLtr()V

    .line 968
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->fillToGalleryLeftLtr()V

    .line 971
    iget-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->clear()V

    .line 973
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->invalidate()V

    .line 974
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->checkSelectionChanged()V

    .line 976
    iput-boolean v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mDataChanged:Z

    .line 977
    iput-boolean v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mNeedSync:Z

    .line 978
    iget-boolean v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    .line 979
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/GalleryFlow;->setNextSelectedPositionInt(I)V

    .line 980
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1586
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-lez v0, :cond_0

    .line 1587
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->scrollToChild(I)Z

    .line 1588
    const/4 v0, 0x1

    .line 1590
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    .line 1577
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-lez v0, :cond_0

    .line 1578
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->scrollToChild(I)Z

    .line 1579
    const/4 v0, 0x1

    .line 1581
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->onUp()V

    .line 1400
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1322
    iget-object v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mFlingRunnable:Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->stop(Z)V

    .line 1325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/GalleryFlow;->pointToPosition(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchPosition:I

    .line 1327
    iget-boolean v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchPosition:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v0

    .line 1328
    .local v0, "delta":I
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchView:Landroid/view/View;

    .line 1329
    iget-object v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1334
    :cond_0
    iput-boolean v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mIsFirstScroll:Z

    .line 1337
    return v4
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    .line 1262
    iget-boolean v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1269
    iget-boolean v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSuppressSelectionChanged:Z

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mFlingRunnable:Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->startUsingVelocity(I)V

    .line 1275
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1694
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/common/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1701
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1703
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1706
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1710
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1711
    const-class v0, Lcom/meizu/common/widget/GalleryFlow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1712
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 1716
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1717
    const-class v1, Lcom/meizu/common/widget/GalleryFlow;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1718
    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1719
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1720
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1721
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1723
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    if-lez v0, :cond_1

    .line 1724
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1727
    :cond_1
    return-void

    .line 1718
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1518
    sparse-switch p1, :sswitch_data_0

    .line 1538
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 1521
    :sswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1522
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->playSoundEffect(I)V

    goto :goto_1

    .line 1527
    :sswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1528
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/GalleryFlow;->playSoundEffect(I)V

    goto :goto_1

    .line 1534
    :sswitch_2
    iput-boolean v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1518
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1543
    sparse-switch p1, :sswitch_data_0

    .line 1573
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1547
    :sswitch_0
    iget-boolean v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mReceivedInvokeKeyDown:Z

    if-eqz v2, :cond_0

    .line 1548
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-lez v2, :cond_0

    .line 1550
    iget-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/GalleryFlow;->dispatchPress(Landroid/view/View;)V

    .line 1551
    new-instance v2, Lcom/meizu/common/widget/GalleryFlow$2;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/GalleryFlow$2;-><init>(Lcom/meizu/common/widget/GalleryFlow;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/meizu/common/widget/GalleryFlow;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1558
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1560
    .local v0, "selectedIndex":I
    iget-boolean v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v1

    .line 1561
    .local v1, "selectedPosition":I
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v2, v1, v4, v5}, Lcom/meizu/common/widget/GalleryFlow;->performItemClick(Landroid/view/View;IJ)Z

    .line 1567
    .end local v0    # "selectedIndex":I
    .end local v1    # "selectedPosition":I
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mReceivedInvokeKeyDown:Z

    .line 1569
    const/4 v2, 0x1

    goto :goto_0

    .line 1543
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 364
    invoke-super/range {p0 .. p5}, Lcom/meizu/common/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 370
    iput-boolean v6, p0, Lcom/meizu/common/widget/GalleryFlow;->mInLayout:Z

    .line 371
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfGalleryFlow()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    .line 372
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v7, [I

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mHalfWidth:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v5

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mHalfWidth:I

    sub-int/2addr v2, v3

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [I

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mHalfWidth:I

    sub-int/2addr v2, v3

    aput v2, v1, v5

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_1:I

    sub-int/2addr v2, v3

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [I

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_1:I

    sub-int/2addr v2, v3

    aput v2, v1, v5

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    aput v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v7, [I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    aput v3, v2, v5

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    iget v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_1:I

    add-int/2addr v3, v4

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    iget v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicLengthMid:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mDelta_1:I

    add-int/2addr v3, v4

    aput v3, v2, v5

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    iget v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mHalfWidth:I

    add-int/2addr v3, v4

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    iget v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mHalfWidth:I

    add-int/2addr v3, v4

    aput v3, v2, v5

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mCenterOfGalleryFlow:I

    iget v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mHalfWidth:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE:[[I

    .line 379
    invoke-virtual {p0, v5, v5}, Lcom/meizu/common/widget/GalleryFlow;->layout(IZ)V

    .line 380
    iput-boolean v5, p0, Lcom/meizu/common/widget/GalleryFlow;->mInLayout:Z

    .line 381
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1408
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/AbsSpinner;->onMeasure(II)V

    .line 387
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mWidth:I

    invoke-static {v0, p1, v2}, Lcom/meizu/common/widget/GalleryFlow;->resolveSizeAndState(III)I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mHeight:I

    invoke-static {v1, p2, v2}, Lcom/meizu/common/widget/GalleryFlow;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->setMeasuredDimension(II)V

    .line 389
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1291
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1295
    iget-boolean v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_3

    .line 1296
    iget-boolean v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1302
    iget-boolean v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mSuppressSelectionChanged:Z

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/common/widget/GalleryFlow;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1309
    :cond_1
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 1310
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    aget v0, v0, v5

    int-to-float p3, v0

    .line 1312
    :cond_2
    :goto_1
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->trackMotionScroll(I)V

    .line 1314
    iput-boolean v6, p0, Lcom/meizu/common/widget/GalleryFlow;->mIsFirstScroll:Z

    .line 1315
    return v4

    .line 1306
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v6, p0, Lcom/meizu/common/widget/GalleryFlow;->mSuppressSelectionChanged:Z

    goto :goto_0

    .line 1310
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I

    aget v0, v0, v5

    neg-int v0, v0

    int-to-float p3, v0

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1414
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1242
    iget-object v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1245
    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchPosition:I

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/GalleryFlow;->scrollToChild(I)Z

    .line 1248
    iget-boolean v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchPosition:I

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    if-ne v1, v2, :cond_1

    .line 1249
    :cond_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchPosition:I

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v0

    .line 1250
    .local v0, "downTouchPosition":I
    iget-object v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mDownTouchView:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/meizu/common/widget/GalleryFlow;->performItemClick(Landroid/view/View;IJ)Z

    .line 1254
    .end local v0    # "downTouchPosition":I
    :cond_1
    const/4 v1, 0x1

    .line 1257
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1226
    iget-object v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1228
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1229
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1231
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->onUp()V

    .line 1236
    :cond_0
    :goto_0
    return v1

    .line 1232
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1233
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mFlingRunnable:Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;

    # getter for: Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;
    invoke-static {v0}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->access$200(Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;)Lcom/meizu/common/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->scrollIntoSlots()V

    .line 1392
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->dispatchUnpress()V

    .line 1393
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 1731
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/AbsSpinner;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1732
    const/4 v1, 0x1

    .line 1748
    :cond_0
    :goto_0
    return v1

    .line 1734
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1736
    :sswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 1737
    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1738
    .local v0, "currentChildIndex":I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/GalleryFlow;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    .line 1742
    .end local v0    # "currentChildIndex":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    if-lez v2, :cond_0

    .line 1743
    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1744
    .restart local v0    # "currentChildIndex":I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/GalleryFlow;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    .line 1734
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public pointToPosition(II)I
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1350
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1352
    .local v4, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v3

    .line 1353
    .local v3, "count":I
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfGalleryFlow()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 1354
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 1355
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1356
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 1357
    invoke-static {v2}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v0

    .line 1358
    .local v0, "centerX":I
    invoke-static {v2}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewY(Landroid/view/View;)I

    move-result v1

    .line 1359
    .local v1, "centerY":I
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->getCurLengthFromX(I)F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v5, v7, 0x2

    .line 1360
    .local v5, "halfLength":I
    sub-int v7, v0, v5

    sub-int v8, v1, v5

    add-int v9, v0, v5

    add-int v10, v1, v5

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1361
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1362
    iget v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    add-int/2addr v7, v6

    .line 1380
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "halfLength":I
    :goto_1
    return v7

    .line 1354
    .restart local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1367
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "i":I
    :cond_1
    add-int/lit8 v6, v3, -0x1

    .restart local v6    # "i":I
    :goto_2
    if-ltz v6, :cond_3

    .line 1368
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1369
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 1370
    invoke-static {v2}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewX(Landroid/view/View;)I

    move-result v0

    .line 1371
    .restart local v0    # "centerX":I
    invoke-static {v2}, Lcom/meizu/common/widget/GalleryFlow;->getCenterOfViewY(Landroid/view/View;)I

    move-result v1

    .line 1372
    .restart local v1    # "centerY":I
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->getCurLengthFromX(I)F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v5, v7, 0x2

    .line 1373
    .restart local v5    # "halfLength":I
    sub-int v7, v0, v5

    sub-int v8, v1, v5

    add-int v9, v0, v5

    add-int v10, v1, v5

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1374
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1375
    iget v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    add-int/2addr v7, v6

    goto :goto_1

    .line 1367
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v5    # "halfLength":I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1380
    .end local v2    # "child":Landroid/view/View;
    :cond_3
    const/4 v7, -0x1

    goto :goto_1
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 860
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSpinner;->selectionChanged()V

    .line 862
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 55
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/GalleryFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    const/4 v0, 0x2

    .line 349
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 350
    if-eqz p1, :cond_0

    .line 352
    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-ge v0, v1, :cond_1

    .line 354
    .local v0, "position":I
    :goto_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    invoke-direct {p0, v1, v0}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v0

    .line 355
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->setSelectedPositionInt(I)V

    .line 356
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->setNextSelectedPositionInt(I)V

    .line 358
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->requestLayout()V

    .line 360
    .end local v0    # "position":I
    :cond_0
    return-void

    .line 352
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    div-int/lit8 v0, v1, 0x2

    goto :goto_0
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/meizu/common/widget/GalleryFlow;->mAnimationDuration:I

    .line 302
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/meizu/common/widget/GalleryFlow;->mShouldCallbackDuringFling:Z

    .line 276
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/meizu/common/widget/GalleryFlow;->mShouldCallbackOnUnselectedItemClick:Z

    .line 289
    return-void
.end method

.method public setCenterPicSize(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 259
    if-lez p1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mPicHeightMid:I

    if-eq p1, v0, :cond_0

    .line 260
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GalleryFlow;->initialData(I)V

    .line 261
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->requestLayout()V

    .line 263
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1667
    iget v0, p0, Lcom/meizu/common/widget/GalleryFlow;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1668
    iput p1, p0, Lcom/meizu/common/widget/GalleryFlow;->mGravity:I

    .line 1669
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->requestLayout()V

    .line 1671
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1611
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1614
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->updateSelectedItemMetadata()V

    .line 1615
    return-void
.end method

.method public showContextMenu()Z
    .locals 6

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1475
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iget v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1476
    .local v0, "index":I
    iget-boolean v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    invoke-direct {p0, v2, v0}, Lcom/meizu/common/widget/GalleryFlow;->getTransitionPosition(ZI)I

    move-result v0

    .line 1477
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GalleryFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1479
    .local v1, "v":Landroid/view/View;
    iget v2, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/meizu/common/widget/GalleryFlow;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1482
    .end local v0    # "index":I
    .end local v1    # "v":Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 1462
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/GalleryFlow;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1463
    .local v2, "longPressPosition":I
    if-gez v2, :cond_0

    .line 1464
    const/4 v3, 0x0

    .line 1468
    :goto_0
    return v3

    .line 1467
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/GalleryFlow;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1468
    .local v0, "longPressId":J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/meizu/common/widget/GalleryFlow;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 8
    .param p1, "deltaX"    # I

    .prologue
    const/4 v6, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    if-gez p1, :cond_4

    const/4 v5, 0x1

    .line 408
    .local v5, "toLeft":Z
    :goto_1
    move v3, p1

    .line 409
    .local v3, "limitedDeltaX":I
    iget-boolean v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mCirculate:Z

    if-nez v7, :cond_2

    .line 410
    invoke-virtual {p0, v5, p1}, Lcom/meizu/common/widget/GalleryFlow;->getLimitedMotionScrollAmount(ZI)I

    move-result v3

    .line 411
    if-eq v3, p1, :cond_2

    .line 413
    iget-object v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mFlingRunnable:Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;

    # invokes: Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->endFling(Z)V
    invoke-static {v7, v6}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->access$100(Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;Z)V

    .line 414
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->onFinishedMovement()V

    .line 418
    :cond_2
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/GalleryFlow;->offsetChildrenLeftAndRight(I)V

    .line 420
    invoke-direct {p0, v5}, Lcom/meizu/common/widget/GalleryFlow;->detachOffScreenChildren(Z)V

    .line 422
    if-eqz v5, :cond_5

    .line 424
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->fillToGalleryRightLtr()V

    .line 431
    :goto_2
    iget-object v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v7}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->clear()V

    .line 434
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->setSelectionToCenterChild()V

    .line 435
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedChild:Landroid/view/View;

    .line 436
    .local v4, "selChild":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 437
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 438
    .local v1, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 439
    .local v0, "childCenter":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->getWidth()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 440
    .local v2, "galleryCenter":I
    add-int v7, v1, v0

    sub-int/2addr v7, v2

    iput v7, p0, Lcom/meizu/common/widget/GalleryFlow;->mSelectedCenterOffset:I

    .line 443
    .end local v0    # "childCenter":I
    .end local v1    # "childLeft":I
    .end local v2    # "galleryCenter":I
    :cond_3
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/meizu/common/widget/GalleryFlow;->onScrollChanged(IIII)V

    .line 445
    invoke-virtual {p0}, Lcom/meizu/common/widget/GalleryFlow;->invalidate()V

    goto :goto_0

    .end local v3    # "limitedDeltaX":I
    .end local v4    # "selChild":Landroid/view/View;
    .end local v5    # "toLeft":Z
    :cond_4
    move v5, v6

    .line 407
    goto :goto_1

    .line 427
    .restart local v3    # "limitedDeltaX":I
    .restart local v5    # "toLeft":Z
    :cond_5
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow;->fillToGalleryLeftLtr()V

    goto :goto_2
.end method
