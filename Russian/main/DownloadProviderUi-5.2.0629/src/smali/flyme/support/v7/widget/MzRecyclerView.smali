.class public Lflyme/support/v7/widget/MzRecyclerView;
.super Lflyme/support/v7/widget/RecyclerView;
.source "MzRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;,
        Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;,
        Lflyme/support/v7/widget/MzRecyclerView$OnDragSelectListener;,
        Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;,
        Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;,
        Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;,
        Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;,
        Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;,
        Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;,
        Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;,
        Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;
    }
.end annotation


# instance fields
.field private DEBUG:Z

.field private DEBUG_DRAG_SCROLL:Z

.field protected mCheckRegionRect:Landroid/graphics/Rect;

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field protected mDefaultCheckWidth:I

.field private mDragDownPosition:I

.field private mDragMotionPosition:I

.field private mDragMotionViewBottom:I

.field private mDragMotionViewTop:I

.field private mDragMotionY:I

.field private mDragSelectListener:Lflyme/support/v7/widget/MzRecyclerView$OnDragSelectListener;

.field mDrawSelectorOnTop:Z

.field private mEnableDragSelection:Z

.field private mFlingRunnable:Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInCheckRegion:Z

.field private mIsBeginDragSelect:Z

.field private mIsCheckBoxAnim:Z

.field private mIsOutOfDragRegion:Z

.field private mIsOutOfListContent:Z

.field mIsSdkVersion21:Z

.field private mItemFilter:Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;

.field protected mLastDownSelectPosition:I

.field private mLastDragMotionY:I

.field protected mLastUpSelectPosition:I

.field protected mListItemHeight:I

.field private mLongPressPosition:I

.field private mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

.field mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

.field private mOnItemClickListener:Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;

.field private mOnItemLongClickListener:Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;

.field private mRecyclerPinnedHeaderDecoration:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;

.field private mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

.field private mScrollbarPadding:I

.field private mScrollbarPaddingMethod:Ljava/lang/reflect/Method;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/MzRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/MzRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-boolean v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG:Z

    .line 48
    iput-boolean v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG_DRAG_SCROLL:Z

    .line 71
    iput v5, p0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 86
    iput v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    .line 170
    iput-object v6, p0, Lflyme/support/v7/widget/MzRecyclerView;->mItemFilter:Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;

    .line 171
    iput-object v6, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    .line 199
    iput-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsCheckBoxAnim:Z

    .line 201
    iput-boolean v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDrawSelectorOnTop:Z

    .line 203
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    .line 204
    iput v5, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorPosition:I

    .line 205
    iput v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionLeftPadding:I

    .line 206
    iput v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionTopPadding:I

    .line 207
    iput v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionRightPadding:I

    .line 208
    iput v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionBottomPadding:I

    .line 210
    iput-boolean v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsSdkVersion21:Z

    .line 211
    iput-object v6, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollbarPaddingMethod:Ljava/lang/reflect/Method;

    .line 223
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->initRecyclerView()V

    .line 224
    new-instance v4, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;

    new-instance v5, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-direct {v5, p0, v6}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;-><init>(Lflyme/support/v7/widget/MzRecyclerView;Lflyme/support/v7/widget/MzRecyclerView$1;)V

    invoke-direct {v4, p0, p1, v5}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureDetector;-><init>(Lflyme/support/v7/widget/MzRecyclerView;Landroid/content/Context;Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)V

    iput-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 225
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    :goto_0
    iput-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsSdkVersion21:Z

    .line 227
    sget-object v2, Lflyme/support/v7/R$styleable;->MzRecyclerView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 228
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 229
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 232
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    move v2, v3

    .line 225
    goto :goto_0
.end method

