.class public Lcom/meizu/common/widget/EnhanceGallery;
.super Lcom/meizu/common/widget/AbsSpinner;
.source "EnhanceGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;,
        Lcom/meizu/common/widget/EnhanceGallery$PerformClick;,
        Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;,
        Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;,
        Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;,
        Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;,
        Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;,
        Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;,
        Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;,
        Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;,
        Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final MIN_FLING_VELOCITY:I = 0x5dc

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x2

.field static final TOUCH_MODE_OVERFLING:I = 0x4

.field static final TOUCH_MODE_OVERSCROLL:I = 0x3

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x1


# instance fields
.field private mAccDelegateStates:Z

.field private mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

.field private mAnimationDuration:I

.field private mChangeChildAlphaWhenDragView:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemCount:I

.field private mChildWidth:I

.field private mChoiceActionMode:Landroid/view/ActionMode;

.field private mChoiceMode:I

.field private mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

.field private mCurrentOverScrollDistance:I

.field private mDefaultMaxOverScrollDistance:I

.field private mDeltaLength:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownFirstPosition:I

.field private mDownLastPosition:I

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mDragAndDropPosition:I

.field private mDragEnable:Z

.field private mDragOffsetX:I

.field private mDragOffsetY:I

.field private mDragScrollY:I

.field private mDragViewBackground:I

.field private mDragViewBackgroundDelete:I

.field private mDragViewBackgroundFilter:I

.field private mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLastScrollState:I

.field private mMaxOverScrollDistance:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

.field private mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

.field private mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

.field private mScrollEnableWhenLessContent:Z

.field private mSelectedChild:Landroid/view/View;

.field private mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 378
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 381
    const v0, 0x7f010111

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/EnhanceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 382
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 197
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 203
    const/16 v2, 0xfa

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    .line 225
    new-instance v2, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    .line 231
    new-instance v2, Lcom/meizu/common/widget/EnhanceGallery$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/EnhanceGallery$1;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 256
    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    .line 261
    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 269
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    .line 283
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    .line 298
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    .line 304
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    .line 336
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    .line 338
    const v2, 0x7f0201cb

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    .line 340
    const v2, 0x7f0201ca

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    .line 342
    const v2, 0x7f0201c9

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    .line 356
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    .line 357
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 358
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    .line 359
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    .line 374
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    .line 2020
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    .line 387
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 388
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v5}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 390
    sget-object v2, Lcom/meizu/common/R$styleable;->EnhanceGallery:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 392
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 394
    .local v1, "spacing":I
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->setSpacing(I)V

    .line 395
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b021d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    .line 396
    const/4 v2, 0x2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    .line 397
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    .line 398
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 399
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/EnhanceGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/meizu/common/widget/EnhanceGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    return v0
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    return v0
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    return v0
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    return v0
.end method

