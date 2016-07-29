.class public Lflyme/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;,
        Lflyme/support/v7/widget/RecyclerView$ItemAnimator;,
        Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Lflyme/support/v7/widget/RecyclerView$State;,
        Lflyme/support/v7/widget/RecyclerView$SavedState;,
        Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;,
        Lflyme/support/v7/widget/RecyclerView$SmoothScroller;,
        Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;,
        Lflyme/support/v7/widget/RecyclerView$LayoutParams;,
        Lflyme/support/v7/widget/RecyclerView$ViewHolder;,
        Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Lflyme/support/v7/widget/RecyclerView$RecyclerListener;,
        Lflyme/support/v7/widget/RecyclerView$OnScrollListener;,
        Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;,
        Lflyme/support/v7/widget/RecyclerView$ItemDecoration;,
        Lflyme/support/v7/widget/RecyclerView$LayoutManager;,
        Lflyme/support/v7/widget/RecyclerView$Adapter;,
        Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;,
        Lflyme/support/v7/widget/RecyclerView$Recycler;,
        Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;,
        Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;,
        Lflyme/support/v7/widget/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

.field private mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

.field mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mChildDrawingOrderCallback:Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lflyme/support/v7/widget/ChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectPaddingBottom:I

.field private mEdgeEffectPaddingTop:I

.field private mFirstLayoutComplete:Z

.field private mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsAttached:Z

.field mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field private final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

.field private mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

.field private final mPostUpdatesOnAnimation:Z

.field private mPostedAnimatorRunner:Z

.field final mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

