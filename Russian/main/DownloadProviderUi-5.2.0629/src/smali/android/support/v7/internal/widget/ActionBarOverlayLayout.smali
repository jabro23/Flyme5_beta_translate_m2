.class public Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v7/internal/widget/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private mActionBarHeight:I

.field private mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field private mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private final mBottomAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mContent:Landroid/support/v7/internal/widget/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentActionBarBottomAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mMzSplitBarFloat:Z

.field private mMzWindowSplitToolBar:Z

.field private mOverlayMode:Z

.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field private final mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mTransStatusBarInFlyme3:Z

.field private mUiOptions:I

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010032
        0x1010059
        0x7f010088
        0x7f010094
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 92
    const/16 v0, 0x258

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 110
    new-instance v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$1;-><init>(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 125
    new-instance v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$2;-><init>(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 140
    new-instance v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$3;-><init>(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$4;-><init>(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 959
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mTransStatusBarInFlyme3:Z

    .line 183
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 185
    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 186
    return-void
.end method

.method static synthetic access$002(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
    .param p1, "x1"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-object p1
.end method

.method static synthetic access$102(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return p1
.end method

.method static synthetic access$202(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
    .param p1, "x1"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    return-object v0
.end method

.method private addActionBarHideOffset()V
    .locals 1

    .prologue
    .line 712
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 713
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 714
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 314
    .local v1, "lp":Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 315
    const/4 v0, 0x1

    .line 316
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 318
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 319
    const/4 v0, 0x1

    .line 320
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 322
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 323
    const/4 v0, 0x1

    .line 324
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 326
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 327
    const/4 v0, 0x1

    .line 328
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 330
    :cond_3
    return v0
.end method

.method private applyInsetsForFlyme(Landroid/graphics/Rect;)Z
    .locals 11
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 915
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v10

    .line 916
    .local v10, "vis":I
    and-int/lit16 v0, v10, 0x100

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mTransStatusBarInFlyme3:Z

    if-eqz v0, :cond_1

    :cond_0
    move v8, v3

    .line 918
    .local v8, "stable":Z
    :goto_0
    const/4 v7, 0x0

    .line 919
    .local v7, "changed":Z
    if-eqz v8, :cond_2

    .line 920
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 921
    .local v9, "statusBarHeight":I
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v9, v2, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->setPadding(IIII)V

    .line 922
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p0

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 923
    iput v9, p1, Landroid/graphics/Rect;->top:I

    .line 924
    const/4 v7, 0x1

    .line 929
    .end local v9    # "statusBarHeight":I
    :goto_1
    return v7

    .end local v7    # "changed":Z
    .end local v8    # "stable":Z
    :cond_1
    move v8, v5

    .line 916
    goto :goto_0

    .line 926
    .restart local v7    # "changed":Z
    .restart local v8    # "stable":Z
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->setPadding(IIII)V

    .line 927
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    goto :goto_1
.end method

.method private getDecorToolbar(Landroid/view/View;)Landroid/support/v7/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 644
    instance-of v0, p1, Landroid/support/v7/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 645
    check-cast p1, Landroid/support/v7/internal/widget/DecorToolbar;

    .line 647
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 646
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 647
    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 649
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private haltActionBarHideOffsetAnimations()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 687
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 688
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 691
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 694
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 190
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 191
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 192
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 194
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mMzWindowSplitToolBar:Z

    .line 195
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mMzSplitBarFloat:Z

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 202
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    .line 203
    return-void

    :cond_0
    move v1, v3

    .line 192
    goto :goto_0

    :cond_1
    move v2, v3

    .line 199
    goto :goto_1
.end method

.method private postAddActionBarHideOffset()V
    .locals 4

    .prologue
    .line 702
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 703
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 704
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 4

    .prologue
    .line 697
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 698
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 699
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    .prologue
    .line 707
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 708
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 709
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 10
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 717
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    float-to-int v4, p2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 718
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v9

    .line 719
    .local v9, "finalY":I
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-le v9, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 828
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 829
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 392
    instance-of v0, p1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method protected computeFitSystemWindowsForFullScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 941
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {p0, v1, v2}, Landroid/support/v7/internal/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    const/4 v0, 0x1

    .line 954
    :cond_0
    :goto_0
    return v0

    .line 946
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    move-result v1

    if-nez v1, :cond_0

    .line 951
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 952
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 883
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 884
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 550
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 551
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v2, :cond_0

    .line 552
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 555
    .local v0, "top":I
    :goto_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 557
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 559
    .end local v0    # "top":I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 552
    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 10
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 335
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 337
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v9

    .line 338
    .local v9, "vis":I
    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_3

    move v8, v3

    .line 339
    .local v8, "stable":Z
    :goto_0
    move-object v2, p1

    .line 344
    .local v2, "systemInsets":Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->applyInsetsForFlyme(Landroid/graphics/Rect;)Z

    move-result v7

    .line 346
    .local v7, "changed":Z
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-boolean v5, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mMzSplitBarFloat:Z

    move-object v0, p0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 357
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->computeFitSystemWindowsForFullScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 359
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    const/4 v7, 0x1

    .line 361
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 364
    :cond_1
    if-eqz v7, :cond_2

    .line 365
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 372
    :cond_2
    return v3

    .end local v2    # "systemInsets":Landroid/graphics/Rect;
    .end local v7    # "changed":Z
    .end local v8    # "stable":Z
    :cond_3
    move v8, v4

    .line 338
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 377
    new-instance v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 382
    new-instance v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 387
    new-instance v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 853
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1
    .param p1, "windowFeature"    # I

    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 743
    sparse-switch p1, :sswitch_data_0

    .line 754
    :goto_0
    return-void

    .line 745
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->initProgress()V

    goto :goto_0

    .line 748
    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->initIndeterminateProgress()V

    goto :goto_0

    .line 751
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 743
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public isInOverlayMode()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 841
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 834
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 835
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 268
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 271
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 273
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mUiOptions:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setUiOptions(I)V

    .line 275
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 208
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 209
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 519
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v3

    .line 521
    .local v3, "count":I
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v8

    .line 522
    .local v8, "parentLeft":I
    sub-int v12, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .line 524
    .local v9, "parentRight":I
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v10

    .line 525
    .local v10, "parentTop":I
    sub-int v12, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v13

    sub-int v7, v12, v13

    .line 527
    .local v7, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 528
    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 529
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 530
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 532
    .local v6, "lp":Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 533
    .local v11, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 535
    .local v4, "height":I
    iget v12, v6, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int v1, v8, v12

    .line 537
    .local v1, "childLeft":I
    iget-object v12, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-ne v0, v12, :cond_1

    .line 538
    sub-int v12, v7, v4

    iget v13, v6, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v12, v13

    .line 543
    .local v2, "childTop":I
    :goto_1
    add-int v12, v1, v11

    add-int v13, v2, v4

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 527
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 540
    .restart local v1    # "childLeft":I
    .restart local v4    # "height":I
    .restart local v6    # "lp":Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .restart local v11    # "width":I
    :cond_1
    iget v12, v6, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int v2, v10, v12

    .restart local v2    # "childTop":I
    goto :goto_1

    .line 546
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 399
    const/4 v12, 0x0

    .line 400
    .local v12, "maxHeight":I
    const/4 v13, 0x0

    .line 401
    .local v13, "maxWidth":I
    const/4 v10, 0x0

    .line 403
    .local v10, "childState":I
    const/16 v16, 0x0

    .line 404
    .local v16, "topInset":I
    const/4 v9, 0x0

    .line 406
    .local v9, "bottomInset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 408
    .local v11, "lp":Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    invoke-static {v10, v1}, Landroid/support/v7/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v10

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .end local v11    # "lp":Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 419
    .restart local v11    # "lp":Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    invoke-static {v10, v1}, Landroid/support/v7/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v10

    .line 427
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v17

    .line 430
    .local v17, "vis":I
    move/from16 v0, v17

    and-int/lit16 v1, v0, 0x100

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mTransStatusBarInFlyme3:Z

    if-eqz v1, :cond_5

    :cond_1
    const/4 v14, 0x1

    .line 433
    .local v14, "stable":Z
    :goto_0
    if-eqz v14, :cond_6

    .line 436
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    move/from16 v16, v0

    .line 437
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v1, :cond_2

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v15

    .line 439
    .local v15, "tabs":Landroid/view/View;
    if-eqz v15, :cond_2

    .line 443
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v8

    .line 444
    .local v8, "abp":Landroid/support/v7/internal/view/ActionBarPolicy;
    invoke-virtual {v8}, Landroid/support/v7/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    add-int v16, v16, v1

    .line 454
    .end local v8    # "abp":Landroid/support/v7/internal/view/ActionBarPolicy;
    .end local v15    # "tabs":Landroid/view/View;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/DecorToolbar;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_3

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v9

    .line 474
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 476
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_7

    if-nez v14, :cond_7

    .line 477
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v16

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v9

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 483
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/internal/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/internal/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    .line 494
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/internal/widget/ContentFrameLayout;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .end local v11    # "lp":Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 496
    .restart local v11    # "lp":Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 498
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 500
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/internal/widget/ContentFrameLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    invoke-static {v10, v1}, Landroid/support/v7/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v10

    .line 504
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 509
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 511
    move/from16 v0, p1

    invoke-static {v13, v0, v10}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v10, 0x10

    move/from16 v0, p2

    invoke-static {v12, v0, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 515
    return-void

    .line 430
    .end local v14    # "stable":Z
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 448
    .restart local v14    # "stable":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v16

    goto/16 :goto_1

    .line 480
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v16

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v9

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v0, 0x1

    .line 607
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v1, :cond_0

    if-nez p4, :cond_1

    .line 608
    :cond_0
    const/4 v0, 0x0

    .line 616
    :goto_0
    return v0

    .line 610
    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 611
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    .line 615
    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    goto :goto_0

    .line 613
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 622
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 587
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 588
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 589
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 576
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 577
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 578
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 579
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 582
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 568
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    :cond_0
    const/4 v0, 0x0

    .line 571
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 593
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v0, :cond_0

    .line 594
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 595
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    .line 600
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 603
    :cond_1
    return-void

    .line 597
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 7
    .param p1, "visible"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 278
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 279
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 282
    iget v5, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int v1, v5, p1

    .line 283
    .local v1, "diff":I
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 284
    and-int/lit8 v5, p1, 0x4

    if-nez v5, :cond_4

    move v0, v3

    .line 285
    .local v0, "barVisible":Z
    :goto_0
    and-int/lit16 v5, p1, 0x100

    if-eqz v5, :cond_5

    move v2, v3

    .line 286
    .local v2, "stable":Z
    :goto_1
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_2

    .line 290
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-nez v2, :cond_6

    :goto_2
    invoke-interface {v5, v3}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 291
    if-nez v0, :cond_1

    if-nez v2, :cond_7

    :cond_1
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 294
    :cond_2
    :goto_3
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_3

    .line 295
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v3, :cond_3

    .line 296
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 299
    :cond_3
    return-void

    .end local v0    # "barVisible":Z
    .end local v2    # "stable":Z
    :cond_4
    move v0, v4

    .line 284
    goto :goto_0

    .restart local v0    # "barVisible":Z
    :cond_5
    move v2, v4

    .line 285
    goto :goto_1

    .restart local v2    # "stable":Z
    :cond_6
    move v3, v4

    .line 290
    goto :goto_2

    .line 292
    :cond_7
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 304
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 305
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 308
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/internal/widget/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 636
    const v0, 0x7f0d0004

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ContentFrameLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/internal/widget/ContentFrameLayout;

    .line 637
    const v0, 0x7f0d0066

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 638
    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Landroid/support/v7/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    .line 639
    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 641
    :cond_0
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 673
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 674
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    .line 675
    .local v2, "topHeight":I
    const/4 v3, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 676
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/internal/widget/ActionBarContainer;

    neg-int v4, p1

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 677
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 679
    int-to-float v3, p1

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 680
    .local v1, "fOffset":F
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 681
    .local v0, "bOffset":I
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    int-to-float v4, v0

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 683
    .end local v0    # "bOffset":I
    .end local v1    # "fOffset":F
    :cond_0
    return-void
.end method

.method public setActionBarVisibilityCallback(Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .prologue
    .line 212
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 213
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 217
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v1, :cond_0

    .line 218
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 219
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 220
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 223
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasNonEmbeddedTabs"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 243
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 655
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_0

    .line 656
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 657
    if-nez p1, :cond_0

    .line 658
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 659
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 662
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 864
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 865
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 866
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 858
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 859
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 860
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2
    .param p1, "overlayMode"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 235
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowingForActionMode(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 264
    return-void
.end method

.method public setSplitBarFitSystemWindows(Z)V
    .locals 0
    .param p1, "fitSystemWindows"    # Z

    .prologue
    .line 968
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mMzSplitBarFloat:Z

    .line 969
    return-void
.end method

.method public setTransStatusBarInFlyme3(Z)V
    .locals 0
    .param p1, "transStatusBarInFlyme3"    # Z

    .prologue
    .line 962
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mTransStatusBarInFlyme3:Z

    .line 963
    return-void
.end method

.method public setUiOptions(I)V
    .locals 6
    .param p1, "uiOptions"    # I

    .prologue
    const/4 v5, 0x0

    .line 758
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mUiOptions:I

    .line 759
    const/4 v1, 0x0

    .line 760
    .local v1, "splitActionBar":Z
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 762
    .local v2, "splitWhenNarrow":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 763
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 768
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 769
    const v3, 0x7f0d0068

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 771
    .local v0, "cab":Landroid/support/v7/internal/widget/ActionBarContextView;
    if-eqz v1, :cond_4

    .line 772
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v3}, Landroid/support/v7/internal/widget/DecorToolbar;->canSplit()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 773
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-interface {v3, v4}, Landroid/support/v7/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 775
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 789
    :cond_0
    :goto_2
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v3, v1}, Landroid/support/v7/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    .line 790
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v3, v2}, Landroid/support/v7/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    .line 792
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 793
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 794
    :goto_3
    return-void

    .line 760
    .end local v0    # "cab":Landroid/support/v7/internal/widget/ActionBarContextView;
    .end local v2    # "splitWhenNarrow":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 766
    .restart local v2    # "splitWhenNarrow":Z
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mMzWindowSplitToolBar:Z

    goto :goto_1

    .line 777
    .restart local v0    # "cab":Landroid/support/v7/internal/widget/ActionBarContextView;
    :cond_3
    const-string v3, "ActionBarOverlayLayout"

    const-string v4, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 782
    :cond_4
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v3, v5}, Landroid/support/v7/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 785
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->isInMultiChoiceActionMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 786
    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    goto :goto_2
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 724
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 725
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 726
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 730
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 731
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 732
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 846
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 847
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