.method static synthetic access$100(Lflyme/support/v7/widget/MzRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mOnItemClickListener:Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1400(Lflyme/support/v7/widget/MzRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I

    return v0
.end method

.method static synthetic access$1500(Lflyme/support/v7/widget/MzRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->endDragSelection()V

    return-void
.end method

.method static synthetic access$1600(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mFlingRunnable:Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$1602(Lflyme/support/v7/widget/MzRecyclerView;Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;)Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p1, "x1"    # Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    .prologue
    .line 43
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mFlingRunnable:Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    return-object p1
.end method

.method static synthetic access$1700(Lflyme/support/v7/widget/MzRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->updateOnScreenCheckedViews()V

    return-void
.end method

.method static synthetic access$1800(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mOnItemLongClickListener:Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$1902(Lflyme/support/v7/widget/MzRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLongPressPosition:I

    return p1
.end method

.method static synthetic access$200(Lflyme/support/v7/widget/MzRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mEnableDragSelection:Z

    return v0
.end method

.method static synthetic access$2002(Lflyme/support/v7/widget/MzRecyclerView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2201(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lflyme/support/v7/widget/MzRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG_DRAG_SCROLL:Z

    return v0
.end method

.method static synthetic access$2400(Lflyme/support/v7/widget/MzRecyclerView;IZ)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/MzRecyclerView;->trackMotionScroll(IZ)V

    return-void
.end method

.method static synthetic access$2500(Lflyme/support/v7/widget/MzRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildCountExt()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lflyme/support/v7/widget/MzRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getItemCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lflyme/support/v7/widget/MzRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z

    return v0
.end method

.method static synthetic access$400(Lflyme/support/v7/widget/MzRecyclerView;I)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->onDragMotionChanged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lflyme/support/v7/widget/MzRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionY:I

    return p1
.end method

.method static synthetic access$600(Lflyme/support/v7/widget/MzRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mInCheckRegion:Z

    return v0
.end method

.method static synthetic access$700(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->getChildPositionExt(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    .line 43
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mItemFilter:Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;

    return-object v0
.end method

.method static synthetic access$900(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->startDragSelection(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private checkDuringTouch(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1341
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 1343
    .local v1, "layoutManager":Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v1, Lflyme/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_4

    check-cast v1, Lflyme/support/v7/widget/LinearLayoutManager;

    .end local v1    # "layoutManager":Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1}, Lflyme/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 1344
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1345
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/MzRecyclerView;->ensureCheckRegion(Z)V

    .line 1349
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1350
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1351
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lflyme/support/v7/widget/MzRecyclerView;->checkInRegion(II)V

    .line 1353
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1354
    iput-boolean v4, p0, Lflyme/support/v7/widget/MzRecyclerView;->mInCheckRegion:Z

    .line 1361
    .end local v0    # "action":I
    :cond_2
    :goto_1
    return-void

    .line 1347
    :cond_3
    invoke-virtual {p0, v4}, Lflyme/support/v7/widget/MzRecyclerView;->ensureCheckRegion(Z)V

    goto :goto_0

    .line 1357
    :cond_4
    iput-boolean v4, p0, Lflyme/support/v7/widget/MzRecyclerView;->mInCheckRegion:Z

    .line 1358
    iput-boolean v4, p0, Lflyme/support/v7/widget/MzRecyclerView;->mEnableDragSelection:Z

    .line 1359
    const/4 v2, 0x0

    iput-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragSelectListener:Lflyme/support/v7/widget/MzRecyclerView$OnDragSelectListener;

    goto :goto_1
.end method

.method private checkInRegion(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1383
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mInCheckRegion:Z

    .line 1388
    :goto_0
    return-void

    .line 1386
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mInCheckRegion:Z

    goto :goto_0
.end method

.method private endDragSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1722
    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionY:I

    .line 1723
    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDragMotionY:I

    .line 1724
    iput-boolean v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z

    .line 1725
    iput-boolean v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsOutOfDragRegion:Z

    .line 1726
    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I

    .line 1727
    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    .line 1728
    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    .line 1729
    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionPosition:I

    .line 1730
    iput-boolean v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsOutOfListContent:Z

    .line 1731
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->finish()V

    .line 1734
    :cond_0
    return-void
.end method

.method private findMotionRow(I)Landroid/view/View;
    .locals 6
    .param p1, "y"    # I

    .prologue
    .line 1890
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v1

    .line 1891
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1892
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v2}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1893
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 1895
    .local v3, "translationY":F
    int-to-float v4, p1

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    int-to-float v4, p1

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getDecoratedBottom(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 1900
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationY":F
    :goto_1
    return-object v0

    .line 1891
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "translationY":F
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1900
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationY":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getChildCountExt()I
    .locals 1

    .prologue
    .line 1789
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getChildPositionExt(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1797
    if-nez p1, :cond_0

    .line 1798
    const/4 v0, -0x1

    .line 1800
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private getItemCount()I
    .locals 2

    .prologue
    .line 1808
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 1809
    .local v0, "a":Lflyme/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initRecyclerView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1320
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1321
    .local v0, "res":Landroid/content/res/Resources;
    iput-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mInCheckRegion:Z

    .line 1322
    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDefaultCheckWidth:I

    .line 1323
    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mListItemHeight:I

    .line 1325
    iput-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragSelectListener:Lflyme/support/v7/widget/MzRecyclerView$OnDragSelectListener;

    .line 1326
    iput-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z

    .line 1327
    iput v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionViewTop:I

    .line 1328
    iput v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionViewBottom:I

    .line 1329
    iput v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionPosition:I

    .line 1330
    iput v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionY:I

    .line 1331
    iput v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDragMotionY:I

    .line 1332
    iput-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    .line 1333
    iput-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsOutOfListContent:Z

    .line 1334
    iput v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLongPressPosition:I

    .line 1335
    iput v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    .line 1336
    iput v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    .line 1337
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollbarPadding:I

    .line 1338
    return-void
.end method

.method private onDragMotionChanged(I)Z
    .locals 4
    .param p1, "motionY"    # I

    .prologue
    .line 1542
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->findMotionRow(I)Landroid/view/View;

    move-result-object v0

    .line 1543
    .local v0, "dragMotionView":Landroid/view/View;
    iget-boolean v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG_DRAG_SCROLL:Z

    if-eqz v1, :cond_1

    .line 1544
    :cond_0
    const-string v1, "MzRecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onDragMotionChanged dragMotionView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " motionY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_1
    if-eqz v0, :cond_2

    .line 1547
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildPositionExt(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionPosition:I

    .line 1548
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionViewTop:I

    .line 1549
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionViewBottom:I

    .line 1550
    const/4 v1, 0x1

    .line 1552
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onLayoutExt()V
    .locals 2

    .prologue
    .line 1235
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 1236
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1237
    new-instance v0, Lflyme/support/v7/widget/MzRecyclerView$2;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/MzRecyclerView$2;-><init>(Lflyme/support/v7/widget/MzRecyclerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    .line 1243
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1250
    :cond_0
    return-void
.end method

.method private startDragSelection(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1410
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v9, v0

    .line 1411
    .local v9, "dragMotionX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v10, v0

    .line 1412
    .local v10, "dragMotionY":I
    iget-object v11, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    .line 1413
    .local v11, "dragRegion":Landroid/graphics/Rect;
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG_DRAG_SCROLL:Z

    if-eqz v0, :cond_1

    .line 1414
    :cond_0
    const-string v0, "MzRecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll 1 mEnableDragSelection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mEnableDragSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsBeginDragSelect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsOutOfListContent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsOutOfListContent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    .line 1418
    const/4 v0, 0x0

    .line 1537
    :goto_0
    return v0

    .line 1420
    :cond_2
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mEnableDragSelection:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z

    if-nez v0, :cond_3

    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionY:I

    if-ltz v0, :cond_3

    .line 1421
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionPosition:I

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I

    .line 1422
    iput v10, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionY:I

    .line 1423
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionY:I

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDragMotionY:I

    .line 1426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z

    .line 1428
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1430
    .local v8, "cancelMotion":Landroid/view/MotionEvent;
    # invokes: Lflyme/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {p0, v8}, Lflyme/support/v7/widget/MzRecyclerView;->access$2201(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/MotionEvent;)Z

    .line 1431
    const/4 v0, 0x3

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 1432
    const/4 v0, 0x1

    goto :goto_0

    .line 1433
    .end local v8    # "cancelMotion":Landroid/view/MotionEvent;
    :cond_3
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsOutOfDragRegion:Z

    if-eqz v0, :cond_4

    .line 1434
    const/4 v0, 0x1

    goto :goto_0

    .line 1435
    :cond_4
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z

    if-eqz v0, :cond_7

    iget v0, v11, Landroid/graphics/Rect;->left:I

    if-lt v9, v0, :cond_5

    iget v0, v11, Landroid/graphics/Rect;->right:I

    if-le v9, v0, :cond_7

    .line 1436
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsOutOfDragRegion:Z

    .line 1437
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    if-eqz v0, :cond_6

    .line 1438
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->finish()V

    .line 1440
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1441
    :cond_7
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z

    if-eqz v0, :cond_8

    .line 1442
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionY:I

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDragMotionY:I

    .line 1443
    iput v10, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionY:I

    .line 1445
    :cond_8
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG_DRAG_SCROLL:Z

    if-eqz v0, :cond_a

    .line 1446
    :cond_9
    const-string v0, "MzRecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll 2 mEnableDragSelection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mEnableDragSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsBeginDragSelect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsOutOfListContent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsOutOfListContent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_a
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z

    if-eqz v0, :cond_21

    .line 1450
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsOutOfListContent:Z

    if-eqz v0, :cond_d

    .line 1452
    invoke-direct {p0, v10}, Lflyme/support/v7/widget/MzRecyclerView;->onDragMotionChanged(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1454
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDragMotionY:I

    if-gez v0, :cond_c

    .line 1455
    const/4 v0, -0x1

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionPosition:I

    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->downSelect(II)V

    .line 1459
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsOutOfListContent:Z

    .line 1462
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1457
    :cond_c
    const/4 v0, -0x1

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionPosition:I

    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->upSelect(II)V

    goto :goto_1

    .line 1463
    :cond_d
    invoke-virtual {p0, v10}, Lflyme/support/v7/widget/MzRecyclerView;->canScrollSelect(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->contentFits()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1465
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    if-nez v0, :cond_e

    .line 1466
    new-instance v0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;-><init>(Lflyme/support/v7/widget/MzRecyclerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    .line 1469
    :cond_e
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->isStarted()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1470
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mListItemHeight:I

    add-int/2addr v0, v1

    if-ge v10, v0, :cond_10

    const/4 v14, 0x1

    .line 1471
    .local v14, "upSelect":Z
    :goto_2
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    invoke-virtual {v0, v14}, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->startScrollSelected(Z)V

    .line 1473
    .end local v14    # "upSelect":Z
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1470
    :cond_10
    const/4 v14, 0x0

    goto :goto_2

    .line 1474
    :cond_11
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1476
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mScrollSelection:Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->finish()V

    .line 1479
    :cond_12
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionViewTop:I

    if-ge v10, v0, :cond_1a

    .line 1480
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG_DRAG_SCROLL:Z

    if-eqz v0, :cond_14

    .line 1481
    :cond_13
    const-string v0, "MzRecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " up mDragDownPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastUpSelectPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastDownSelectPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDragMotionPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_14
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 1485
    const/4 v0, -0x1

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I

    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->upSelect(II)V

    .line 1486
    const/4 v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I

    .line 1488
    :cond_15
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 1489
    const/4 v0, -0x1

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->upSelect(II)V

    .line 1493
    :cond_16
    invoke-direct {p0, v10}, Lflyme/support/v7/widget/MzRecyclerView;->onDragMotionChanged(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1496
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getFirstPosition()I

    move-result v12

    .line 1497
    .local v12, "firstPosition":I
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    if-eq v0, v12, :cond_17

    .line 1498
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    invoke-virtual {p0, v0, v12}, Lflyme/support/v7/widget/MzRecyclerView;->upSelect(II)V

    .line 1500
    :cond_17
    const/4 v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    .line 1501
    const/4 v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    .line 1502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsOutOfListContent:Z

    .line 1503
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1506
    .end local v12    # "firstPosition":I
    :cond_18
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionPosition:I

    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->upSelect(II)V

    .line 1535
    :cond_19
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1507
    :cond_1a
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionViewBottom:I

    if-le v10, v0, :cond_19

    .line 1508
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG_DRAG_SCROLL:Z

    if-eqz v0, :cond_1c

    .line 1509
    :cond_1b
    const-string v0, "MzRecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " down mDragDownPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastUpSelectPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastDownSelectPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDragMotionPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_1c
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 1513
    const/4 v0, -0x1

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I

    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->downSelect(II)V

    .line 1514
    const/4 v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I

    .line 1516
    :cond_1d
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 1517
    const/4 v0, -0x1

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->downSelect(II)V

    .line 1520
    :cond_1e
    invoke-direct {p0, v10}, Lflyme/support/v7/widget/MzRecyclerView;->onDragMotionChanged(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1523
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getLastPosition()I

    move-result v13

    .line 1524
    .local v13, "lastPosition":I
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    if-eq v0, v13, :cond_1f

    .line 1525
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    invoke-virtual {p0, v0, v13}, Lflyme/support/v7/widget/MzRecyclerView;->downSelect(II)V

    .line 1527
    :cond_1f
    const/4 v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    .line 1528
    const/4 v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    .line 1529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsOutOfListContent:Z

    .line 1530
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1533
    .end local v13    # "lastPosition":I
    :cond_20
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionPosition:I

    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->downSelect(II)V

    goto/16 :goto_3

    .line 1537
    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private trackMotionScroll(IZ)V
    .locals 2
    .param p1, "incrementalDeltaY"    # I
    .param p2, "offsetChild"    # Z

    .prologue
    .line 1837
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildCountExt()I

    move-result v0

    .line 1838
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1848
    :cond_0
    :goto_0
    return-void

    .line 1841
    :cond_1
    if-eqz p2, :cond_2

    .line 1842
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->offsetChildrenVertical(I)V

    .line 1845
    :cond_2
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1846
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->invalidate()V

    goto :goto_0
.end method

.method private updateOnScreenCheckedViews()V
    .locals 4

    .prologue
    .line 962
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildCountExt()I

    move-result v1

    .line 963
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 964
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAtExt(I)Landroid/view/View;

    move-result-object v0

    .line 965
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildPositionExt(Landroid/view/View;)I

    move-result v3

    .line 966
    .local v3, "position":I
    invoke-virtual {p0, v0, v3}, Lflyme/support/v7/widget/MzRecyclerView;->setViewChecked(Landroid/view/View;I)V

    .line 963
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1994
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1995
    return-void
.end method


# virtual methods
.method protected canScrollSelect(I)Z
    .locals 14
    .param p1, "motionY"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1737
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildCountExt()I

    move-result v4

    .line 1738
    .local v4, "childCount":I
    if-lez v4, :cond_0

    .line 1739
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingTop()I

    move-result v8

    .line 1740
    .local v8, "listTop":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getHeight()I

    move-result v11

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingBottom()I

    move-result v12

    sub-int v7, v11, v12

    .line 1741
    .local v7, "listBottom":I
    invoke-virtual {p0, v10}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAtExt(I)Landroid/view/View;

    move-result-object v5

    .line 1742
    .local v5, "firstChild":Landroid/view/View;
    invoke-direct {p0, v5}, Lflyme/support/v7/widget/MzRecyclerView;->getChildPositionExt(Landroid/view/View;)I

    move-result v6

    .line 1743
    .local v6, "firstPosition":I
    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingTop()I

    move-result v12

    if-lt v11, v12, :cond_1

    move v2, v9

    .line 1744
    .local v2, "atListTop":Z
    :goto_0
    iget v11, p0, Lflyme/support/v7/widget/MzRecyclerView;->mListItemHeight:I

    add-int/2addr v11, v8

    if-ge p1, v11, :cond_2

    move v3, v9

    .line 1745
    .local v3, "atTopRegion":Z
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 1758
    .end local v2    # "atListTop":Z
    .end local v3    # "atTopRegion":Z
    .end local v5    # "firstChild":Landroid/view/View;
    .end local v6    # "firstPosition":I
    .end local v7    # "listBottom":I
    .end local v8    # "listTop":I
    :cond_0
    :goto_2
    return v10

    .restart local v5    # "firstChild":Landroid/view/View;
    .restart local v6    # "firstPosition":I
    .restart local v7    # "listBottom":I
    .restart local v8    # "listTop":I
    :cond_1
    move v2, v10

    .line 1743
    goto :goto_0

    .restart local v2    # "atListTop":Z
    :cond_2
    move v3, v10

    .line 1744
    goto :goto_1

    .line 1749
    .restart local v3    # "atTopRegion":Z
    :cond_3
    add-int v11, v6, v4

    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getItemCount()I

    move-result v12

    if-ne v11, v12, :cond_6

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {p0, v11}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAtExt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getHeight()I

    move-result v12

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    if-gt v11, v12, :cond_6

    move v1, v9

    .line 1751
    .local v1, "atListBottom":Z
    :goto_3
    iget v11, p0, Lflyme/support/v7/widget/MzRecyclerView;->mListItemHeight:I

    sub-int v11, v7, v11

    if-le p1, v11, :cond_7

    move v0, v9

    .line 1752
    .local v0, "atBottomRegion":Z
    :goto_4
    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    .line 1756
    :cond_4
    if-nez v3, :cond_5

    if-eqz v0, :cond_0

    :cond_5
    move v10, v9

    goto :goto_2

    .end local v0    # "atBottomRegion":Z
    .end local v1    # "atListBottom":Z
    :cond_6
    move v1, v10

    .line 1749
    goto :goto_3

    .restart local v1    # "atListBottom":Z
    :cond_7
    move v0, v10

    .line 1751
    goto :goto_4
.end method

.method public checkedAll()V
    .locals 7

    .prologue
    .line 1956
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getItemCount()I

    move-result v1

    .line 1957
    .local v1, "itemCount":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 1958
    .local v0, "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1974
    :cond_0
    :goto_0
    return-void

    .line 1961
    :cond_1
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->clearChoices()V

    .line 1962
    iget v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    if-eqz v3, :cond_3

    .line 1963
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1965
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1966
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1967
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1969
    :cond_2
    iget v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    .line 1963
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1973
    .end local v2    # "position":I
    :cond_3
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 867
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 870
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    .line 871
    return-void
.end method

.method confirmCheckedPositionsById()V
    .locals 20

    .prologue
    .line 1143
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 1144
    .local v2, "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    move-object/from16 v0, p0

    iget v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/MzRecyclerView;->getItemCount()I

    move-result v13

    .line 1149
    .local v13, "itemCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1151
    const/4 v9, 0x0

    .line 1152
    .local v9, "checkedCountChanged":Z
    const/4 v10, 0x0

    .local v10, "checkedIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v10, v3, :cond_6

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v10}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1154
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v10}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1156
    .local v5, "lastPos":I
    invoke-virtual {v2, v5}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v14

    .line 1157
    .local v14, "lastPosId":J
    cmp-long v3, v6, v14

    if-eqz v3, :cond_5

    .line 1159
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1160
    .local v19, "start":I
    add-int/lit8 v3, v5, 0x14

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1161
    .local v11, "end":I
    const/4 v12, 0x0

    .line 1162
    .local v12, "found":Z
    move/from16 v18, v19

    .local v18, "searchPos":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v11, :cond_2

    .line 1163
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v16

    .line 1164
    .local v16, "searchId":J
    cmp-long v3, v6, v16

    if-nez v3, :cond_4

    .line 1165
    const/4 v12, 0x1

    .line 1166
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/support/v4/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 1172
    .end local v16    # "searchId":J
    :cond_2
    if-nez v12, :cond_3

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 1174
    add-int/lit8 v10, v10, -0x1

    .line 1175
    move-object/from16 v0, p0

    iget v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    .line 1176
    const/4 v9, 0x1

    .line 1177
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_3

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1152
    .end local v11    # "end":I
    .end local v12    # "found":Z
    .end local v18    # "searchPos":I
    .end local v19    # "start":I
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1162
    .restart local v11    # "end":I
    .restart local v12    # "found":Z
    .restart local v16    # "searchId":J
    .restart local v18    # "searchPos":I
    .restart local v19    # "start":I
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1183
    .end local v11    # "end":I
    .end local v12    # "found":Z
    .end local v16    # "searchId":J
    .end local v18    # "searchPos":I
    .end local v19    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 1187
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v14    # "lastPosId":J
    :cond_6
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 317
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDrawSelectorOnTop:Z

    .line 318
    .local v0, "drawSelectorOnTop":Z
    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 322
    :cond_0
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 324
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 327
    :cond_1
    return-void
.end method

.method dispatchLayout()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 252
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->onLayoutExt()V

    .line 253
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 2135
    return-void
.end method

.method public dispatchStatusBarTap()Z
    .locals 1

    .prologue
    .line 2101
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->onStatusBarTapScrollTop()Z

    move-result v0

    return v0
.end method

.method protected doSomethingWhenStructureChange()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->confirmCheckedPositionsById()V

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setPressed(Z)V

    .line 261
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 265
    :cond_0
    return-void
.end method

.method protected downSelect(II)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v8, -0x1

    .line 1557
    if-ne p1, v8, :cond_0

    .line 1558
    move p1, p2

    .line 1562
    :goto_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 1563
    .local v0, "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getFirstPosition()I

    move-result v2

    .line 1564
    .local v2, "firstPosition":I
    move v6, p1

    .local v6, "position":I
    :goto_1
    if-gt v6, p2, :cond_5

    .line 1565
    iget v7, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLongPressPosition:I

    if-ne v6, v7, :cond_1

    .line 1585
    :goto_2
    return-void

    .line 1560
    .end local v0    # "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    .end local v2    # "firstPosition":I
    .end local v6    # "position":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1567
    .restart local v0    # "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    .restart local v2    # "firstPosition":I
    .restart local v6    # "position":I
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1564
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1571
    :cond_2
    sub-int v7, v6, v2

    invoke-virtual {p0, v7}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAtExt(I)Landroid/view/View;

    move-result-object v1

    .line 1572
    .local v1, "dragView":Landroid/view/View;
    invoke-virtual {v0, v6}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 1573
    .local v4, "id":J
    const/4 v3, 0x0

    .line 1574
    .local v3, "newSelected":Z
    iget-object v7, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragSelectListener:Lflyme/support/v7/widget/MzRecyclerView$OnDragSelectListener;

    if-eqz v7, :cond_3

    .line 1575
    iget-object v7, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragSelectListener:Lflyme/support/v7/widget/MzRecyclerView$OnDragSelectListener;

    invoke-interface {v7, v1, v6, v4, v5}, Lflyme/support/v7/widget/MzRecyclerView$OnDragSelectListener;->onDragSelection(Landroid/view/View;IJ)Z

    move-result v3

    .line 1581
    :goto_4
    iput v6, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    .line 1582
    iput v8, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    goto :goto_3

    .line 1577
    :cond_3
    invoke-virtual {p0, v6}, Lflyme/support/v7/widget/MzRecyclerView;->isItemChecked(I)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v3, 0x1

    .line 1578
    :goto_5
    invoke-virtual {p0, v6, v3}, Lflyme/support/v7/widget/MzRecyclerView;->setItemChecked(IZ)V

    goto :goto_4

    .line 1577
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 1584
    .end local v1    # "dragView":Landroid/view/View;
    .end local v3    # "newSelected":Z
    .end local v4    # "id":J
    :cond_5
    iput v8, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLongPressPosition:I

    goto :goto_2
.end method

.method protected drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2054
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2055
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2056
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2057
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2059
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2033
    invoke-super {p0}, Lflyme/support/v7/widget/RecyclerView;->drawableStateChanged()V

    .line 2034
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->updateSelectorState()V

    .line 2035
    return-void
.end method

.method ensureCheckRegion(Z)V
    .locals 3
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 1364
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    .line 1366
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1368
    :cond_0
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 1369
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1380
    :cond_1
    :goto_0
    return-void

    .line 1372
    :cond_2
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_1

    .line 1376
    :cond_3
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1377
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDefaultCheckWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1378
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1379
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method protected findCandidateScrollSelection(Z)I
    .locals 8
    .param p1, "up"    # Z

    .prologue
    .line 1620
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildCountExt()I

    move-result v1

    .line 1621
    .local v1, "childCount":I
    const/4 v4, -0x1

    .line 1622
    .local v4, "position":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getFirstPosition()I

    move-result v2

    .line 1623
    .local v2, "firstPosition":I
    if-eqz p1, :cond_2

    .line 1624
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1625
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAtExt(I)Landroid/view/View;

    move-result-object v0

    .line 1626
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getDecoratedBottom(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingTop()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 1627
    add-int v4, v2, v3

    .line 1640
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v4

    .line 1624
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1632
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "index":I
    :cond_2
    add-int/lit8 v3, v1, -0x1

    .restart local v3    # "index":I
    :goto_2
    if-ltz v3, :cond_0

    .line 1633
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAtExt(I)Landroid/view/View;

    move-result-object v0

    .line 1634
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_3

    .line 1635
    add-int v4, v2, v3

    .line 1636
    goto :goto_1

    .line 1632
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method public finishMultiChoice()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1195
    :cond_0
    return-void
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 845
    iget v4, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    if-nez v4, :cond_2

    .line 846
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 857
    :cond_1
    return-object v3

    .line 849
    :cond_2
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 850
    .local v2, "idStates":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    .line 851
    .local v0, "count":I
    new-array v3, v0, [J

    .line 853
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 854
    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getChildAtExt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1793
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1904
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1905
    .local v0, "layoutManager":Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 1907
    .local v1, "params":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    return v2
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1918
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1919
    .local v0, "layoutManager":Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 1921
    .local v1, "params":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    return v2
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1911
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1912
    .local v0, "layoutManager":Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 1914
    .local v1, "params":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public getFirstPosition()I
    .locals 2

    .prologue
    .line 1773
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAtExt(I)Landroid/view/View;

    move-result-object v0

    .line 1774
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1775
    const/4 v1, -0x1

    .line 1777
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildPositionExt(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getLastPosition()I
    .locals 2

    .prologue
    .line 1781
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildCountExt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAtExt(I)Landroid/view/View;

    move-result-object v0

    .line 1782
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1783
    const/4 v1, -0x1

    .line 1785
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildPositionExt(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method protected invalidateParentIfNeeded()V
    .locals 1

    .prologue
    .line 1944
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1945
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1947
    :cond_0
    return-void
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 813
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 817
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 2044
    invoke-super {p0}, Lflyme/support/v7/widget/RecyclerView;->jumpDrawablesToCurrentState()V

    .line 2045
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2046
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 1987
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1988
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->useDefaultSelector()V

    .line 1990
    :cond_0
    invoke-super {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->onMeasure(II)V

    .line 1991
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 347
    invoke-super {p0, p1, p2, p3, p4}, Lflyme/support/v7/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->ensureCheckRegion(Z)V

    .line 349
    return-void
.end method

.method protected onStatusBarTapScrollTop()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2105
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getItemCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2128
    :cond_0
    :goto_0
    return v2

    .line 2108
    :cond_1
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getFirstPosition()I

    move-result v1

    .line 2109
    .local v1, "firstPosition":I
    if-nez v1, :cond_2

    .line 2110
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2111
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2112
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingTop()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2117
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getItemCount()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_0

    .line 2120
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mFlingRunnable:Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    if-eqz v3, :cond_3

    .line 2121
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mFlingRunnable:Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    invoke-virtual {v3}, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->endFling()V

    .line 2122
    const/4 v3, 0x0

    iput-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mFlingRunnable:Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    .line 2124
    :cond_3
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-le v1, v3, :cond_4

    .line 2125
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getChildCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/MzRecyclerView;->scrollToPosition(I)V

    .line 2127
    :cond_4
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->smoothScrollToPosition(I)V

    .line 2128
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 332
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mRecyclerPinnedHeaderDecoration:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mRecyclerPinnedHeaderDecoration:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->findHeaderPositionUnder(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 333
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 342
    :goto_0
    return v1

    .line 336
    :cond_0
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->checkDuringTouch(Landroid/view/MotionEvent;)V

    .line 337
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 338
    .local v0, "flag":Z
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z

    if-eqz v1, :cond_2

    .line 339
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 342
    :cond_2
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2062
    iget v5, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorPosition:I

    if-eq p1, v5, :cond_4

    move v0, v3

    .line 2063
    .local v0, "positionChanged":Z
    :goto_0
    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 2064
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorPosition:I

    .line 2067
    :cond_0
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2068
    .local v2, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2071
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionLeftPadding:I

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 2072
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionTopPadding:I

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 2073
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionRightPadding:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 2074
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionBottomPadding:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 2077
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2078
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 2079
    if-eqz v0, :cond_1

    .line 2082
    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2083
    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2085
    :cond_1
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2086
    if-eqz v0, :cond_3

    .line 2087
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 2088
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2090
    :cond_2
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->updateSelectorState()V

    .line 2094
    :cond_3
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->refreshDrawableState()V

    .line 2095
    return-void

    .end local v0    # "positionChanged":Z
    .end local v1    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v2    # "selectorRect":Landroid/graphics/Rect;
    :cond_4
    move v0, v4

    .line 2062
    goto :goto_0
.end method

.method public setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lflyme/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 237
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 238
    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    .line 240
    .local v0, "hasStableIds":Z
    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v1}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 245
    .end local v0    # "hasStableIds":Z
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->clearChoices()V

    .line 246
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 3
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1015
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    .line 1016
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 1017
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 1018
    const/4 v1, 0x0

    iput-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1020
    :cond_0
    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 1021
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1

    .line 1022
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1024
    :cond_1
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 1025
    .local v0, "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1026
    new-instance v1, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v1, v2}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    iput-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 1029
    :cond_2
    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1030
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->clearChoices()V

    .line 1031
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setLongClickable(Z)V

    .line 1034
    .end local v0    # "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    :cond_3
    return-void
.end method

.method public setEnableDragSelection(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1391
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mEnableDragSelection:Z

    .line 1392
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 882
    iget v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    if-nez v3, :cond_0

    .line 954
    :goto_0
    return-void

    .line 886
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 889
    .local v0, "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    if-eqz p2, :cond_3

    iget v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_3

    .line 890
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v3

    if-nez v3, :cond_2

    .line 892
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 896
    :cond_2
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/MzRecyclerView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 899
    :cond_3
    iget v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    if-eq v3, v6, :cond_4

    iget v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_a

    .line 900
    :cond_4
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 901
    .local v7, "oldValue":Z
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 902
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 903
    if-eqz p2, :cond_8

    .line 904
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 909
    :cond_5
    :goto_1
    if-eq v7, p2, :cond_6

    .line 910
    if-eqz p2, :cond_9

    .line 911
    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    .line 916
    :cond_6
    :goto_2
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7

    .line 917
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 918
    .local v4, "id":J
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 952
    .end local v4    # "id":J
    .end local v7    # "oldValue":Z
    :cond_7
    :goto_3
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView;->updateOnScreenCheckedViews()V

    goto :goto_0

    .line 906
    .restart local v7    # "oldValue":Z
    :cond_8
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 913
    :cond_9
    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    goto :goto_2

    .line 922
    .end local v7    # "oldValue":Z
    :cond_a
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_e

    move v8, v1

    .line 925
    .local v8, "updateIds":Z
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 926
    :cond_b
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 927
    if-eqz v8, :cond_c

    .line 928
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 933
    :cond_c
    if-eqz p2, :cond_f

    .line 934
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 935
    if-eqz v8, :cond_d

    .line 936
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v11, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 938
    :cond_d
    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    goto :goto_3

    .end local v8    # "updateIds":Z
    :cond_e
    move v8, v2

    .line 922
    goto :goto_4

    .line 939
    .restart local v8    # "updateIds":Z
    :cond_f
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 940
    :cond_10
    iput v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    .prologue
    .line 1045
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;-><init>(Lflyme/support/v7/widget/MzRecyclerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    .line 1048
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->setWrapped(Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;)V

    .line 1049
    return-void
.end method

.method public setOnItemClickListener(Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;

    .prologue
    .line 358
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mOnItemClickListener:Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;

    .line 359
    return-void
.end method

.method public setOnItemLongClickListener(Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;

    .prologue
    .line 376
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setLongClickable(Z)V

    .line 379
    :cond_0
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mOnItemLongClickListener:Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;

    .line 380
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2006
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2007
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2008
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2010
    :cond_0
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2011
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2012
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2013
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionLeftPadding:I

    .line 2014
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionTopPadding:I

    .line 2015
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionRightPadding:I

    .line 2016
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectionBottomPadding:I

    .line 2017
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2018
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->updateSelectorState()V

    .line 2019
    return-void
.end method

.method public setViewChecked(Landroid/view/View;I)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 971
    if-nez p1, :cond_1

    .line 996
    .end local p1    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 974
    .restart local p1    # "child":Landroid/view/View;
    :cond_1
    iget v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_0

    .line 975
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 977
    .local v1, "checked":Z
    instance-of v3, p1, Landroid/widget/Checkable;

    if-eqz v3, :cond_2

    .line 978
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "child":Landroid/view/View;
    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 979
    .restart local p1    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 981
    iget v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    iget v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 982
    :cond_3
    const v3, 0x1020001

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 983
    .local v0, "checkbox":Landroid/view/View;
    if-eqz v0, :cond_4

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_4

    .line 986
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    .line 987
    .local v2, "inSelectionMode":Z
    :goto_1
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 990
    .end local v2    # "inSelectionMode":Z
    :cond_4
    iget-boolean v3, p0, Lflyme/support/v7/widget/MzRecyclerView;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 991
    const-string v3, "MzRecyclerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setViewChecked position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " checked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 986
    .restart local v0    # "checkbox":Landroid/view/View;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method setupChild(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 269
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/MzRecyclerView;->setViewChecked(Landroid/view/View;I)V

    .line 270
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2050
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startMultiChoice()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1198
    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 1201
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1203
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    .line 1230
    :cond_1
    :goto_0
    return v0

    .line 1223
    :cond_2
    new-instance v0, Lflyme/support/v7/widget/MzRecyclerView$1;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/MzRecyclerView$1;-><init>(Lflyme/support/v7/widget/MzRecyclerView;)V

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1228
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unCheckedAll()V
    .locals 0

    .prologue
    .line 1977
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->clearChoices()V

    .line 1978
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->requestLayout()V

    .line 1979
    return-void
.end method

.method protected upSelect(II)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v8, -0x1

    .line 1588
    if-ne p1, v8, :cond_0

    .line 1589
    move p1, p2

    .line 1593
    :goto_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 1594
    .local v0, "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getFirstPosition()I

    move-result v2

    .line 1595
    .local v2, "firstPosition":I
    move v6, p1

    .local v6, "position":I
    :goto_1
    if-lt v6, p2, :cond_5

    .line 1596
    iget v7, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLongPressPosition:I

    if-ne v6, v7, :cond_1

    .line 1617
    :goto_2
    return-void

    .line 1591
    .end local v0    # "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    .end local v2    # "firstPosition":I
    .end local v6    # "position":I
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1598
    .restart local v0    # "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    .restart local v2    # "firstPosition":I
    .restart local v6    # "position":I
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1595
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1602
    :cond_2
    sub-int v7, v6, v2

    invoke-virtual {p0, v7}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAtExt(I)Landroid/view/View;

    move-result-object v1

    .line 1603
    .local v1, "dragView":Landroid/view/View;
    invoke-virtual {v0, v6}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 1604
    .local v4, "id":J
    const/4 v3, 0x0

    .line 1605
    .local v3, "newSelected":Z
    iget-object v7, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragSelectListener:Lflyme/support/v7/widget/MzRecyclerView$OnDragSelectListener;

    if-eqz v7, :cond_3

    .line 1606
    iget-object v7, p0, Lflyme/support/v7/widget/MzRecyclerView;->mDragSelectListener:Lflyme/support/v7/widget/MzRecyclerView$OnDragSelectListener;

    invoke-interface {v7, v1, v6, v4, v5}, Lflyme/support/v7/widget/MzRecyclerView$OnDragSelectListener;->onDragSelection(Landroid/view/View;IJ)Z

    move-result v3

    .line 1613
    :goto_4
    iput v6, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    .line 1614
    iput v8, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    goto :goto_3

    .line 1608
    :cond_3
    invoke-virtual {p0, v6}, Lflyme/support/v7/widget/MzRecyclerView;->isItemChecked(I)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v3, 0x1

    .line 1609
    :goto_5
    invoke-virtual {p0, v6, v3}, Lflyme/support/v7/widget/MzRecyclerView;->setItemChecked(IZ)V

    goto :goto_4

    .line 1608
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 1616
    .end local v1    # "dragView":Landroid/view/View;
    .end local v3    # "newSelected":Z
    .end local v4    # "id":J
    :cond_5
    iput v8, p0, Lflyme/support/v7/widget/MzRecyclerView;->mLongPressPosition:I

    goto :goto_2
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2023
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2024
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2029
    :cond_0
    :goto_0
    return-void

    .line 2026
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2039
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