.method static synthetic access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    return v0
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    return v0
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    return v0
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/EnhanceGallery;)Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    .line 1381
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getMeasuredHeight()I

    move-result v3

    .line 1382
    .local v3, "myHeight":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1384
    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    .line 1386
    .local v2, "childTop":I
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1399
    :goto_2
    return v2

    .line 1381
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getHeight()I

    move-result v3

    goto :goto_0

    .line 1382
    .restart local v3    # "myHeight":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1388
    .restart local v1    # "childHeight":I
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 1389
    goto :goto_2

    .line 1391
    :sswitch_1
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1393
    .local v0, "availableSpace":I
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1394
    goto :goto_2

    .line 1396
    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 1386
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .param p1, "toLeft"    # Z

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v7

    .line 663
    .local v7, "numChildren":I
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 664
    .local v2, "firstPosition":I
    const/4 v8, 0x0

    .line 665
    .local v8, "start":I
    const/4 v1, 0x0

    .line 667
    .local v1, "count":I
    if-eqz p1, :cond_7

    .line 669
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v9, :cond_3

    .line 670
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v3

    .line 674
    .local v3, "galleryLeft":I
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    add-int/lit8 v9, v7, -0x1

    if-ge v5, v9, :cond_0

    .line 675
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v9, :cond_4

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 676
    .local v6, "n":I
    :goto_2
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v9, :cond_5

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 677
    .local v0, "child":Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v3, :cond_6

    .line 686
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_0
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v9, :cond_1

    .line 687
    const/4 v8, 0x0

    .line 713
    .end local v3    # "galleryLeft":I
    :cond_1
    :goto_4
    invoke-virtual {p0, v8, v1}, Lcom/meizu/common/widget/EnhanceGallery;->detachViewsFromParent(II)V

    .line 715
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eq p1, v9, :cond_2

    .line 716
    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 718
    :cond_2
    return-void

    .line 672
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v9

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int v3, v9, v10

    .restart local v3    # "galleryLeft":I
    goto :goto_0

    .restart local v5    # "i":I
    :cond_4
    move v6, v5

    .line 675
    goto :goto_2

    .line 676
    .restart local v6    # "n":I
    :cond_5
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    .line 680
    .restart local v0    # "child":Landroid/view/View;
    :cond_6
    move v8, v6

    .line 681
    add-int/lit8 v1, v1, 0x1

    .line 682
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 683
    iget-object v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 674
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 691
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_7
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v9, :cond_9

    .line 692
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v4, v9, v10

    .line 696
    .local v4, "galleryRight":I
    :goto_5
    add-int/lit8 v5, v7, -0x1

    .restart local v5    # "i":I
    :goto_6
    const/4 v9, 0x1

    if-lt v5, v9, :cond_8

    .line 697
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v9, :cond_a

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 698
    .restart local v6    # "n":I
    :goto_7
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v9, :cond_b

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 699
    .restart local v0    # "child":Landroid/view/View;
    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v4, :cond_c

    .line 708
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_8
    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v9, :cond_1

    .line 709
    const/4 v8, 0x0

    goto :goto_4

    .line 694
    .end local v4    # "galleryRight":I
    .end local v5    # "i":I
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v10

    sub-int v4, v9, v10

    .restart local v4    # "galleryRight":I
    goto :goto_5

    .restart local v5    # "i":I
    :cond_a
    move v6, v5

    .line 697
    goto :goto_7

    .line 698
    .restart local v6    # "n":I
    :cond_b
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 702
    .restart local v0    # "child":Landroid/view/View;
    :cond_c
    move v8, v6

    .line 703
    add-int/lit8 v1, v1, 0x1

    .line 704
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 705
    iget-object v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 696
    add-int/lit8 v5, v5, -0x1

    goto :goto_6
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1751
    const/4 v6, 0x0

    .line 1753
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1758
    :cond_0
    if-nez v6, :cond_1

    .line 1759
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    .line 1760
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1763
    :cond_1
    if-eqz v6, :cond_2

    .line 1764
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    .line 1767
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 1687
    if-eqz p1, :cond_0

    .line 1688
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1691
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setPressed(Z)V

    .line 1692
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1696
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1697
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1696
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1700
    :cond_0
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->setPressed(Z)V

    .line 1701
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 1013
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeftRtl()V

    .line 1017
    :goto_0
    return-void

    .line 1015
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeftLtr()V

    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1050
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1051
    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v2

    .line 1054
    .local v2, "galleryLeft":I
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1058
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1059
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 1060
    .local v0, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 1068
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 1069
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 1073
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1076
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 1077
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1063
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    const/4 v0, 0x0

    .line 1064
    .restart local v0    # "curPosition":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int v1, v5, v6

    .line 1065
    .restart local v1    # "curRightEdge":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1079
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 8

    .prologue
    .line 1020
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1021
    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v2

    .line 1022
    .local v2, "galleryLeft":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v4

    .line 1025
    .local v4, "numChildren":I
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1029
    .local v5, "prevIterationView":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1030
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int v0, v6, v4

    .line 1031
    .local v0, "curPosition":I
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v3

    .line 1039
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ge v0, v6, :cond_1

    .line 1040
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v6, v0, v6

    const/4 v7, 0x0

    invoke-direct {p0, v0, v6, v1, v7}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v5

    .line 1044
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v3

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "curPosition":I
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1035
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v7

    sub-int v1, v6, v7

    .line 1036
    .restart local v1    # "curRightEdge":I
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1047
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 1083
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRightRtl()V

    .line 1087
    :goto_0
    return-void

    .line 1085
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRightLtr()V

    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1120
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1121
    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int v2, v7, v8

    .line 1122
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v4

    .line 1123
    .local v4, "numChildren":I
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    .line 1126
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1130
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 1131
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int v1, v7, v4

    .line 1132
    .local v1, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 1139
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 1140
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 1144
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 1145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1134
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "curPosition":I
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1135
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    .line 1136
    .restart local v0    # "curLeftEdge":I
    iput-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1147
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1090
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1091
    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int v2, v5, v6

    .line 1094
    .local v2, "galleryRight":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1098
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1099
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 1100
    .local v1, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 1106
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz v1, :cond_1

    .line 1107
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 1111
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1114
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 1115
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1102
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    const/4 v1, 0x0

    .line 1103
    .restart local v1    # "curPosition":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    .line 1104
    .restart local v0    # "curLeftEdge":I
    iput-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1117
    :cond_1
    return-void
.end method