.field private mRecyclerListener:Lflyme/support/v7/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private final mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field final mState:Lflyme/support/v7/widget/RecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lflyme/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 241
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lflyme/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 408
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$3;

    invoke-direct {v0}, Lflyme/support/v7/widget/RecyclerView$3;-><init>()V

    sput-object v0, Lflyme/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 459
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 463
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 466
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 244
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0, v10}, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$1;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mObserver:Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    .line 246
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    .line 263
    new-instance v0, Lflyme/support/v7/widget/ViewInfoStore;

    invoke-direct {v0}, Lflyme/support/v7/widget/ViewInfoStore;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    .line 277
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/RecyclerView$1;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 291
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 304
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 321
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 331
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 335
    new-instance v0, Lflyme/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Lflyme/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    .line 360
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    .line 361
    iput v4, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 371
    const/4 v0, 0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollFactor:F

    .line 373
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    .line 375
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$State;

    invoke-direct {v0}, Lflyme/support/v7/widget/RecyclerView$State;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    .line 381
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 382
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 383
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v0, p0, v10}, Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$1;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 385
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 391
    new-array v0, v3, [I

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 394
    new-array v0, v3, [I

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    .line 395
    new-array v0, v3, [I

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    .line 396
    new-array v0, v3, [I

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    .line 398
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$2;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/RecyclerView$2;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 416
    iput v4, p0, Lflyme/support/v7/widget/RecyclerView;->mEdgeEffectPaddingTop:I

    .line 417
    iput v4, p0, Lflyme/support/v7/widget/RecyclerView;->mEdgeEffectPaddingBottom:I

    .line 422
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$4;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/RecyclerView$4;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;

    .line 467
    invoke-virtual {p0, v9}, Lflyme/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 468
    invoke-virtual {p0, v9}, Lflyme/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 469
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 470
    .local v8, "version":I
    const/16 v0, 0x10

    if-lt v8, v0, :cond_3

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    .line 472
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 473
    .local v7, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 474
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    .line 475
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 476
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v1, v9

    :cond_0
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 478
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 479
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 480
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 482
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 484
    invoke-static {p0, v9}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 487
    :cond_1
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 489
    new-instance v0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 491
    if-eqz p2, :cond_2

    .line 492
    const/4 v5, 0x0

    .line 493
    .local v5, "defStyleRes":I
    sget-object v0, Lflyme/support/v7/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 495
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "layoutManagerName":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 497
    invoke-direct/range {v0 .. v5}, Lflyme/support/v7/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 500
    .end local v2    # "layoutManagerName":Ljava/lang/String;
    .end local v5    # "defStyleRes":I
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :cond_2
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 501
    invoke-virtual {p0, v9}, Lflyme/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 502
    return-void

    .end local v7    # "vc":Landroid/view/ViewConfiguration;
    :cond_3
    move v0, v1

    .line 470
    goto :goto_0
.end method

.method static synthetic access$100(Lflyme/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    return v0
.end method

.method static synthetic access$1000(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->postAnimationRunner()V

    return-void
.end method

.method static synthetic access$1100(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1400(Lflyme/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$200(Lflyme/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method static synthetic access$3000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lflyme/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$302(Lflyme/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    return p1
.end method

.method static synthetic access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$3200(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3300(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    return-void
.end method

.method static synthetic access$3400(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3600(Lflyme/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lflyme/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    return-void
.end method

.method static synthetic access$3800(Lflyme/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    return-void
.end method

.method static synthetic access$400(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    return-void
.end method

.method static synthetic access$4000(Lflyme/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    return v0
.end method

.method static synthetic access$4100(Lflyme/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method static synthetic access$4200(Lflyme/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$4300(Lflyme/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4402(Lflyme/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    return p1
.end method

.method static synthetic access$4500()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lflyme/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$4600(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x2"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$4700(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method static synthetic access$5100(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecyclerListener:Lflyme/support/v7/widget/RecyclerView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$5300(Lflyme/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5400(Lflyme/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method static synthetic access$5500(Lflyme/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$5600(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->getAdapterPositionFor(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$ViewFlinger;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    return-object v0
.end method

.method static synthetic access$602(Lflyme/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return p1
.end method

.method static synthetic access$6100(Lflyme/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    return-void
.end method

.method static synthetic access$6300(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x2"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "x3"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;->animateDisappearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$800(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x2"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "x3"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;->animateAppearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$900(Lflyme/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 149
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    return v0
.end method

.method private addAnimatingView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    .line 1084
    iget-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1085
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    move v0, v2

    .line 1086
    .local v0, "alreadyParented":Z
    :goto_0
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lflyme/support/v7/widget/RecyclerView$Recycler;->unscrapView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1087
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1089
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5, v2}, Lflyme/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1095
    :goto_1
    return-void

    .line 1085
    .end local v0    # "alreadyParented":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1090
    .restart local v0    # "alreadyParented":Z
    :cond_1
    if-nez v0, :cond_2

    .line 1091
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v1, v2}, Lflyme/support/v7/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1093
    :cond_2
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private animateAppearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "itemHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 3273
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3274
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->animateAppearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3275
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3277
    :cond_0
    return-void
.end method

.method private animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 2
    .param p1, "oldHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "preInfo"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p4, "postInfo"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p5, "oldHolderDisappearing"    # Z
    .param p6, "newHolderDisappearing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3291
    invoke-virtual {p1, v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3292
    if-eqz p5, :cond_0

    .line 3293
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->addAnimatingView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3295
    :cond_0
    if-eq p1, p2, :cond_2

    .line 3296
    if-eqz p6, :cond_1

    .line 3297
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView;->addAnimatingView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3299
    :cond_1
    iput-object p2, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 3301
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->addAnimatingView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3302
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->unscrapView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3303
    invoke-virtual {p2, v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3304
    iput-object p1, p2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 3306
    :cond_2
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3307
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3309
    :cond_3
    return-void
.end method

.method private animateDisappearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "holder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 3281
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->addAnimatingView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3282
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3283
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->animateDisappearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3284
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3286
    :cond_0
    return-void
.end method

.method private canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3600
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

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

.method private cancelTouch()V
    .locals 1

    .prologue
    .line 2558
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->resetTouch()V

    .line 2559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2560
    return-void
.end method

.method private considerReleasingGlowsOnScroll(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1976
    const/4 v0, 0x0

    .line 1977
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1978
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 1980
    :cond_0
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1981
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1983
    :cond_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1984
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1986
    :cond_2
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1987
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1989
    :cond_3
    if-eqz v0, :cond_4

    .line 1990
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1992
    :cond_4
    return-void
.end method

.method private consumePendingUpdateOperations()V
    .locals 2

    .prologue
    .line 1433
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v0, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_2

    .line 1438
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1440
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 1443
    :cond_2
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1451
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1453
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->preProcess()V

    .line 1454
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_3

    .line 1455
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1456
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1462
    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1463
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 1459
    :cond_4
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_1

    .line 1464
    :cond_5
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1467
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 527
    if-eqz p2, :cond_0

    .line 528
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 529
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 530
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 539
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v6

    .line 542
    .local v6, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lflyme/support/v7/widget/RecyclerView$LayoutManager;>;"
    const/4 v2, 0x0

    .line 544
    .local v2, "constructorArgs":[Ljava/lang/Object;
    :try_start_1
    sget-object v7, Lflyme/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 546
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lflyme/support/v7/widget/RecyclerView$LayoutManager;>;"
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v3, v7

    const/4 v7, 0x1

    aput-object p3, v3, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .local v3, "constructorArgs":[Ljava/lang/Object;
    move-object v2, v3

    .line 556
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 557
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v7}, Lflyme/support/v7/widget/RecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 576
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lflyme/support/v7/widget/RecyclerView$LayoutManager;>;"
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lflyme/support/v7/widget/RecyclerView$LayoutManager;>;"
    :cond_0
    return-void

    .line 537
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 547
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    .restart local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lflyme/support/v7/widget/RecyclerView$LayoutManager;>;"
    :catch_0
    move-exception v4

    .line 549
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    :try_start_3
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v1

    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lflyme/support/v7/widget/RecyclerView$LayoutManager;>;"
    goto :goto_1

    .line 550
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lflyme/support/v7/widget/RecyclerView$LayoutManager;>;"
    :catch_1
    move-exception v5

    .line 551
    .local v5, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 552
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Error creating LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    .line 558
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lflyme/support/v7/widget/RecyclerView$LayoutManager;>;"
    :catch_2
    move-exception v4

    .line 559
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Unable to find LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 561
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v4

    .line 562
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 564
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v4

    .line 565
    .local v4, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 567
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v4

    .line 568
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Cannot access non-public constructor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 570
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v4

    .line 571
    .local v4, "e":Ljava/lang/ClassCastException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Class is not a LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private didChildRangeChange(II)Z
    .locals 7
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3231
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3232
    .local v0, "count":I
    if-nez v0, :cond_2

    .line 3233
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v4, v5

    .line 3245
    :cond_1
    :goto_0
    return v4

    .line 3235
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 3236
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v2}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3237
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3235
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3240
    :cond_4
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 3241
    .local v3, "pos":I
    if-lt v3, p1, :cond_5

    if-le v3, p2, :cond_3

    :cond_5
    move v4, v5

    .line 3242
    goto :goto_0
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6013
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6014
    .local v2, "viewHolder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6015
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 6016
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6018
    :cond_0
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 6019
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 6020
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6021
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 6020
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6024
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5999
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6000
    .local v2, "viewHolder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 6001
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 6002
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6004
    :cond_0
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 6005
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 6006
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6007
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lflyme/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 6006
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6010
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .prologue
    .line 2765
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2766
    .local v1, "flags":I
    const/4 v2, 0x0

    iput v2, p0, Lflyme/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2767
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2768
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2769
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2770
    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2771
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2773
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 15

    .prologue
    .line 2951
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lflyme/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 2952
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x0

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v11, v12}, Lflyme/support/v7/widget/RecyclerView$State;->access$2202(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 2953
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2954
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v11}, Lflyme/support/v7/widget/ViewInfoStore;->clear()V

    .line 2955
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 2957
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2958
    iget-object v12, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v11}, Lflyme/support/v7/widget/RecyclerView$State;->access$2500(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    :goto_0
    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v12, v11}, Lflyme/support/v7/widget/RecyclerView$State;->access$2702(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 2959
    const/4 v11, 0x0

    iput-boolean v11, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v11, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 2960
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v12, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v12}, Lflyme/support/v7/widget/RecyclerView$State;->access$2300(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v12

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v11, v12}, Lflyme/support/v7/widget/RecyclerView$State;->access$2402(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 2961
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v12, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v12}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v12

    iput v12, v11, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 2962
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v11}, Lflyme/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 2964
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v11}, Lflyme/support/v7/widget/RecyclerView$State;->access$2500(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2966
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v11}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v2

    .line 2967
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 2968
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v11, v6}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 2969
    .local v5, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v11}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v11

    if-nez v11, :cond_2

    .line 2967
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2958
    .end local v2    # "count":I
    .end local v5    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "i":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 2972
    .restart local v2    # "count":I
    .restart local v5    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v6    # "i":I
    :cond_2
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v12, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-static {v5}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v13

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v11, v12, v5, v13, v14}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 2976
    .local v0, "animationInfo":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v11, v5, v0}, Lflyme/support/v7/widget/ViewInfoStore;->addToPreLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 2977
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v11}, Lflyme/support/v7/widget/RecyclerView$State;->access$2700(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2979
    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/RecyclerView;->getChangedHolderKey(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v8

    .line 2987
    .local v8, "key":J
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v11, v8, v9, v5}, Lflyme/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 2991
    .end local v0    # "animationInfo":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v2    # "count":I
    .end local v5    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "i":I
    .end local v8    # "key":J
    :cond_3
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v11}, Lflyme/support/v7/widget/RecyclerView$State;->access$2300(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2998
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 2999
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v11}, Lflyme/support/v7/widget/RecyclerView$State;->access$1800(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    .line 3000
    .local v3, "didStructureChange":Z
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x0

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v11, v12}, Lflyme/support/v7/widget/RecyclerView$State;->access$1802(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 3002
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v12, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v13, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v11, v12, v13}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 3003
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v11, v3}, Lflyme/support/v7/widget/RecyclerView$State;->access$1802(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 3005
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v11}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_8

    .line 3006
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v11, v6}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3007
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 3008
    .local v7, "viewHolder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v7}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 3005
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3011
    :cond_5
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v11, v7}, Lflyme/support/v7/widget/ViewInfoStore;->isInPreLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 3012
    invoke-static {v7}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    .line 3013
    .local v4, "flags":I
    const/16 v11, 0x2000

    invoke-virtual {v7, v11}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    .line 3015
    .local v10, "wasHidden":Z
    if-nez v10, :cond_6

    .line 3016
    or-int/lit16 v4, v4, 0x1000

    .line 3018
    :cond_6
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v12, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v11, v12, v7, v4, v13}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 3020
    .restart local v0    # "animationInfo":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-eqz v10, :cond_7

    .line 3021
    invoke-direct {p0, v7, v0}, Lflyme/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3023
    :cond_7
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v11, v7, v0}, Lflyme/support/v7/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3028
    .end local v0    # "animationInfo":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "flags":I
    .end local v7    # "viewHolder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v10    # "wasHidden":Z
    :cond_8
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 3032
    .end local v3    # "didStructureChange":Z
    .end local v6    # "i":I
    :goto_5
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3033
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3034
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x2

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v11, v12}, Lflyme/support/v7/widget/RecyclerView$State;->access$2102(Lflyme/support/v7/widget/RecyclerView$State;I)I

    .line 3035
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->doSomethingWhenStructureChange()V

    .line 3036
    return-void

    .line 3030
    :cond_9
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->clearOldPositions()V

    goto :goto_5
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3043
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3044
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3045
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3046
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3047
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3048
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I
    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView$State;->access$1702(Lflyme/support/v7/widget/RecyclerView$State;I)I

    .line 3051
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView$State;->access$2402(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 3052
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 3054
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView$State;->access$1802(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 3055
    const/4 v0, 0x0

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    .line 3058
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView$State;->access$2500(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v2, v0}, Lflyme/support/v7/widget/RecyclerView$State;->access$2502(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 3059
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x4

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0, v2}, Lflyme/support/v7/widget/RecyclerView$State;->access$2102(Lflyme/support/v7/widget/RecyclerView$State;I)I

    .line 3060
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3061
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3062
    return-void

    :cond_0
    move v0, v1

    .line 3058
    goto :goto_0
.end method

.method private dispatchLayoutStep3()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3069
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lflyme/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3070
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3071
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3072
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0, v13}, Lflyme/support/v7/widget/RecyclerView$State;->access$2102(Lflyme/support/v7/widget/RecyclerView$State;I)I

    .line 3073
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView$State;->access$2500(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3077
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_4

    .line 3078
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v8}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3079
    .local v2, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3077
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3082
    :cond_0
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->getChangedHolderKey(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v10

    .line 3083
    .local v10, "key":J
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v9, v2}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 3085
    .local v7, "animationInfo":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v11}, Lflyme/support/v7/widget/ViewInfoStore;->getFromOldChangeHolders(J)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3086
    .local v1, "oldChangeViewHolder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3097
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ViewInfoStore;->isDisappearing(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    .line 3099
    .local v5, "oldDisappearing":Z
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/ViewInfoStore;->isDisappearing(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    .line 3100
    .local v6, "newDisappearing":Z
    if-eqz v5, :cond_1

    if-ne v1, v2, :cond_1

    .line 3102
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lflyme/support/v7/widget/ViewInfoStore;->addToPostLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 3104
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ViewInfoStore;->popFromPreLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    .line 3107
    .local v3, "preInfo":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lflyme/support/v7/widget/ViewInfoStore;->addToPostLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3108
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/ViewInfoStore;->popFromPostLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3109
    .local v4, "postInfo":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-nez v3, :cond_2

    .line 3110
    invoke-direct {p0, v10, v11, v2, v1}, Lflyme/support/v7/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    .line 3112
    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/widget/RecyclerView;->animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_1

    .line 3117
    .end local v3    # "preInfo":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v4    # "postInfo":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v5    # "oldDisappearing":Z
    .end local v6    # "newDisappearing":Z
    :cond_3
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lflyme/support/v7/widget/ViewInfoStore;->addToPostLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 3122
    .end local v1    # "oldChangeViewHolder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v7    # "animationInfo":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v10    # "key":J
    :cond_4
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v9}, Lflyme/support/v7/widget/ViewInfoStore;->process(Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;)V

    .line 3125
    .end local v8    # "i":I
    :cond_5
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v9}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 3126
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget v9, v9, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I
    invoke-static {v0, v9}, Lflyme/support/v7/widget/RecyclerView$State;->access$2802(Lflyme/support/v7/widget/RecyclerView$State;I)I

    .line 3127
    iput-boolean v12, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3128
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0, v12}, Lflyme/support/v7/widget/RecyclerView$State;->access$2502(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 3130
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v0, v12}, Lflyme/support/v7/widget/RecyclerView$State;->access$2302(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 3131
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    # setter for: Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z
    invoke-static {v0, v12}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->access$2602(Lflyme/support/v7/widget/RecyclerView$LayoutManager;Z)Z

    .line 3132
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    # getter for: Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->access$2900(Lflyme/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3133
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    # getter for: Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->access$2900(Lflyme/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3135
    :cond_6
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3136
    invoke-virtual {p0, v12}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3137
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ViewInfoStore;->clear()V

    .line 3138
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v12

    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v9, v9, v13

    invoke-direct {p0, v0, v9}, Lflyme/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3139
    invoke-virtual {p0, v12, v12}, Lflyme/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3141
    :cond_7
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2252
    .local v0, "action":I
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-eqz v5, :cond_0

    .line 2253
    if-nez v0, :cond_2

    .line 2255
    iput-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2268
    :cond_0
    if-eqz v0, :cond_5

    .line 2269
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2270
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 2271
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2272
    .local v2, "listener":Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lflyme/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2273
    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2278
    .end local v1    # "i":I
    .end local v2    # "listener":Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_1
    :goto_1
    return v4

    .line 2257
    :cond_2
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v5, p0, p1}, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Lflyme/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2258
    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_1

    .line 2260
    :cond_3
    iput-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    goto :goto_1

    .line 2270
    .restart local v1    # "i":I
    .restart local v2    # "listener":Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;
    .restart local v3    # "listenerCount":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2278
    .end local v1    # "i":I
    .end local v2    # "listener":Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    .line 2234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2235
    .local v0, "action":I
    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    .line 2236
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2239
    :cond_1
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2240
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 2241
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2242
    .local v2, "listener":Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lflyme/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v0, v5, :cond_2

    .line 2243
    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2244
    const/4 v4, 0x1

    .line 2247
    .end local v2    # "listener":Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;
    :goto_1
    return v4

    .line 2240
    .restart local v2    # "listener":Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2247
    .end local v2    # "listener":Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 9
    .param p1, "into"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3205
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3206
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 3207
    aput v7, p1, v7

    .line 3208
    aput v7, p1, v8

    .line 3228
    :goto_0
    return-void

    .line 3211
    :cond_0
    const v4, 0x7fffffff

    .line 3212
    .local v4, "minPositionPreLayout":I
    const/high16 v3, -0x80000000

    .line 3213
    .local v3, "maxPositionPreLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3214
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v2}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3215
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3213
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3218
    :cond_2
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 3219
    .local v5, "pos":I
    if-ge v5, v4, :cond_3

    .line 3220
    move v4, v5

    .line 3222
    :cond_3
    if-le v5, v3, :cond_1

    .line 3223
    move v3, v5

    goto :goto_2

    .line 3226
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v5    # "pos":I
    :cond_4
    aput v4, p1, v7

    .line 3227
    aput v3, p1, v8

    goto :goto_0
.end method

.method private getAdapterPositionFor(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 9378
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9381
    :cond_0
    const/4 v0, -0x1

    .line 9383
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    iget v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 3705
    if-nez p0, :cond_0

    .line 3706
    const/4 v0, 0x0

    .line 3708
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2e

    .line 579
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 585
    .end local p2    # "className":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 582
    .restart local p2    # "className":Ljava/lang/String;
    :cond_1
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 2613
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollFactor:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2614
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2615
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2617
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollFactor:F

    .line 2623
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollFactor:F

    :goto_0
    return v1

    .line 2620
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleMissingPreInfoForChangeError(JLflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 9
    .param p1, "key"    # J
    .param p3, "holder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "oldChangeViewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3161
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3162
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 3163
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v1}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3164
    .local v3, "view":Landroid/view/View;
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3165
    .local v2, "other":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-ne v2, p3, :cond_1

    .line 3162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3168
    :cond_1
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->getChangedHolderKey(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 3169
    .local v4, "otherKey":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    .line 3170
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3171
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3175
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3183
    .end local v2    # "other":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "otherKey":J
    :cond_3
    const-string v6, "RecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot be found but it is necessary for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    return-void
.end method

.method private hasUpdatedView()Z
    .locals 4

    .prologue
    .line 1475
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 1476
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1477
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1478
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1476
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1481
    :cond_1
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1482
    const/4 v3, 0x1

    .line 1485
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initChildrenHelper()V
    .locals 2

    .prologue
    .line 589
    new-instance v0, Lflyme/support/v7/widget/ChildHelper;

    new-instance v1, Lflyme/support/v7/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Lflyme/support/v7/widget/RecyclerView$5;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/ChildHelper;-><init>(Lflyme/support/v7/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    .line 686
    return-void
.end method

.method private jumpToPositionForSmoothScroller(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1367
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1372
    :goto_0
    return-void

    .line 1370
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1371
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method private onEnterLayoutOrScroll()V
    .locals 1

    .prologue
    .line 2745
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2746
    return-void
.end method

.method private onExitLayoutOrScroll()V
    .locals 2

    .prologue
    .line 2749
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2750
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2755
    const/4 v0, 0x0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2756
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 2758
    :cond_0
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 2563
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2564
    .local v0, "actionIndex":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iget v3, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-ne v2, v3, :cond_0

    .line 2566
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 2567
    .local v1, "newIndex":I
    :goto_0
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2568
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2569
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2571
    .end local v1    # "newIndex":I
    :cond_0
    return-void

    .line 2566
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postAnimationRunner()V
    .locals 1

    .prologue
    .line 2847
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 2848
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2851
    :cond_0
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .prologue
    .line 2854
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2864
    iget-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 2867
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/AdapterHelper;->reset()V

    .line 2868
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 2869
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsChanged(Lflyme/support/v7/widget/RecyclerView;)V

    .line 2874
    :cond_0
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2875
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/AdapterHelper;->preProcess()V

    .line 2879
    :goto_0
    iget-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_5

    :cond_1
    move v0, v2

    .line 2880
    .local v0, "animationTypeSupported":Z
    :goto_1
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    # getter for: Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->access$2600(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    move v3, v2

    :goto_2
    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4, v3}, Lflyme/support/v7/widget/RecyclerView$State;->access$2502(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 2884
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4}, Lflyme/support/v7/widget/RecyclerView$State;->access$2500(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_7

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v3, v2}, Lflyme/support/v7/widget/RecyclerView$State;->access$2302(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 2887
    return-void

    .line 2877
    .end local v0    # "animationTypeSupported":Z
    :cond_4
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2879
    goto :goto_1

    .restart local v0    # "animationTypeSupported":Z
    :cond_6
    move v3, v1

    .line 2880
    goto :goto_2

    :cond_7
    move v2, v1

    .line 2884
    goto :goto_3
.end method

.method private pullGlows(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1934
    const/4 v0, 0x0

    .line 1935
    .local v0, "invalidate":Z
    cmpg-float v1, p2, v4

    if-gez v1, :cond_4

    .line 1936
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 1937
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1938
    const/4 v0, 0x1

    .line 1947
    :cond_0
    :goto_0
    cmpg-float v1, p4, v4

    if-gez v1, :cond_5

    .line 1948
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 1949
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1950
    const/4 v0, 0x1

    .line 1959
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    cmpl-float v1, p2, v4

    if-nez v1, :cond_2

    cmpl-float v1, p4, v4

    if-eqz v1, :cond_3

    .line 1960
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1962
    :cond_3
    return-void

    .line 1940
    :cond_4
    cmpl-float v1, p2, v4

    if-lez v1, :cond_0

    .line 1941
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 1942
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1943
    const/4 v0, 0x1

    goto :goto_0

    .line 1952
    :cond_5
    cmpl-float v1, p4, v4

    if-lez v1, :cond_1

    .line 1953
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 1954
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1955
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private recordAnimationInfoIfBouncedHiddenView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 4
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "animationInfo"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 3195
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {p1, v2, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 3196
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v2}, Lflyme/support/v7/widget/RecyclerView$State;->access$2700(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3198
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->getChangedHolderKey(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 3199
    .local v0, "key":J
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lflyme/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3201
    .end local v0    # "key":J
    :cond_0
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, p1, p2}, Lflyme/support/v7/widget/ViewInfoStore;->addToPreLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3202
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    .prologue
    .line 1965
    const/4 v0, 0x0

    .line 1966
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 1967
    :cond_0
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1968
    :cond_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1969
    :cond_2
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1970
    :cond_3
    if-eqz v0, :cond_4

    .line 1971
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1973
    :cond_4
    return-void
.end method

.method private removeAnimatingView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1104
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1105
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, p1}, Lflyme/support/v7/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1106
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 1107
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1108
    .local v1, "viewHolder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->unscrapView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1109
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1115
    .end local v1    # "viewHolder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1116
    return v0

    .line 1115
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private repositionShadowingViews()V
    .locals 9

    .prologue
    .line 4281
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v7}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4282
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4283
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v2}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4284
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4285
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    iget-object v7, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v7, :cond_1

    .line 4286
    iget-object v7, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v7, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4287
    .local v4, "shadowingView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 4288
    .local v3, "left":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4289
    .local v5, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v3, v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v5, v7, :cond_1

    .line 4291
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 4282
    .end local v3    # "left":I
    .end local v4    # "shadowingView":Landroid/view/View;
    .end local v5    # "top":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4297
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .prologue
    .line 2550
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2551
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2553
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 2554
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->releaseGlows()V

    .line 2555
    return-void
.end method

.method private setAdapterInternal(Lflyme/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .locals 3
    .param p1, "adapter"    # Lflyme/support/v7/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .prologue
    .line 878
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mObserver:Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 880
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    .line 882
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 884
    :cond_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_2

    .line 885
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 891
    :cond_2
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    .line 892
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 893
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 896
    :cond_3
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 898
    :cond_4
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/AdapterHelper;->reset()V

    .line 899
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    .line 900
    .local v0, "oldAdapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    .line 901
    if-eqz p1, :cond_5

    .line 902
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mObserver:Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 903
    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    .line 905
    :cond_5
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_6

    .line 906
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 908
    :cond_6
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 909
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x1

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v1, v2}, Lflyme/support/v7/widget/RecyclerView$State;->access$1802(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 910
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 911
    return-void
.end method

.method private setDataSetChangedAfterLayout()V
    .locals 4

    .prologue
    .line 3605
    iget-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 3617
    :goto_0
    return-void

    .line 3608
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3609
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3610
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3611
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3612
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3613
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3610
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3616
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    goto :goto_0
.end method

.method private stopScrollersInternal()V
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 1906
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1907
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 1909
    :cond_0
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 1995
    if-gez p1, :cond_4

    .line 1996
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 1997
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 2003
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 2004
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2005
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 2011
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 2012
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2014
    :cond_3
    return-void

    .line 1998
    :cond_4
    if-lez p1, :cond_0

    .line 1999
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2000
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0

    .line 2006
    :cond_5
    if-lez p2, :cond_1

    .line 2007
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2008
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2127
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onAddFocusables(Lflyme/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2128
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2130
    :cond_1
    return-void
.end method

.method public addItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Lflyme/support/v7/widget/RecyclerView$ItemDecoration;

    .prologue
    .line 1250
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView;->addItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;I)V

    .line 1251
    return-void
.end method

.method public addItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;I)V
    .locals 2
    .param p1, "decor"    # Lflyme/support/v7/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .prologue
    .line 1221
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1225
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1228
    :cond_1
    if-gez p2, :cond_2

    .line 1229
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    :goto_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1234
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1235
    return-void

    .line 1231
    :cond_2
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2195
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2196
    if-nez p1, :cond_0

    .line 2197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2202
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3426
    instance-of v0, p1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->checkLayoutParams(Lflyme/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 4

    .prologue
    .line 3480
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3481
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3482
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3483
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3484
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 3481
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3487
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 3488
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1621
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1596
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1644
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1647
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1693
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1696
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1669
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1672
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1716
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1719
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method protected contentFits()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 11177
    const/4 v7, 0x0

    .line 11178
    .local v7, "result":Z
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 11179
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 11262
    :goto_0
    return v9

    .line 11180
    :cond_0
    const/4 v5, 0x0

    .line 11181
    .local v5, "itemCount":I
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v11, :cond_1

    .line 11182
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v11}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    .line 11184
    :cond_1
    if-eq v0, v5, :cond_2

    move v9, v10

    goto :goto_0

    .line 11187
    :cond_2
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v11, v11, Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v11, :cond_13

    .line 11188
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    .line 11189
    .local v6, "lm":Lflyme/support/v7/widget/StaggeredGridLayoutManager;
    invoke-virtual {v6}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v11

    if-ne v11, v9, :cond_b

    .line 11190
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v11

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v12

    sub-int v3, v11, v12

    .line 11191
    .local v3, "height":I
    invoke-virtual {v6}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getReverseLayout()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 11192
    invoke-virtual {v6, v13}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v1

    .line 11193
    .local v1, "data":[I
    aget v11, v1, v10

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    .line 11195
    .local v2, "end":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    array-length v11, v1

    if-ge v4, v11, :cond_4

    .line 11196
    aget v11, v1, v4

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v11

    if-le v2, v11, :cond_3

    .line 11197
    aget v11, v1, v4

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    .line 11195
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11200
    :cond_4
    invoke-virtual {v6, v10, v9}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v11, v2

    if-gt v11, v3, :cond_6

    move v7, v9

    .end local v1    # "data":[I
    .end local v2    # "end":I
    .end local v3    # "height":I
    .end local v4    # "i":I
    .end local v6    # "lm":Lflyme/support/v7/widget/StaggeredGridLayoutManager;
    :cond_5
    :goto_2
    move v9, v7

    .line 11262
    goto :goto_0

    .restart local v1    # "data":[I
    .restart local v2    # "end":I
    .restart local v3    # "height":I
    .restart local v4    # "i":I
    .restart local v6    # "lm":Lflyme/support/v7/widget/StaggeredGridLayoutManager;
    :cond_6
    move v7, v10

    .line 11200
    goto :goto_2

    .line 11203
    .end local v1    # "data":[I
    .end local v2    # "end":I
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v6, v13}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v1

    .line 11204
    .restart local v1    # "data":[I
    aget v11, v1, v10

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    .line 11205
    .restart local v2    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_3
    array-length v11, v1

    if-ge v4, v11, :cond_9

    .line 11206
    aget v11, v1, v4

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    if-ge v2, v11, :cond_8

    .line 11207
    aget v11, v1, v4

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    .line 11205
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 11210
    :cond_9
    invoke-virtual {v6, v10, v9}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v11

    sub-int v11, v2, v11

    if-gt v11, v3, :cond_a

    move v7, v9

    :goto_4
    goto :goto_2

    :cond_a
    move v7, v10

    goto :goto_4

    .line 11214
    .end local v1    # "data":[I
    .end local v2    # "end":I
    .end local v3    # "height":I
    .end local v4    # "i":I
    :cond_b
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v12

    sub-int v8, v11, v12

    .line 11215
    .local v8, "width":I
    invoke-virtual {v6}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getReverseLayout()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 11216
    invoke-virtual {v6, v13}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v1

    .line 11217
    .restart local v1    # "data":[I
    aget v11, v1, v10

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    .line 11218
    .restart local v2    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_5
    array-length v11, v1

    if-ge v4, v11, :cond_d

    .line 11219
    aget v11, v1, v4

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v11

    if-le v2, v11, :cond_c

    .line 11220
    aget v11, v1, v4

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    .line 11218
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 11223
    :cond_d
    invoke-virtual {v6, v10, v9}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v11, v2

    if-gt v11, v8, :cond_e

    move v7, v9

    .line 11226
    :goto_6
    goto/16 :goto_2

    :cond_e
    move v7, v10

    .line 11223
    goto :goto_6

    .line 11227
    .end local v1    # "data":[I
    .end local v2    # "end":I
    .end local v4    # "i":I
    :cond_f
    invoke-virtual {v6, v13}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v1

    .line 11228
    .restart local v1    # "data":[I
    aget v11, v1, v10

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 11229
    .restart local v2    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_7
    array-length v11, v1

    if-ge v4, v11, :cond_11

    .line 11230
    aget v11, v1, v4

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v11

    if-ge v2, v11, :cond_10

    .line 11231
    aget v11, v1, v4

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 11229
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 11234
    :cond_11
    invoke-virtual {v6, v10, v9}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v11

    sub-int v11, v2, v11

    if-gt v11, v8, :cond_12

    move v7, v9

    :goto_8
    goto/16 :goto_2

    :cond_12
    move v7, v10

    goto :goto_8

    .line 11238
    .end local v1    # "data":[I
    .end local v2    # "end":I
    .end local v4    # "i":I
    .end local v6    # "lm":Lflyme/support/v7/widget/StaggeredGridLayoutManager;
    .end local v8    # "width":I
    :cond_13
    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v11, v11, Lflyme/support/v7/widget/LinearLayoutManager;

    if-eqz v11, :cond_5

    .line 11239
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v6, Lflyme/support/v7/widget/LinearLayoutManager;

    .line 11240
    .local v6, "lm":Lflyme/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v6}, Lflyme/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v11

    if-ne v11, v9, :cond_17

    .line 11241
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v11

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v12

    sub-int v3, v11, v12

    .line 11242
    .restart local v3    # "height":I
    invoke-virtual {v6}, Lflyme/support/v7/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 11243
    invoke-virtual {v6, v10}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/LinearLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v6, v12}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v6, v12}, Lflyme/support/v7/widget/LinearLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v11, v12

    if-gt v11, v3, :cond_14

    move v7, v9

    :goto_9
    goto/16 :goto_2

    :cond_14
    move v7, v10

    goto :goto_9

    .line 11246
    :cond_15
    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/LinearLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v6, v10}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v6, v12}, Lflyme/support/v7/widget/LinearLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v11, v12

    if-gt v11, v3, :cond_16

    move v7, v9

    :goto_a
    goto/16 :goto_2

    :cond_16
    move v7, v10

    goto :goto_a

    .line 11251
    .end local v3    # "height":I
    :cond_17
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v12

    sub-int v8, v11, v12

    .line 11252
    .restart local v8    # "width":I
    invoke-virtual {v6}, Lflyme/support/v7/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v11

    if-eqz v11, :cond_19

    .line 11253
    invoke-virtual {v6, v10}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/LinearLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v11

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v6, v12}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v6, v12}, Lflyme/support/v7/widget/LinearLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v11, v12

    if-gt v11, v8, :cond_18

    move v7, v9

    :goto_b
    goto/16 :goto_2

    :cond_18
    move v7, v10

    goto :goto_b

    .line 11256
    :cond_19
    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Lflyme/support/v7/widget/LinearLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v6, v10}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v6, v12}, Lflyme/support/v7/widget/LinearLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v11, v12

    if-gt v11, v8, :cond_1a

    move v7, v9

    :goto_c
    goto/16 :goto_2

    :cond_1a
    move v7, v10

    goto :goto_c
.end method

.method defaultOnMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 2703
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v3

    invoke-static {p1, v2, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    .line 2706
    .local v1, "width":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    invoke-static {p2, v2, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 2710
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lflyme/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 2711
    return-void
.end method

.method dispatchLayout()V
    .locals 2

    .prologue
    .line 2915
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 2916
    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    :goto_0
    return-void

    .line 2920
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 2921
    const-string v0, "RecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2925
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView$State;->access$2202(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 2926
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView$State;->access$2100(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2927
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 2928
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lflyme/support/v7/widget/RecyclerView;)V

    .line 2929
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2940
    :goto_1
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep3()V

    goto :goto_0

    .line 2930
    :cond_2
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 2934
    :cond_3
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lflyme/support/v7/widget/RecyclerView;)V

    .line 2935
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    .line 2938
    :cond_4
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lflyme/support/v7/widget/RecyclerView;)V

    goto :goto_1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 9427
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 9432
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 9422
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 9416
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 4023
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 4024
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 4029
    :cond_0
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4032
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 4033
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V

    .line 4035
    :cond_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 4036
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4037
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V

    .line 4036
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4040
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .prologue
    .line 3987
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v1

    .line 3988
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v2

    .line 3989
    .local v2, "scrollY":I
    invoke-virtual {p0, v1, v2, v1, v2}, Lflyme/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 3992
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 3996
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v3, :cond_0

    .line 3997
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Lflyme/support/v7/widget/RecyclerView;II)V

    .line 3999
    :cond_0
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 4000
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4001
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Lflyme/support/v7/widget/RecyclerView;II)V

    .line 4000
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4004
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1072
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1073
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1064
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1065
    return-void
.end method

.method protected doSomethingWhenStructureChange()V
    .locals 0

    .prologue
    .line 11268
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3339
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3341
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3342
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3343
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v6, p1, p0, v9}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 3342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3347
    :cond_0
    const/4 v2, 0x0

    .line 3348
    .local v2, "needsInvalidate":Z
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3349
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3350
    .local v4, "restore":I
    iget-boolean v6, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    .line 3351
    .local v3, "padding":I
    :goto_1
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3352
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3353
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v2, v8

    .line 3354
    :goto_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3356
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    :cond_1
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3357
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3363
    .restart local v4    # "restore":I
    iget v6, p0, Lflyme/support/v7/widget/RecyclerView;->mEdgeEffectPaddingTop:I

    if-ltz v6, :cond_9

    .line 3364
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    iget v9, p0, Lflyme/support/v7/widget/RecyclerView;->mEdgeEffectPaddingTop:I

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3369
    :goto_3
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v8

    :goto_4
    or-int/2addr v2, v6

    .line 3370
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3372
    .end local v4    # "restore":I
    :cond_2
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3373
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3374
    .restart local v4    # "restore":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3375
    .local v5, "width":I
    iget-boolean v6, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 3376
    .restart local v3    # "padding":I
    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3377
    neg-int v6, v3

    int-to-float v6, v6

    neg-int v9, v5

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3378
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v8

    :goto_6
    or-int/2addr v2, v6

    .line 3379
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3381
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    .end local v5    # "width":I
    :cond_3
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3382
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3383
    .restart local v4    # "restore":I
    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3391
    iget v6, p0, Lflyme/support/v7/widget/RecyclerView;->mEdgeEffectPaddingBottom:I

    if-ltz v6, :cond_d

    .line 3392
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    iget v10, p0, Lflyme/support/v7/widget/RecyclerView;->mEdgeEffectPaddingBottom:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3397
    :goto_7
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_e

    :goto_8
    or-int/2addr v2, v8

    .line 3398
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3404
    .end local v4    # "restore":I
    :cond_4
    if-nez v2, :cond_5

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v6}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3406
    const/4 v2, 0x1

    .line 3409
    :cond_5
    if-eqz v2, :cond_6

    .line 3410
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3412
    :cond_6
    return-void

    .restart local v4    # "restore":I
    :cond_7
    move v3, v7

    .line 3350
    goto/16 :goto_1

    .restart local v3    # "padding":I
    :cond_8
    move v2, v7

    .line 3353
    goto/16 :goto_2

    .line 3366
    .end local v3    # "padding":I
    :cond_9
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3

    :cond_a
    move v6, v7

    .line 3369
    goto/16 :goto_4

    .restart local v5    # "width":I
    :cond_b
    move v3, v7

    .line 3375
    goto/16 :goto_5

    .restart local v3    # "padding":I
    :cond_c
    move v6, v7

    .line 3378
    goto :goto_6

    .line 3394
    .end local v3    # "padding":I
    .end local v5    # "width":I
    :cond_d
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_e
    move v8, v7

    .line 3397
    goto :goto_8
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3885
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .locals 2

    .prologue
    .line 1724
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1725
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1728
    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .prologue
    .line 2057
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2067
    :goto_0
    return-void

    .line 2060
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2061
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2062
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2065
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureLeftGlow()V
    .locals 4

    .prologue
    .line 2017
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2027
    :goto_0
    return-void

    .line 2020
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2021
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2022
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2025
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureRightGlow()V
    .locals 4

    .prologue
    .line 2030
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2040
    :goto_0
    return-void

    .line 2033
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2034
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2035
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2038
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureTopGlow()V
    .locals 4

    .prologue
    .line 2043
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2054
    :goto_0
    return-void

    .line 2046
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2047
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2048
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2051
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3868
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v1

    .line 3869
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3870
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v5, v2}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3871
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    .line 3872
    .local v3, "translationX":F
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    .line 3873
    .local v4, "translationY":F
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 3880
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :goto_1
    return-object v0

    .line 3869
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "translationX":F
    .restart local v4    # "translationY":F
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3880
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3681
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3682
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 3683
    check-cast p1, Landroid/view/View;

    .line 3684
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 3686
    :cond_0
    if-ne v0, p0, :cond_1

    .end local p1    # "view":Landroid/view/View;
    :goto_1
    return-object p1

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method findViewHolderForPosition(IZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .prologue
    .line 3817
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3818
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 3819
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3820
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3821
    if-eqz p2, :cond_1

    .line 3822
    iget v3, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v3, p1, :cond_2

    .line 3833
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_1
    return-object v1

    .line 3825
    .restart local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 3818
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3833
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public fling(II)Z
    .locals 7
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1855
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_1

    .line 1856
    const-string v4, "RecyclerView"

    const-string v5, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_0
    :goto_0
    return v3

    .line 1860
    :cond_1
    iget-boolean v5, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v5, :cond_0

    .line 1864
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 1865
    .local v1, "canScrollHorizontal":Z
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 1867
    .local v2, "canScrollVertical":Z
    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lflyme/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_3

    .line 1868
    :cond_2
    const/4 p1, 0x0

    .line 1870
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lflyme/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_5

    .line 1871
    :cond_4
    const/4 p2, 0x0

    .line 1873
    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_0

    .line 1878
    :cond_6
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6}, Lflyme/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1879
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    move v0, v4

    .line 1880
    .local v0, "canScroll":Z
    :goto_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v0}, Lflyme/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 1882
    if-eqz v0, :cond_0

    .line 1883
    iget v3, p0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1884
    iget v3, p0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1885
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v3, p1, p2}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->fling(II)V

    move v3, v4

    .line 1886
    goto :goto_0

    .end local v0    # "canScroll":Z
    :cond_8
    move v0, v3

    .line 1879
    goto :goto_1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 2077
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2078
    .local v1, "result":Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 2089
    :goto_0
    return-object v2

    .line 2081
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 2082
    .local v0, "ff":Landroid/view/FocusFinder;
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2083
    if-nez v1, :cond_1

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_1

    .line 2085
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2086
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p2, v3, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v1

    .line 2087
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2089
    :cond_1
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3431
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3432
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3434
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3439
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3440
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3442
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3447
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3448
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3450
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    .line 950
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method getChangedHolderKey(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 2
    .param p1, "holder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3268
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3727
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3728
    .local v0, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 11108
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 11109
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 11111
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    goto :goto_0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3742
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3743
    .local v0, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3658
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3659
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 3660
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3663
    :cond_0
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 3940
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 3941
    .local v3, "lp":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    iget-boolean v4, v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 3942
    iget-object v2, v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3957
    :goto_0
    return-object v2

    .line 3945
    :cond_0
    iget-object v2, v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3946
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3947
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3948
    .local v0, "decorCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 3949
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3950
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v5, p1, p0, v6}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 3951
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 3952
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 3953
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 3954
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 3948
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3956
    :cond_1
    iput-boolean v7, v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_0