.method private getCenterOfEnhanceGallery()I
    .locals 2

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private layoutChildren()V
    .locals 10

    .prologue
    .line 973
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 974
    .local v6, "itemSpacing":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v4

    .line 975
    .local v4, "galleryLeft":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v9

    sub-int v5, v8, v9

    .line 976
    .local v5, "galleryRight":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    .line 982
    .local v7, "numItems":I
    iget-boolean v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v8, :cond_0

    .line 983
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 984
    .local v1, "curPosition":I
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v2, v5, v8

    .line 986
    .local v2, "curRightEdge":I
    :goto_0
    if-le v2, v4, :cond_1

    if-ge v1, v7, :cond_1

    .line 987
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v8, v1, v8

    const/4 v9, 0x0

    invoke-direct {p0, v1, v8, v2, v9}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 991
    .local v3, "curView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v8, v6

    .line 992
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    .end local v1    # "curPosition":I
    .end local v2    # "curRightEdge":I
    .end local v3    # "curView":Landroid/view/View;
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 997
    .restart local v1    # "curPosition":I
    add-int v0, v4, v6

    .line 999
    .local v0, "curLeftEdge":I
    :goto_1
    if-ge v0, v5, :cond_1

    if-ge v1, v7, :cond_1

    .line 1000
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v8, v1, v8

    const/4 v9, 0x1

    invoke-direct {p0, v1, v8, v0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 1004
    .restart local v3    # "curView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v8

    add-int v0, v8, v6

    .line 1005
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1009
    .end local v0    # "curLeftEdge":I
    .end local v3    # "curView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1167
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-nez v0, :cond_4

    .line 1168
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v1

    .line 1169
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 1171
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    if-nez v0, :cond_3

    .line 1172
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1176
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1177
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    if-nez v0, :cond_1

    .line 1178
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    .line 1180
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1181
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1184
    :cond_2
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    :cond_3
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1187
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V

    move-object v6, v1

    .line 1209
    .end local v1    # "child":Landroid/view/View;
    .local v6, "child":Landroid/view/View;
    :goto_0
    return-object v6

    .line 1193
    .end local v6    # "child":Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1194
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1195
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1198
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1199
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    if-nez v0, :cond_6

    .line 1200
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    .line 1202
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1203
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_7
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1207
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V

    move-object v6, v1

    .line 1209
    .end local v1    # "child":Landroid/view/View;
    .restart local v6    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 637
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 636
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    .line 802
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSpinner;->selectionChanged()V

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 805
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 726
    const/4 v3, 0x0

    .line 727
    .local v3, "scrollAmount":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 729
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v7, :cond_2

    .line 730
    :cond_0
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eqz v7, :cond_1

    .line 731
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 795
    :cond_1
    :goto_0
    return-void

    .line 739
    :cond_2
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 740
    .local v6, "startView":Landroid/view/View;
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 742
    .local v2, "endView":Landroid/view/View;
    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v7, :cond_7

    .line 743
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v5, v7, v8

    .line 744
    .local v5, "start":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v1

    .line 745
    .local v1, "end":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    if-ne v7, v9, :cond_5

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v7, v8, :cond_5

    .line 746
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v3, v7, v8

    .line 781
    :cond_3
    :goto_1
    if-eqz v3, :cond_a

    .line 782
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eq v7, v9, :cond_4

    .line 783
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 786
    :cond_4
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v7, v3}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 747
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-eq v7, v5, :cond_3

    .line 748
    invoke-static {v6}, Lcom/meizu/common/widget/EnhanceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    .line 749
    .local v4, "selectedCenter":I
    if-lt v4, v5, :cond_6

    .line 750
    invoke-virtual {p0, v11}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v3, v5, v7

    .line 755
    :goto_2
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v7, v8, :cond_3

    .line 756
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v3

    if-le v7, v1, :cond_3

    .line 757
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v7, v1, v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int v3, v7, v8

    goto :goto_1

    .line 752
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v3, v5, v7

    goto :goto_2

    .line 762
    .end local v1    # "end":I
    .end local v4    # "selectedCenter":I
    .end local v5    # "start":I
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int v5, v7, v8

    .line 763
    .restart local v5    # "start":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int v1, v7, v8

    .line 764
    .restart local v1    # "end":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    if-ne v7, v9, :cond_8

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v7, v8, :cond_8

    .line 765
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v1, v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v3, v7, v8

    goto :goto_1

    .line 766
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    if-eq v7, v5, :cond_3

    .line 767
    invoke-static {v6}, Lcom/meizu/common/widget/EnhanceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    .line 768
    .restart local v4    # "selectedCenter":I
    if-ge v4, v5, :cond_9

    .line 769
    invoke-virtual {p0, v11}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v3, v5, v7

    .line 774
    :goto_3
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v7, v8, :cond_3

    .line 775
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v3

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v8, v1, v8

    if-eq v7, v8, :cond_3

    .line 776
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v1, v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v3, v7, v8

    goto/16 :goto_1

    .line 771
    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v3, v5, v7

    goto :goto_3

    .line 788
    .end local v4    # "selectedCenter":I
    :cond_a
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eqz v7, :cond_b

    .line 789
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 792
    :cond_b
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onFinishedMovement()V

    .line 793
    const/4 v7, -0x1

    iput v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    goto/16 :goto_0
.end method

.method private setSelectionView()V
    .locals 2

    .prologue
    .line 820
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v1, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 823
    .local v0, "newPos":I
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 824
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectedPositionInt(I)V

    .line 825
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setNextSelectedPositionInt(I)V

    .line 826
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->checkSelectionChanged()V

    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;IIIZ)V
    .locals 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "offset"    # I
    .param p4, "x"    # I
    .param p5, "fromLeft"    # Z

    .prologue
    .line 1229
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1231
    .local v8, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v8, :cond_3

    .line 1232
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    .line 1239
    .local v7, "lp":Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;
    :goto_0
    iget-boolean v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    move/from16 v0, p5

    if-eq v0, v10, :cond_5

    const/4 v10, -0x1

    :goto_1
    invoke-virtual {p0, p1, v10, v7}, Lcom/meizu/common/widget/EnhanceGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1240
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 1241
    if-nez p3, :cond_6

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p1, v10}, Landroid/view/View;->setSelected(Z)V

    .line 1245
    :cond_0
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mHeightMeasureSpec:I

    iget-object v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    iget v12, v7, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;->height:I

    invoke-static {v10, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1247
    .local v2, "childHeightSpec":I
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mWidthMeasureSpec:I

    iget-object v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    iget v12, v7, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;->width:I

    invoke-static {v10, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 1251
    .local v6, "childWidthSpec":I
    invoke-virtual {p1, v6, v2}, Landroid/view/View;->measure(II)V

    .line 1257
    const/4 v10, 0x1

    invoke-direct {p0, p1, v10}, Lcom/meizu/common/widget/EnhanceGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v5

    .line 1258
    .local v5, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int v1, v5, v10

    .line 1260
    .local v1, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1261
    .local v9, "width":I
    if-eqz p5, :cond_7

    .line 1262
    move/from16 v3, p4

    .line 1263
    .local v3, "childLeft":I
    add-int v4, v3, v9

    .line 1269
    .local v4, "childRight":I
    :goto_3
    invoke-virtual {p1, v3, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 1271
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v10, :cond_1

    .line 1272
    instance-of v10, p1, Landroid/widget/Checkable;

    if-eqz v10, :cond_8

    move-object v10, p1

    .line 1273
    check-cast v10, Landroid/widget/Checkable;

    iget-object v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-interface {v10, v11}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1280
    :cond_1
    :goto_4
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    iget-boolean v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    if-eqz v10, :cond_2

    .line 1281
    new-instance v10, Lcom/meizu/common/widget/EnhanceGallery$3;

    invoke-direct {v10, p0}, Lcom/meizu/common/widget/EnhanceGallery$3;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1372
    :cond_2
    return-void

    .line 1233
    .end local v1    # "childBottom":I
    .end local v2    # "childHeightSpec":I
    .end local v3    # "childLeft":I
    .end local v4    # "childRight":I
    .end local v5    # "childTop":I
    .end local v6    # "childWidthSpec":I
    .end local v7    # "lp":Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;
    .end local v9    # "width":I
    :cond_3
    instance-of v10, v8, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    if-eqz v10, :cond_4

    move-object v7, v8

    .line 1234
    check-cast v7, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    .restart local v7    # "lp":Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;
    goto/16 :goto_0

    .line 1236
    .end local v7    # "lp":Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;
    :cond_4
    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/EnhanceGallery;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    .restart local v7    # "lp":Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;
    goto/16 :goto_0

    .line 1239
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1241
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 1265
    .restart local v1    # "childBottom":I
    .restart local v2    # "childHeightSpec":I
    .restart local v5    # "childTop":I
    .restart local v6    # "childWidthSpec":I
    .restart local v9    # "width":I
    :cond_7
    sub-int v3, p4, v9

    .line 1266
    .restart local v3    # "childLeft":I
    move/from16 v4, p4

    .restart local v4    # "childRight":I
    goto :goto_3

    .line 1274
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_1

    .line 1276
    iget-object v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/View;->setActivated(Z)V

    goto :goto_4
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 2927
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 2928
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v1

    .line 2929
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 2931
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 2932
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2933
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 2935
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 2936
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2931
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2929
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2937
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 2938
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 2941
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1780
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    .line 1782
    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    .line 1783
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1810
    :cond_0
    :goto_0
    return-void

    .line 1787
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v2, v4, :cond_0

    .line 1791
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1792
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1794
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1795
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1800
    :cond_2
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    .line 1803
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1807
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public changeChildAlphaWhenDragView(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 2526
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    .line 2527
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 499
    instance-of v0, p1, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 2165
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2167
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2168
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 2874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2876
    const/4 v2, 0x0

    .line 2878
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_6

    .line 2879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 2880
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2881
    .local v5, "lastPos":I
    const-wide/16 v12, -0x1

    .line 2882
    .local v12, "lastPosId":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ge v5, v3, :cond_0

    .line 2883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v5}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v12

    .line 2885
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ge v5, v3, :cond_1

    cmp-long v3, v6, v12

    if-eqz v3, :cond_5

    .line 2887
    :cond_1
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2888
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2889
    .local v10, "end":I
    const/4 v11, 0x0

    .line 2890
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_2

    .line 2891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v14

    .line 2892
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_4

    .line 2893
    const/4 v11, 0x1

    .line 2894
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 2900
    .end local v14    # "searchId":J
    :cond_2
    if-nez v11, :cond_3

    .line 2901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2902
    add-int/lit8 v9, v9, -0x1

    .line 2903
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2904
    const/4 v2, 0x1

    .line 2905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v3, :cond_3

    .line 2906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2878
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 2890
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2911
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 2915
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_6
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_7

    .line 2916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 2918
    :cond_7
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 2657
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1719
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 1710
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 517
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 509
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 504
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 2298
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 2344
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v4, :cond_2

    .line 2345
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 2355
    :cond_1
    return-object v3

    .line 2348
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2349
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2350
    .local v0, "count":I
    new-array v3, v0, [J

    .line 2352
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2353
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 2352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 2311
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 2312
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2314
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    return-object v0
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 2277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    .line 2278
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    .line 2279
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->requestLayout()V

    .line 2280
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 2281
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;->onScroll(Lcom/meizu/common/widget/EnhanceGallery;III)V

    .line 2044
    :cond_0
    return-void
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2328
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 9
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 874
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLayoutDirection()I

    move-result v7

    if-ne v7, v5, :cond_3

    :goto_0
    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    .line 884
    :cond_0
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 885
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->handleDataChanged()V

    .line 888
    :cond_1
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v5}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 889
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->confirmCheckedPositionsById()V

    .line 893
    :cond_2
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-nez v5, :cond_4

    .line 894
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    .line 895
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->resetList()V

    .line 967
    :goto_1
    return-void

    :cond_3
    move v5, v6

    .line 875
    goto :goto_0

    .line 900
    :cond_4
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNextSelectedPosition:I

    if-ltz v5, :cond_5

    .line 901
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectedPositionInt(I)V

    .line 905
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->recycleAllViews()V

    .line 909
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->detachAllViewsFromParent()V

    .line 915
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iput v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 917
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->layoutChildren()V

    .line 920
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v5}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->clear()V

    .line 922
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 923
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->checkSelectionChanged()V

    .line 925
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    .line 926
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNeedSync:Z

    .line 927
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->setNextSelectedPositionInt(I)V

    .line 928
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateSelectedItemMetadata()V

    .line 930
    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    .line 931
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 932
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_6

    .line 933
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    .line 934
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    .line 936
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-lez v5, :cond_8

    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez v5, :cond_8

    .line 937
    const/4 v1, 0x0

    .line 938
    .local v1, "distance":I
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ge v5, v6, :cond_6

    .line 939
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v5, :cond_7

    .line 940
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    neg-int v5, v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v6, v7

    mul-int v1, v5, v6

    .line 944
    :goto_2
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 945
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    .line 966
    .end local v1    # "distance":I
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    goto/16 :goto_1

    .line 942
    .restart local v1    # "distance":I
    :cond_7
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v6, v7

    mul-int v1, v5, v6

    goto :goto_2

    .line 947
    .end local v1    # "distance":I
    :cond_8
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-gtz v5, :cond_6

    .line 949
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 950
    .local v0, "childCount":I
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v5, :cond_9

    .line 951
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int v2, v5, v6

    .line 952
    .local v2, "mostLeft":I
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v5, v6, :cond_6

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-eq v5, v2, :cond_6

    .line 953
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 954
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_3

    .line 957
    .end local v2    # "mostLeft":I
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v3, v5, v6

    .line 958
    .local v3, "mostRight":I
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v5, v6, :cond_6

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-eq v5, v3, :cond_6

    .line 959
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 960
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_3
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1640
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onUp()V

    .line 1641
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1580
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1581
    :cond_0
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1582
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1588
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->stop(Z)V

    .line 1591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1593
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 1594
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    .line 1595
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1598
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionX:I

    .line 1599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionY:I

    .line 1601
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    .line 1602
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    .line 1604
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    .line 1606
    return v2

    .line 1584
    :cond_2
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 1445
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-lez v7, :cond_0

    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez v7, :cond_0

    .line 1446
    const/4 v7, 0x0

    .line 1519
    :goto_0
    return v7

    .line 1448
    :cond_0
    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    if-nez v7, :cond_1

    .line 1452
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1455
    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez v7, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    .line 1458
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 1461
    .local v0, "childCount":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    packed-switch v7, :pswitch_data_0

    .line 1519
    :goto_1
    :pswitch_0
    const/4 v7, 0x1

    goto :goto_0

    .line 1463
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x44bb8000    # 1500.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 1464
    const/4 v7, 0x0

    goto :goto_0

    .line 1467
    :cond_2
    const/4 v7, 0x2

    iput v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1469
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    .line 1470
    .local v3, "length":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    div-int v7, v3, v7

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 1471
    .local v4, "scale":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    mul-int v1, v4, v7

    .line 1473
    .local v1, "delta":I
    const/4 v7, 0x0

    cmpl-float v7, p3, v7

    if-lez v7, :cond_6

    .line 1475
    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v7, :cond_4

    .line 1476
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1477
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v5, v7, v8

    .line 1479
    .local v5, "startEdge":I
    if-eqz v6, :cond_3

    .line 1480
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v2, v5, v7

    .line 1512
    .end local v5    # "startEdge":I
    .local v2, "distance":I
    :goto_2
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1513
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v7, v2}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_1

    .line 1482
    .end local v2    # "distance":I
    .restart local v5    # "startEdge":I
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v2, v5, v7

    .restart local v2    # "distance":I
    goto :goto_2

    .line 1485
    .end local v2    # "distance":I
    .end local v5    # "startEdge":I
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1486
    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_5

    .line 1487
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v7, v8

    sub-int v2, v1, v7

    .restart local v2    # "distance":I
    goto :goto_2

    .line 1489
    .end local v2    # "distance":I
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    add-int v2, v7, v1

    .restart local v2    # "distance":I
    goto :goto_2

    .line 1493
    .end local v2    # "distance":I
    .end local v6    # "view":Landroid/view/View;
    :cond_6
    iget-boolean v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v7, :cond_8

    .line 1494
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1495
    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v5, v7, v8

    .line 1497
    .restart local v5    # "startEdge":I
    if-eqz v6, :cond_7

    .line 1498
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v5, v7

    sub-int v7, v1, v7

    neg-int v2, v7

    .restart local v2    # "distance":I
    goto :goto_2

    .line 1500
    .end local v2    # "distance":I
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v5, v7

    sub-int v7, v1, v7

    neg-int v2, v7

    .restart local v2    # "distance":I
    goto :goto_2

    .line 1503
    .end local v2    # "distance":I
    .end local v5    # "startEdge":I
    .end local v6    # "view":Landroid/view/View;
    :cond_8
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1504
    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_9

    .line 1505
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v7, v8

    .restart local v2    # "distance":I
    goto/16 :goto_2

    .line 1507
    .end local v2    # "distance":I
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v7, v8

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v7, v8

    .restart local v2    # "distance":I
    goto/16 :goto_2

    .line 1516
    .end local v1    # "delta":I
    .end local v2    # "distance":I
    .end local v3    # "length":I
    .end local v4    # "scale":I
    .end local v6    # "view":Landroid/view/View;
    :pswitch_2
    const/4 v7, 0x4

    iput v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    goto/16 :goto_1

    .line 1461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    .line 1828
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/common/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1835
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1837
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1840
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3001
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3002
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x1

    .line 3006
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3007
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getCount()I

    move-result v1

    .line 3008
    .local v1, "columnsCount":I
    const/4 v2, 0x1

    .line 3009
    .local v2, "selectionMode":I
    const/4 v3, 0x0

    invoke-static {v4, v1, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 3011
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 3012
    const-class v3, Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3013
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2971
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 2972
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 2997
    :cond_0
    :goto_0
    return-void

    .line 2976
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_4

    .line 2977
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2978
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2983
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2984
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2985
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 2988
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2989
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2990
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2993
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2994
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2995
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 2980
    :cond_4
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 523
    invoke-super/range {p0 .. p5}, Lcom/meizu/common/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mInLayout:Z

    .line 530
    invoke-virtual {p0, v1, v1}, Lcom/meizu/common/widget/EnhanceGallery;->layout(IZ)V

    .line 531
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mInLayout:Z

    .line 532
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    .line 1646
    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    if-gez v9, :cond_0

    .line 1675
    :goto_0
    return-void

    .line 1649
    :cond_0
    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 1650
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1651
    .local v7, "motionPosition":I
    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int v9, v7, v9

    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1652
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1653
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1654
    .local v6, "longPressPosition":I
    iget-object v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-interface {v9, v10}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1656
    .local v4, "longPressId":J
    const/4 v1, 0x0

    .line 1657
    .local v1, "handled":Z
    const/4 v8, 0x1

    .line 1658
    .local v8, "perforLongPress":Z
    if-eqz v8, :cond_1

    iget-boolean v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-nez v9, :cond_1

    .line 1659
    invoke-virtual {p0, v0, v6, v4, v5}, Lcom/meizu/common/widget/EnhanceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 1661
    :cond_1
    if-eqz v1, :cond_2

    .line 1662
    const/4 v9, -0x1

    iput v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1663
    invoke-virtual {p0, v11}, Lcom/meizu/common/widget/EnhanceGallery;->setPressed(Z)V

    .line 1664
    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1672
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "handled":Z
    .end local v4    # "longPressId":J
    .end local v6    # "longPressPosition":I
    .end local v7    # "motionPosition":I
    .end local v8    # "perforLongPress":Z
    :cond_2
    invoke-virtual {p0, v11}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    .line 1673
    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 1674
    .local v2, "id":J
    iget-object v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-direct {p0, v9, v10, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1524
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-lez v5, :cond_0

    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez v5, :cond_0

    .line 1574
    :goto_0
    return v3

    .line 1527
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1531
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    if-nez v5, :cond_7

    .line 1532
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    if-eqz v5, :cond_2

    .line 1538
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez v5, :cond_1

    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    .line 1539
    :cond_1
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa

    invoke-virtual {p0, v5, v6, v7}, Lcom/meizu/common/widget/EnhanceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1545
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    if-eqz v5, :cond_3

    .line 1546
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1549
    :cond_3
    iput v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1553
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 1554
    .local v0, "childCount":I
    float-to-int v2, p3

    .line 1556
    .local v2, "incrementalDeltaX":I
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_4

    .line 1557
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    iput v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    .line 1560
    :cond_4
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    if-eqz v5, :cond_5

    .line 1561
    const/4 v5, 0x3

    iput v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1562
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    if-lt v5, v6, :cond_8

    .line 1563
    const/4 v2, 0x0

    .line 1570
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 1571
    mul-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 1573
    :cond_6
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    move v3, v4

    .line 1574
    goto :goto_0

    .line 1542
    .end local v0    # "childCount":I
    .end local v2    # "incrementalDeltaX":I
    :cond_7
    iget-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-eqz v5, :cond_2

    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    goto :goto_1

    .line 1565
    .restart local v0    # "childCount":I
    .restart local v2    # "incrementalDeltaX":I
    :cond_8
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v1, v8, v5

    .line 1566
    .local v1, "coeff":F
    int-to-float v5, v2

    mul-float/2addr v5, v1

    float-to-int v2, v5

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1681
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 1422
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v1, :cond_2

    .line 1424
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    if-nez v1, :cond_0

    .line 1425
    new-instance v1, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 1429
    .local v0, "performClick":Lcom/meizu/common/widget/EnhanceGallery$PerformClick;
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iput v1, v0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->mClickMotionPosition:I

    .line 1430
    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->rememberWindowAttachCount()V

    .line 1431
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->post(Ljava/lang/Runnable;)Z

    .line 1440
    .end local v0    # "performClick":Lcom/meizu/common/widget/EnhanceGallery$PerformClick;
    :cond_1
    :goto_0
    return v6

    .line 1434
    :cond_2
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    if-ne v1, v2, :cond_1

    .line 1435
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/meizu/common/widget/EnhanceGallery;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 833
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/AbsSpinner;->onSizeChanged(IIII)V

    .line 834
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$2;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 860
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1406
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1408
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1409
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1411
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onUp()V

    .line 1416
    :cond_0
    :goto_0
    return v1

    .line 1412
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1413
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1613
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1633
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchUnpress()V

    .line 1634
    return-void

    .line 1615
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_0

    .line 1618
    :pswitch_2
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_0

    .line 1622
    :pswitch_3
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    .line 1623
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eq v0, v1, :cond_1

    .line 1624
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1627
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 1613
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public performItemClicks(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 2733
    const/4 v9, 0x0

    .line 2734
    .local v9, "handled":Z
    const/4 v8, 0x1

    .line 2736
    .local v8, "dispatchItemClick":Z
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 2737
    const/4 v9, 0x1

    .line 2738
    const/4 v7, 0x0

    .line 2740
    .local v7, "checkedStateChanged":Z
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 2741
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    move v6, v10

    .line 2742
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2743
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2744
    if-eqz v6, :cond_6

    .line 2745
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2750
    :cond_0
    :goto_1
    if-eqz v6, :cond_7

    .line 2751
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2755
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 2756
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2758
    const/4 v8, 0x0

    .line 2760
    :cond_1
    const/4 v7, 0x1

    .line 2777
    .end local v6    # "checked":Z
    :cond_2
    :goto_3
    if-eqz v7, :cond_3

    .line 2778
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateOnScreenCheckedViews()V

    .line 2782
    .end local v7    # "checkedStateChanged":Z
    :cond_3
    if-eqz v8, :cond_e

    .line 2783
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_e

    .line 2785
    if-eqz p1, :cond_4

    .line 2786
    invoke-virtual {p1, v10}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2788
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2793
    :goto_4
    return v10

    .restart local v7    # "checkedStateChanged":Z
    :cond_5
    move v6, v0

    .line 2741
    goto :goto_0

    .line 2747
    .restart local v6    # "checked":Z
    :cond_6
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 2753
    :cond_7
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_2

    .line 2761
    .end local v6    # "checked":Z
    :cond_8
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v1, v10, :cond_2

    .line 2762
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_b

    move v6, v10

    .line 2763
    .restart local v6    # "checked":Z
    :goto_5
    if-eqz v6, :cond_c

    .line 2764
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2765
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2766
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2767
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 2768
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2770
    :cond_9
    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2774
    :cond_a
    :goto_6
    const/4 v7, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_b
    move v6, v0

    .line 2762
    goto :goto_5

    .line 2771
    .restart local v6    # "checked":Z
    :cond_c
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2772
    :cond_d
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_6

    .end local v6    # "checked":Z
    .end local v7    # "checkedStateChanged":Z
    :cond_e
    move v10, v0

    .line 2793
    goto :goto_4
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    .line 2359
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 2360
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2367
    :cond_0
    iput p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 2369
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2370
    .local v6, "checkbox":Landroid/view/View;
    if-eqz v6, :cond_1

    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    move-object v0, v6

    .line 2371
    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2374
    :cond_1
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2375
    .local v7, "frame":Landroid/graphics/Rect;
    if-nez v7, :cond_2

    .line 2376
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2377
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2379
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2381
    const/4 v0, 0x0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionX:I

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    .line 2382
    const/4 v0, 0x0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionY:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    .line 2384
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 2385
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2387
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    if-eqz v0, :cond_b

    .line 2388
    instance-of v0, p1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-eqz v0, :cond_6

    move-object v9, p1

    .line 2389
    check-cast v9, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    .line 2390
    .local v9, "item":Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    invoke-interface {v9}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v9}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->needBackground()Z

    move-result v2

    invoke-interface {v9}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragViewShowPosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;ZLandroid/graphics/Point;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    .line 2395
    .end local v9    # "item":Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->startDragNow(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2397
    if-eqz v6, :cond_3

    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_3

    .line 2398
    check-cast v6, Landroid/widget/Checkable;

    .end local v6    # "checkbox":Landroid/view/View;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2400
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2401
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 2403
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    if-nez v0, :cond_4

    .line 2404
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 2408
    :cond_4
    iget-object v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 2409
    .local v10, "performClick":Lcom/meizu/common/widget/EnhanceGallery$PerformClick;
    iput p2, v10, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->mClickMotionPosition:I

    .line 2410
    invoke-virtual {v10}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->rememberWindowAttachCount()V

    .line 2411
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->post(Ljava/lang/Runnable;)Z

    .line 2412
    const/4 v8, 0x1

    .line 2446
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v10    # "performClick":Lcom/meizu/common/widget/EnhanceGallery$PerformClick;
    :cond_5
    :goto_1
    return v8

    .line 2392
    .restart local v6    # "checkbox":Landroid/view/View;
    .restart local v7    # "frame":Landroid/graphics/Rect;
    :cond_6
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    goto :goto_0

    .line 2415
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    .line 2416
    instance-of v0, p1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 2417
    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {v0}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v11

    .line 2418
    .local v11, "v":Landroid/view/View;
    if-eqz v11, :cond_8

    .line 2419
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2421
    :cond_8
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    if-eqz v0, :cond_9

    .line 2422
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2432
    .end local v6    # "checkbox":Landroid/view/View;
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v11    # "v":Landroid/view/View;
    :cond_9
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    .line 2425
    .restart local v6    # "checkbox":Landroid/view/View;
    .restart local v7    # "frame":Landroid/graphics/Rect;
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 2428
    :cond_b
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->setItemChecked(IZ)V

    goto :goto_2

    .line 2435
    .end local v6    # "checkbox":Landroid/view/View;
    .end local v7    # "frame":Landroid/graphics/Rect;
    :cond_c
    const/4 v8, 0x0

    .line 2436
    .local v8, "handled":Z
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_d

    .line 2437
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v8

    .line 2439
    :cond_d
    if-nez v8, :cond_e

    .line 2440
    invoke-virtual/range {p0 .. p4}, Lcom/meizu/common/widget/EnhanceGallery;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    .line 2441
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v8

    .line 2443
    :cond_e
    if-eqz v8, :cond_5

    .line 2444
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    goto :goto_1
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 2054
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2055
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    .line 2056
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;->onScrollStateChanged(Lcom/meizu/common/widget/EnhanceGallery;I)V

    .line 2060
    :cond_0
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 810
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSpinner;->selectionChanged()V

    .line 812
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 127
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 2115
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2116
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_2

    .line 2117
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 2118
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2120
    :cond_0
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 2121
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2123
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->clearChoices()V

    .line 2125
    :cond_2
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    .prologue
    .line 457
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    .line 458
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    .line 412
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 437
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    .line 2137
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    .line 2138
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2142
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 2143
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 2144
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2146
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2147
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2150
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2151
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->clearChoices()V

    .line 2152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setLongClickable(Z)V

    .line 2155
    :cond_3
    return-void
.end method

.method public setDragEnable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    .line 445
    return-void
.end method

.method public setDragItemBackgroundResources([I)V
    .locals 3
    .param p1, "bgres"    # [I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2508
    if-eqz p1, :cond_2

    .line 2509
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2510
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    .line 2512
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 2513
    aget v0, p1, v1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    .line 2515
    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_2

    .line 2516
    aget v0, p1, v2

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    .line 2519
    :cond_2
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1820
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1821
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    .line 1822
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->requestLayout()V

    .line 1824
    :cond_0
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2805
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-nez v3, :cond_1

    .line 2871
    :cond_0
    :goto_0
    return-void

    .line 2810
    :cond_1
    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_4

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v3, v6, :cond_4

    .line 2812
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2814
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "StaggeredGridView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2818
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2821
    :cond_4
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v3, v6, :cond_a

    .line 2822
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2823
    .local v0, "oldValue":Z
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2824
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2825
    if-eqz p2, :cond_8

    .line 2826
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2831
    :cond_5
    :goto_1
    if-eq v0, p2, :cond_6

    .line 2832
    if-eqz p2, :cond_9

    .line 2833
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2838
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7

    .line 2839
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2840
    .local v4, "id":J
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2867
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_7
    :goto_3
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mInLayout:Z

    if-nez v1, :cond_0

    .line 2868
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidateViews()V

    goto :goto_0

    .line 2828
    .restart local v0    # "oldValue":Z
    :cond_8
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 2835
    :cond_9
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_2

    .line 2844
    .end local v0    # "oldValue":Z
    :cond_a
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_e

    move v7, v1

    .line 2847
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2848
    :cond_b
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2849
    if-eqz v7, :cond_c

    .line 2850
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 2855
    :cond_c
    if-eqz p2, :cond_f

    .line 2856
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2857
    if-eqz v7, :cond_d

    .line 2858
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2860
    :cond_d
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_e
    move v7, v2

    .line 2844
    goto :goto_4

    .line 2861
    .restart local v7    # "updateIds":Z
    :cond_f
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2862
    :cond_10
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMaxOverScrollDistance(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 419
    if-gez p1, :cond_0

    .line 420
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    goto :goto_0
.end method

.method public setMultiChoiceModeListener(Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 2181
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    .line 2183
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->setWrapped(Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;)V

    .line 2184
    return-void
.end method

.method public setOnScrollListener(Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    .prologue
    .line 2030
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    .line 2031
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    .line 2032
    return-void
.end method

.method public setScrollEnableWhenLessContent(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    .line 477
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1772
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1775
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateSelectedItemMetadata()V

    .line 1776
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 468
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 469
    return-void
.end method

.method public showContextMenu()Z
    .locals 6

    .prologue
    .line 1741
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1742
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1743
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1744
    .local v1, "v":Landroid/view/View;
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1747
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
    .line 1729
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1730
    .local v2, "longPressPosition":I
    if-gez v2, :cond_0

    .line 1731
    const/4 v3, 0x0

    .line 1735
    :goto_0
    return v3

    .line 1734
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1735
    .local v0, "longPressId":J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method startDragNow(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLocalState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    .line 2450
    const/4 v0, 0x0

    .line 2469
    .local v0, "flag":Z
    return v0
.end method

.method trackMotionScroll(I)Z
    .locals 14
    .param p1, "deltaX"    # I

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v2

    .line 547
    .local v2, "childCount":I
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 548
    :cond_0
    const/4 v6, 0x0

    .line 626
    :goto_0
    return v6

    .line 551
    :cond_1
    if-gez p1, :cond_6

    const/4 v9, 0x1

    .line 552
    .local v9, "toLeft":Z
    :goto_1
    const/4 v6, 0x0

    .line 553
    .local v6, "isAtEdge":Z
    const/4 v3, 0x0

    .line 557
    .local v3, "dontRecycle":Z
    iget-boolean v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v10, :cond_9

    .line 558
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-nez v10, :cond_7

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v11, v12

    if-lt v10, v11, :cond_7

    if-gtz p1, :cond_7

    const/4 v0, 0x1

    .line 560
    .local v0, "cannotScrollLeft":Z
    :goto_2
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v11

    if-lt v10, v11, :cond_8

    if-ltz p1, :cond_8

    const/4 v1, 0x1

    .line 569
    .local v1, "cannotScrollRight":Z
    :goto_3
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 570
    :cond_2
    const/4 v3, 0x1

    .line 573
    :cond_3
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->offsetChildrenLeftAndRight(I)V

    .line 575
    if-nez v3, :cond_4

    .line 576
    invoke-direct {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->detachOffScreenChildren(Z)V

    .line 578
    if-eqz v9, :cond_c

    .line 580
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRight()V

    .line 586
    :goto_4
    iget-object v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v10}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->clear()V

    .line 587
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectionView()V

    .line 590
    :cond_4
    const/4 v10, 0x0

    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 591
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v2

    .line 595
    iget-boolean v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v10, :cond_e

    .line 596
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v5

    .line 597
    .local v5, "first":I
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 598
    .local v7, "last":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v4, v10, v11

    .line 600
    .local v4, "end":I
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-nez v10, :cond_d

    if-ge v5, v4, :cond_d

    .line 601
    sub-int v10, v4, v5

    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 602
    const/4 v6, 0x1

    .line 622
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    .line 623
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/meizu/common/widget/EnhanceGallery;->onScrollChanged(IIII)V

    .line 625
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    goto/16 :goto_0

    .line 551
    .end local v0    # "cannotScrollLeft":Z
    .end local v1    # "cannotScrollRight":Z
    .end local v3    # "dontRecycle":Z
    .end local v4    # "end":I
    .end local v5    # "first":I
    .end local v6    # "isAtEdge":Z
    .end local v7    # "last":I
    .end local v9    # "toLeft":Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 558
    .restart local v3    # "dontRecycle":Z
    .restart local v6    # "isAtEdge":Z
    .restart local v9    # "toLeft":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 560
    .restart local v0    # "cannotScrollLeft":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 563
    .end local v0    # "cannotScrollLeft":Z
    :cond_9
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-nez v10, :cond_a

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v11

    iget v12, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v11, v12

    if-lt v10, v11, :cond_a

    if-ltz p1, :cond_a

    const/4 v1, 0x1

    .line 565
    .restart local v1    # "cannotScrollRight":Z
    :goto_6
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v10, v11, :cond_b

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    if-gt v10, v11, :cond_b

    if-gtz p1, :cond_b

    const/4 v0, 0x1

    .restart local v0    # "cannotScrollLeft":Z
    :goto_7
    goto/16 :goto_3

    .line 563
    .end local v0    # "cannotScrollLeft":Z
    .end local v1    # "cannotScrollRight":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    .line 565
    .restart local v1    # "cannotScrollRight":Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    .line 583
    .restart local v0    # "cannotScrollLeft":Z
    :cond_c
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeft()V

    goto/16 :goto_4

    .line 603
    .restart local v4    # "end":I
    .restart local v5    # "first":I
    .restart local v7    # "last":I
    :cond_d
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v10, v11, :cond_5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v10

    if-le v7, v10, :cond_5

    .line 604
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v10, v11

    sub-int/2addr v10, v7

    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 605
    const/4 v6, 0x1

    goto :goto_5

    .line 608
    .end local v4    # "end":I
    .end local v5    # "first":I
    .end local v7    # "last":I
    :cond_e
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 609
    .restart local v5    # "first":I
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v7

    .line 610
    .restart local v7    # "last":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int v8, v10, v11

    .line 611
    .local v8, "start":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v11

    sub-int v4, v10, v11

    .line 613
    .restart local v4    # "end":I
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-nez v10, :cond_f

    if-le v5, v8, :cond_f

    .line 614
    sub-int v10, v8, v5

    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 615
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 616
    :cond_f
    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v10, v11, :cond_5

    if-ge v7, v4, :cond_5

    .line 617
    sub-int v10, v4, v7

    iget v11, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 618
    const/4 v6, 0x1

    goto/16 :goto_5
.end method