.end method

.method public getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 1927
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 1917
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1186
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 9410
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .prologue
    .line 4056
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

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

.method initAdapterManager()V
    .locals 2

    .prologue
    .line 689
    new-instance v0, Lflyme/support/v7/widget/AdapterHelper;

    new-instance v1, Lflyme/support/v7/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Lflyme/support/v7/widget/RecyclerView$6;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/AdapterHelper;-><init>(Lflyme/support/v7/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    .line 767
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    .prologue
    .line 2070
    const/4 v0, 0x0

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2071
    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 2761
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2166
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    .prologue
    .line 2795
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 9395
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 3329
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 3330
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3331
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3332
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3334
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3335
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 3624
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3625
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3626
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3627
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3628
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3625
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3631
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 3632
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 3633
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 3933
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3934
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3935
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3934
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3937
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3
    .param p1, "dy"    # I

    .prologue
    .line 3895
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3896
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3897
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3899
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3525
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3526
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3527
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3528
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 3533
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3534
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v4, 0x1

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v3, v4}, Lflyme/support/v7/widget/RecyclerView$State;->access$1802(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 3526
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3537
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 3538
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3539
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v8, 0x0

    .line 3491
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3493
    .local v0, "childCount":I
    if-ge p1, p2, :cond_1

    .line 3494
    move v5, p1

    .line 3495
    .local v5, "start":I
    move v1, p2

    .line 3496
    .local v1, "end":I
    const/4 v4, -0x1

    .line 3503
    .local v4, "inBetweenOffset":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 3504
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v3}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3505
    .local v2, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2

    .line 3503
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3498
    .end local v1    # "end":I
    .end local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 3499
    .restart local v5    # "start":I
    move v1, p1

    .line 3500
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 3512
    .restart local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 3513
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v8}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3518
    :goto_3
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v7, 0x1

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v6, v7}, Lflyme/support/v7/widget/RecyclerView$State;->access$1802(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_2

    .line 3515
    :cond_3
    invoke-virtual {v2, v4, v8}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    .line 3520
    .end local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 3521
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3522
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    const/4 v6, 0x1

    .line 3543
    add-int v3, p1, p2

    .line 3544
    .local v3, "positionEnd":I
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3545
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3546
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3547
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3548
    iget v4, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 3554
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3555
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v4, v6}, Lflyme/support/v7/widget/RecyclerView$State;->access$1802(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 3545
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3556
    :cond_1
    iget v4, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 3561
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v1, v4, v5, p3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 3563
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v4, v6}, Lflyme/support/v7/widget/RecyclerView$State;->access$1802(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_1

    .line 3567
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 3568
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3569
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2134
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2135
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2137
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2138
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lflyme/support/v7/widget/RecyclerView;)V

    .line 2141
    :cond_0
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2142
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3912
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3924
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2146
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2147
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 2148
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2150
    :cond_0
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2152
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScroll()V

    .line 2153
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2154
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 2155
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 2157
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2158
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ViewInfoStore;->onDetach()V

    .line 2159
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 3416
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3418
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3419
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3420
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 3419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3422
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2575
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_1

    .line 2606
    :cond_0
    :goto_0
    return v5

    .line 2578
    :cond_1
    iget-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    .line 2581
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getSource(Landroid/view/MotionEvent;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 2582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 2584
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2587
    const/16 v3, 0x9

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v3

    neg-float v2, v3

    .line 2592
    .local v2, "vScroll":F
    :goto_1
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2593
    const/16 v3, 0xa

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2599
    .local v0, "hScroll":F
    :goto_2
    cmpl-float v3, v2, v6

    if-nez v3, :cond_2

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_0

    .line 2600
    :cond_2
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    .line 2601
    .local v1, "scrollFactor":F
    mul-float v3, v0, v1

    float-to-int v3, v3

    mul-float v4, v2, v1

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lflyme/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2590
    .end local v0    # "hScroll":F
    .end local v1    # "scrollFactor":F
    .end local v2    # "vScroll":F
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "vScroll":F
    goto :goto_1

    .line 2596
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "hScroll":F
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2283
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v13, :cond_0

    .line 2286
    const/4 v13, 0x0

    .line 2387
    :goto_0
    return v13

    .line 2288
    :cond_0
    invoke-direct/range {p0 .. p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2289
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2290
    const/4 v13, 0x1

    goto :goto_0

    .line 2293
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v13, :cond_2

    .line 2294
    const/4 v13, 0x0

    goto :goto_0

    .line 2297
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    .line 2298
    .local v3, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    .line 2300
    .local v4, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v13, :cond_3

    .line 2301
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2303
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2305
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 2306
    .local v1, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2308
    .local v2, "actionIndex":I
    packed-switch v1, :pswitch_data_0

    .line 2387
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v13, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    const/4 v13, 0x1

    goto :goto_0

    .line 2310
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lflyme/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v13, :cond_5

    .line 2311
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lflyme/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2313
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2314
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2315
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2317
    move-object/from16 v0, p0

    iget v13, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 2320
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 2321
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_6

    .line 2322
    const/4 v13, 0x1

    invoke-interface {v9, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2324
    :cond_6
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2328
    .end local v9    # "parent":Landroid/view/ViewParent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    const/16 v16, 0x1

    const/16 v17, 0x0

    aput v17, v15, v16

    aput v17, v13, v14

    .line 2330
    const/4 v8, 0x0

    .line 2331
    .local v8, "nestedScrollAxis":I
    if-eqz v3, :cond_8

    .line 2332
    or-int/lit8 v8, v8, 0x1

    .line 2334
    :cond_8
    if-eqz v4, :cond_9

    .line 2335
    or-int/lit8 v8, v8, 0x2

    .line 2337
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lflyme/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2341
    .end local v8    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2342
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2343
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 2347
    :pswitch_3
    move-object/from16 v0, p0

    iget v13, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 2348
    .local v7, "index":I
    if-gez v7, :cond_a

    .line 2349
    const-string v13, "RecyclerView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error processing scroll; pointer index for id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2354
    :cond_a
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v11, v13

    .line 2355
    .local v11, "x":I
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v12, v13

    .line 2356
    .local v12, "y":I
    move-object/from16 v0, p0

    iget v13, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    .line 2357
    move-object/from16 v0, p0

    iget v13, v0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    sub-int v5, v11, v13

    .line 2358
    .local v5, "dx":I
    move-object/from16 v0, p0

    iget v13, v0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    sub-int v6, v12, v13

    .line 2359
    .local v6, "dy":I
    const/4 v10, 0x0

    .line 2360
    .local v10, "startScroll":Z
    if-eqz v3, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v13, v14, :cond_b

    .line 2361
    move-object/from16 v0, p0

    iget v14, v0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p0

    iget v15, v0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-gez v5, :cond_d

    const/4 v13, -0x1

    :goto_2
    mul-int/2addr v13, v15

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2362
    const/4 v10, 0x1

    .line 2364
    :cond_b
    if-eqz v4, :cond_c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v13, v14, :cond_c

    .line 2365
    move-object/from16 v0, p0

    iget v14, v0, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    move-object/from16 v0, p0

    iget v15, v0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-gez v6, :cond_e

    const/4 v13, -0x1

    :goto_3
    mul-int/2addr v13, v15

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 2366
    const/4 v10, 0x1

    .line 2368
    :cond_c
    if-eqz v10, :cond_4

    .line 2369
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    .line 2361
    :cond_d
    const/4 v13, 0x1

    goto :goto_2

    .line 2365
    :cond_e
    const/4 v13, 0x1

    goto :goto_3

    .line 2375
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "index":I
    .end local v10    # "startScroll":Z
    .end local v11    # "x":I
    .end local v12    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lflyme/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2379
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    .line 2380
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 2384
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2387
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 3313
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3314
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 3315
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 3316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3317
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2628
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v4, :cond_1

    .line 2629
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 2695
    :cond_0
    :goto_0
    return-void

    .line 2632
    :cond_1
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    # getter for: Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z
    invoke-static {v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->access$2000(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2633
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2634
    .local v2, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2635
    .local v0, "heightMode":I
    if-ne v2, v7, :cond_2

    if-ne v0, v7, :cond_2

    move v1, v3

    .line 2637
    .local v1, "skipMeasure":Z
    :cond_2
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V

    .line 2638
    if-nez v1, :cond_0

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_0

    .line 2641
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v4}, Lflyme/support/v7/widget/RecyclerView$State;->access$2100(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 2642
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 2646
    :cond_3
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2647
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v4, v3}, Lflyme/support/v7/widget/RecyclerView$State;->access$2202(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 2648
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2651
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 2655
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2656
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2659
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v4, v3}, Lflyme/support/v7/widget/RecyclerView$State;->access$2202(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 2660
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2662
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    goto :goto_0

    .line 2665
    .end local v0    # "heightMode":I
    .end local v1    # "skipMeasure":Z
    .end local v2    # "widthMode":I
    :cond_4
    iget-boolean v4, p0, Lflyme/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v4, :cond_5

    .line 2666
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V

    goto :goto_0

    .line 2670
    :cond_5
    iget-boolean v4, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v4, :cond_6

    .line 2671
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2672
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2674
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v4}, Lflyme/support/v7/widget/RecyclerView$State;->access$2300(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2675
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v4, v3}, Lflyme/support/v7/widget/RecyclerView$State;->access$2402(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 2681
    :goto_1
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 2682
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2685
    :cond_6
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_8

    .line 2686
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    iput v4, v3, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 2690
    :goto_2
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2691
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V

    .line 2692
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2693
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v3, v1}, Lflyme/support/v7/widget/RecyclerView$State;->access$2402(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    goto/16 :goto_0

    .line 2678
    :cond_7
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 2679
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v3, v1}, Lflyme/support/v7/widget/RecyclerView$State;->access$2402(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_1

    .line 2688
    :cond_8
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iput v1, v3, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1052
    check-cast p1, Lflyme/support/v7/widget/RecyclerView$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    .line 1053
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1054
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1057
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1038
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1039
    .local v0, "state":Lflyme/support/v7/widget/RecyclerView$SavedState;
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mPendingSavedState:Lflyme/support/v7/widget/RecyclerView$SavedState;

    # invokes: Lflyme/support/v7/widget/RecyclerView$SavedState;->copyFrom(Lflyme/support/v7/widget/RecyclerView$SavedState;)V
    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView$SavedState;->access$1900(Lflyme/support/v7/widget/RecyclerView$SavedState;Lflyme/support/v7/widget/RecyclerView$SavedState;)V

    .line 1047
    :goto_0
    return-object v0

    .line 1041
    :cond_0
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 1042
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lflyme/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 1044
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lflyme/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 4018
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 3982
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2715
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2716
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2717
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 2720
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2402
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lflyme/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2403
    :cond_0
    const/16 v18, 0x0

    .line 2546
    :goto_0
    return v18

    .line 2405
    :cond_1
    invoke-direct/range {p0 .. p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2406
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2407
    const/16 v18, 0x1

    goto :goto_0

    .line 2410
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 2411
    const/16 v18, 0x0

    goto :goto_0

    .line 2414
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    .line 2415
    .local v5, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    .line 2417
    .local v6, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 2418
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2420
    :cond_4
    const/4 v9, 0x0

    .line 2422
    .local v9, "eventAddedToVelocityTracker":Z
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .line 2423
    .local v13, "vtev":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 2424
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 2426
    .local v4, "actionIndex":I
    if-nez v3, :cond_5

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    aput v22, v20, v21

    aput v22, v18, v19

    .line 2429
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2431
    packed-switch v3, :pswitch_data_0

    .line 2541
    :cond_6
    :goto_1
    :pswitch_0
    if-nez v9, :cond_7

    .line 2542
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2544
    :cond_7
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 2546
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 2433
    :pswitch_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2434
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2435
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2437
    const/4 v11, 0x0

    .line 2438
    .local v11, "nestedScrollAxis":I
    if-eqz v5, :cond_8

    .line 2439
    or-int/lit8 v11, v11, 0x1

    .line 2441
    :cond_8
    if-eqz v6, :cond_9

    .line 2442
    or-int/lit8 v11, v11, 0x2

    .line 2444
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lflyme/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2448
    .end local v11    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2449
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2450
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 2454
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 2455
    .local v10, "index":I
    if-gez v10, :cond_a

    .line 2456
    const-string v18, "RecyclerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2461
    :cond_a
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    .line 2462
    .local v14, "x":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2463
    .local v16, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v18, v0

    sub-int v7, v18, v14

    .line 2464
    .local v7, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v18, v0

    sub-int v8, v18, v16

    .line 2466
    .local v8, "dy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v7, v8, v1, v2}, Lflyme/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2467
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v7, v7, v18

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v8, v8, v18

    .line 2469
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 2475
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 2476
    const/4 v12, 0x0

    .line 2477
    .local v12, "startScroll":Z
    if-eqz v5, :cond_c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 2478
    if-lez v7, :cond_f

    .line 2479
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v7, v7, v18

    .line 2483
    :goto_2
    const/4 v12, 0x1

    .line 2485
    :cond_c
    if-eqz v6, :cond_d

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 2486
    if-lez v8, :cond_10

    .line 2487
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v8, v8, v18

    .line 2491
    :goto_3
    const/4 v12, 0x1

    .line 2493
    :cond_d
    if-eqz v12, :cond_e

    .line 2494
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2498
    .end local v12    # "startScroll":Z
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 2499
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v18, v16, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 2502
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    if-eqz v18, :cond_6

    if-eqz v5, :cond_11

    .end local v7    # "dx":I
    :goto_4
    if-eqz v6, :cond_12

    .end local v8    # "dy":I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v13}, Lflyme/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2506
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 2481
    .restart local v7    # "dx":I
    .restart local v8    # "dy":I
    .restart local v12    # "startScroll":Z
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v7, v7, v18

    goto :goto_2

    .line 2489
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v8, v8, v18

    goto :goto_3

    .line 2502
    .end local v12    # "startScroll":Z
    :cond_11
    const/4 v7, 0x0

    goto :goto_4

    .end local v7    # "dx":I
    :cond_12
    const/4 v8, 0x0

    goto :goto_5

    .line 2512
    .end local v8    # "dy":I
    .end local v10    # "index":I
    .end local v14    # "x":I
    .end local v16    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lflyme/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2516
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2517
    const/4 v9, 0x1

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2519
    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    neg-float v15, v0

    .line 2521
    .local v15, "xvel":F
    :goto_6
    if-eqz v6, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v17, v0

    .line 2525
    .local v17, "yvel":F
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView;->contentFits()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 2526
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2533
    :cond_13
    :goto_8
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView;->resetTouch()V

    goto/16 :goto_1

    .line 2519
    .end local v15    # "xvel":F
    .end local v17    # "yvel":F
    :cond_14
    const/4 v15, 0x0

    goto :goto_6

    .line 2521
    .restart local v15    # "xvel":F
    :cond_15
    const/16 v17, 0x0

    goto :goto_7

    .line 2528
    .restart local v17    # "yvel":F
    :cond_16
    const/16 v18, 0x0

    cmpl-float v18, v15, v18

    if-nez v18, :cond_17

    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-eqz v18, :cond_18

    :cond_17
    float-to-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v18

    if-nez v18, :cond_13

    .line 2529
    :cond_18
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_8

    .line 2537
    .end local v15    # "xvel":F
    .end local v17    # "yvel":F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 3250
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3251
    .local v0, "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 3252
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3253
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 3259
    :cond_0
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3260
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3261
    return-void

    .line 3254
    :cond_1
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3255
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2094
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, p0, v5, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    .line 2095
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2100
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2101
    .local v0, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 2103
    check-cast v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 2104
    .local v2, "lp":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    iget-boolean v4, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 2105
    iget-object v1, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2106
    .local v1, "insets":Landroid/graphics/Rect;
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2107
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2108
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2109
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2113
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "lp":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    :cond_0
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Lflyme/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2114
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4}, Lflyme/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2115
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, p1, v4, v3}, Lflyme/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2117
    .end local v0    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2118
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2122
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2392
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2393
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2394
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2395
    .local v1, "listener":Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v1, p1}, Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2397
    .end local v1    # "listener":Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2398
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3321
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 3322
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3326
    :goto_0
    return-void

    .line 3324
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 3
    .param p1, "performLayoutChildren"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1731
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-ge v0, v1, :cond_0

    .line 1736
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1738
    :cond_0
    if-nez p1, :cond_1

    .line 1747
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1749
    :cond_1
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v0, v1, :cond_3

    .line 1751
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 1753
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1755
    :cond_2
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_3

    .line 1756
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1759
    :cond_3
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1760
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .prologue
    .line 3466
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3467
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3468
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3473
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3474
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 3467
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3477
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1409
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_1

    .line 1410
    const-string v2, "RecyclerView"

    const-string v3, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    .end local p1    # "x":I
    .end local p2    # "y":I
    :cond_0
    :goto_0
    return-void

    .line 1414
    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_1
    iget-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    .line 1417
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1418
    .local v0, "canScrollHorizontal":Z
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1419
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 1420
    :cond_2
    if-eqz v0, :cond_3

    .end local p1    # "x":I
    :goto_1
    if-eqz v1, :cond_4

    .end local p2    # "y":I
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lflyme/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_3
    move p1, v2

    goto :goto_1

    .end local p1    # "x":I
    :cond_4
    move p2, v2

    goto :goto_2
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1500
    const/4 v3, 0x0

    .local v3, "unconsumedX":I
    const/4 v4, 0x0

    .line 1501
    .local v4, "unconsumedY":I
    const/4 v1, 0x0

    .local v1, "consumedX":I
    const/4 v2, 0x0

    .line 1503
    .local v2, "consumedY":I
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1504
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 1505
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1506
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1507
    const-string v0, "RV Scroll"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1508
    if-eqz p1, :cond_0

    .line 1509
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, v5, v9}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 1510
    sub-int v3, p1, v1

    .line 1512
    :cond_0
    if-eqz p2, :cond_1

    .line 1513
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p2, v5, v9}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v2

    .line 1514
    sub-int v4, p2, v2

    .line 1516
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1517
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 1518
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1519
    invoke-virtual {p0, v7}, Lflyme/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1523
    :cond_2
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->contentFits()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1531
    :cond_3
    :goto_0
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1533
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v7

    sub-int/2addr v0, v5

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1534
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v8

    sub-int/2addr v0, v5

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 1535
    if-eqz p3, :cond_4

    .line 1536
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v7

    int-to-float v0, v0

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v8

    int-to-float v5, v5

    invoke-virtual {p3, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1538
    :cond_4
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v7

    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v9, v9, v7

    add-int/2addr v5, v9

    aput v5, v0, v7

    .line 1539
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v8

    iget-object v9, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v9, v9, v8

    add-int/2addr v5, v9

    aput v5, v0, v8

    .line 1559
    :cond_5
    :goto_1
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 1560
    :cond_6
    invoke-virtual {p0, v1, v2}, Lflyme/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1564
    :cond_7
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->contentFits()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1573
    :cond_8
    :goto_2
    if-nez v1, :cond_9

    if-eqz v2, :cond_f

    :cond_9
    move v0, v8

    :goto_3
    return v0

    .line 1526
    :cond_a
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1527
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_0

    .line 1540
    :cond_b
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    .line 1548
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v6

    .line 1549
    .local v6, "overscrollMode":I
    if-ne v6, v8, :cond_c

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->contentFits()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1552
    :cond_c
    if-eqz p3, :cond_d

    .line 1553
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v5, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    int-to-float v10, v4

    invoke-direct {p0, v0, v5, v9, v10}, Lflyme/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1555
    :cond_d
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_1

    .line 1567
    .end local v6    # "overscrollMode":I
    :cond_e
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1568
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_2

    :cond_f
    move v0, v7

    .line 1573
    goto :goto_3
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1403
    const-string v0, "RecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1353
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1364
    :goto_0
    return-void

    .line 1356
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1357
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1358
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1362
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1363
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2823
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2827
    :goto_0
    return-void

    .line 2826
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 1
    .param p1, "accessibilityDelegate"    # Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .prologue
    .line 518
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 519
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 520
    return-void
.end method

.method public setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lflyme/support/v7/widget/RecyclerView$Adapter;

    .prologue
    const/4 v1, 0x0

    .line 862
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 863
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lflyme/support/v7/widget/RecyclerView;->setAdapterInternal(Lflyme/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 864
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    .line 865
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 794
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 797
    :cond_0
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 798
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 799
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    .line 802
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .param p1, "hasFixedSize"    # Z

    .prologue
    .line 781
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    .line 782
    return-void
.end method

.method public setItemAnimator(Lflyme/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "animator"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    .prologue
    .line 2734
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2736
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2738
    :cond_0
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    .line 2739
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 2740
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimatorListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2742
    :cond_1
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 10
    .param p1, "frozen"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1785
    iget-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v2, :cond_1

    .line 1786
    const-string v2, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1787
    if-nez p1, :cond_2

    .line 1788
    iput-boolean v7, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1789
    iget-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_0

    .line 1790
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1792
    :cond_0
    iput-boolean v7, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1803
    :cond_1
    :goto_0
    return-void

    .line 1794
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1795
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1797
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lflyme/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1798
    iput-boolean v9, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1799
    iput-boolean v9, p0, Lflyme/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 1800
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScroll()V

    goto :goto_0
.end method

.method public setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layout"    # Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 1007
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    .line 1034
    :goto_0
    return-void

    .line 1010
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1013
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    .line 1014
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 1017
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    .line 1019
    :cond_2
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1021
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1022
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .line 1023
    if-eqz p1, :cond_4

    .line 1024
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 1025
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_3
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    .line 1029
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_4

    .line 1030
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lflyme/support/v7/widget/RecyclerView;)V

    .line 1033
    :cond_4
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 9390
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 9391
    return-void
.end method

.method public setOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lflyme/support/v7/widget/RecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1305
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    .line 1306
    return-void
.end method

.method protected setScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1192
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 1204
    :goto_0
    return-void

    .line 1199
    :cond_0
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollState:I

    .line 1200
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1201
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1203
    :cond_1
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    goto :goto_0
.end method

.method setupChild(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 11154
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2807
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2808
    const/4 v0, 0x0

    .line 2809
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2810
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    .line 2812
    :cond_0
    if-nez v0, :cond_1

    .line 2813
    const/4 v0, 0x0

    .line 2815
    :cond_1
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lflyme/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2816
    const/4 v1, 0x1

    .line 2818
    .end local v0    # "type":I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1822
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1823
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_0
    :goto_0
    return-void

    .line 1827
    :cond_1
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1830
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1831
    const/4 p1, 0x0

    .line 1833
    :cond_2
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1834
    const/4 p2, 0x0

    .line 1836
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_0

    .line 1837
    :cond_4
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1390
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1399
    :goto_0
    return-void

    .line 1393
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1394
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1398
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;I)V

    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 9400
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 9405
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 9406
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 1897
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1898
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1899
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 3578
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 3579
    .local v1, "childCount":I
    add-int v4, p1, p2

    .line 3581
    .local v4, "positionEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 3582
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v5, v3}, Lflyme/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3583
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3584
    .local v2, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3581
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3587
    :cond_1
    iget v5, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_0

    iget v5, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v4, :cond_0

    .line 3590
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3591
    invoke-virtual {v2, p3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 3593
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1

    .line 3596
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v5, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 3597
    return-void
.end method
