.class public Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;,
        Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private isAtToolbar:Z

.field private mAllowCollapse:Z

.field private mContentHeight:I

.field mMaxTabWidth:I

.field private mMode:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

.field protected final mVisAnimListener:Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    const v0, 0x7f01008c

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    new-instance v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMode:I

    .line 116
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setOverScrollMode(I)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setFadingEdgeLength(I)V

    .line 121
    invoke-static {p1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 122
    .local v0, "abp":Landroid/support/v7/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 123
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 125
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    .line 126
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isAtToolbar:Z

    return v0
.end method

.method static synthetic access$400(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/animation/Animation;

    .prologue
    .line 64
    invoke-static {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 64
    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMode:I

    return v0
.end method

.method static synthetic access$700(Landroid/support/v7/internal/widget/ScrollingTabContainerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method private calculateScrollXForTab(IF)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 755
    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMode:I

    if-nez v4, :cond_1

    .line 756
    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v4, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 757
    .local v2, "selectedChild":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 760
    .local v0, "nextChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 761
    .local v3, "selectedWidth":I
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 763
    .local v1, "nextWidth":I
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-int v5, v3, v1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 768
    .end local v0    # "nextChild":Landroid/view/View;
    .end local v1    # "nextWidth":I
    .end local v2    # "selectedChild":Landroid/view/View;
    .end local v3    # "selectedWidth":I
    :cond_1
    return v1

    .line 757
    .restart local v2    # "selectedChild":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "nextChild":Landroid/view/View;
    :cond_3
    move v3, v1

    .line 760
    goto :goto_1
.end method

.method private createSpinner()Landroid/support/v7/internal/widget/SpinnerCompat;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f010049

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 257
    .local v0, "spinner":Landroid/support/v7/internal/widget/SpinnerCompat;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setOnItemClickListenerInt(Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V

    .line 260
    return-object v0
.end method

.method private createTabLayout()Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;
    .locals 4

    .prologue
    .line 245
    new-instance v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f010027

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    .local v0, "tabLayout":Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->setGravity(I)V

    .line 249
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    return-object v0
.end method

.method private createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    const/4 v2, 0x0

    .line 340
    new-instance v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/support/v7/app/ActionBar$Tab;Z)V

    .line 341
    .local v0, "tabView":Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 342
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    :goto_0
    return-object v0

    .line 346
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 348
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 349
    new-instance v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 351
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private dpToPx(I)I
    .locals 2
    .param p1, "dps"    # I

    .prologue
    .line 1068
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1072
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v0, :cond_1

    .line 193
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/support/v7/internal/widget/SpinnerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 195
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 201
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 203
    iput-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 205
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return v4

    .line 211
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method

.method private setSelectedTabView(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 729
    iget-object v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildCount()I

    move-result v2

    .line 730
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 731
    iget-object v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 732
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 732
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 734
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 5
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 357
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 362
    .local v0, "tabView":Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 368
    :cond_0
    if-eqz p2, :cond_1

    .line 369
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 371
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 374
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 375
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 377
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 305
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 306
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 309
    :cond_0
    new-instance v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 319
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method

.method public getTabStripWidth()I
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 325
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 329
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 264
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 265
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 273
    .local v0, "abp":Landroid/support/v7/internal/view/ActionBarPolicy;
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isAtToolbar:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getActionBarHeight()I

    move-result v1

    .line 274
    .local v1, "contentHeight":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 276
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 277
    return-void

    .line 273
    .end local v1    # "contentHeight":I
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 334
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 337
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/support/v7/internal/widget/AdapterViewCompat;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/internal/widget/AdapterViewCompat",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "parent":Landroid/support/v7/internal/widget/AdapterViewCompat;, "Landroid/support/v7/internal/widget/AdapterViewCompat<*>;"
    move-object v0, p2

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    .line 436
    .local v0, "tabView":Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar$Tab;->select()V

    .line 437
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1096
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 1097
    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1098
    :cond_1
    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1099
    .local v1, "tabView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1100
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 1101
    .local v0, "scrollPos":I
    if-lez v0, :cond_0

    .line 1102
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setScrollX(I)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 133
    .local v5, "widthMode":I
    if-ne v5, v10, :cond_2

    move v2, v6

    .line 134
    .local v2, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 136
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v8}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 137
    .local v1, "childCount":I
    if-le v1, v6, :cond_4

    if-eq v5, v10, :cond_0

    const/high16 v8, -0x80000000

    if-ne v5, v8, :cond_4

    .line 139
    :cond_0
    const/4 v8, 0x2

    if-le v1, v8, :cond_3

    .line 140
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 144
    :goto_1
    iget v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v9, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 149
    :goto_2
    iget v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 151
    if-nez v2, :cond_5

    iget-boolean v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v8, :cond_5

    move v0, v6

    .line 153
    .local v0, "canCollapse":Z
    :goto_3
    if-eqz v0, :cond_7

    .line 155
    iget-object v6, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v6, v7, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->measure(II)V

    .line 156
    iget-object v6, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v6}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getMeasuredWidth()I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-le v6, v7, :cond_6

    .line 157
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 165
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 166
    .local v4, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 167
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 169
    .local v3, "newWidth":I
    if-eqz v2, :cond_1

    if-eq v4, v3, :cond_1

    .line 171
    iget v6, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 173
    :cond_1
    return-void

    .end local v0    # "canCollapse":Z
    .end local v1    # "childCount":I
    .end local v2    # "lockedExpanded":Z
    .end local v3    # "newWidth":I
    .end local v4    # "oldWidth":I
    :cond_2
    move v2, v7

    .line 133
    goto :goto_0

    .line 142
    .restart local v1    # "childCount":I
    .restart local v2    # "lockedExpanded":Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 146
    :cond_4
    const/4 v8, -0x1

    iput v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_5
    move v0, v7

    .line 151
    goto :goto_3

    .line 159
    .restart local v0    # "canCollapse":Z
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 162
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 187
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    .line 235
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 236
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 237
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z

    .prologue
    .line 737
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 745
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 746
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->calculateScrollXForTab(IF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    .line 749
    if-eqz p3, :cond_0

    .line 750
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method public setTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 219
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 220
    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildCount()I

    move-result v3

    .line 221
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 222
    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v4, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 224
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 225
    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 221
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 229
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v4, :cond_3

    if-ltz p1, :cond_3

    .line 230
    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v4, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 232
    :cond_3
    return-void
.end method

.method public showAtToolbar(Z)V
    .locals 14
    .param p1, "atToolbar"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 443
    iget-boolean v13, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isAtToolbar:Z

    if-eq v13, p1, :cond_1

    move v1, v11

    .line 444
    .local v1, "changed":Z
    :goto_0
    if-eqz v1, :cond_6

    .line 445
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isAtToolbar:Z

    .line 446
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 447
    .local v0, "abp":Landroid/support/v7/internal/view/ActionBarPolicy;
    iget-boolean v13, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isAtToolbar:Z

    if-eqz v13, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getActionBarHeight()I

    move-result v3

    .line 448
    .local v3, "contentHeight":I
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 449
    iget-object v13, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    if-eqz v13, :cond_6

    iget-object v13, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v13}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildCount()I

    move-result v13

    if-lez v13, :cond_6

    .line 450
    iget-object v13, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v13}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildCount()I

    move-result v2

    .line 451
    .local v2, "childCount":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v10, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/app/ActionBar$Tab;>;"
    iget v7, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 453
    .local v7, "selectIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 454
    iget-object v13, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v13, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    .line 455
    .local v9, "tabView":Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v9}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->isSelected()Z

    move-result v13

    if-eqz v13, :cond_0

    move v7, v4

    .line 456
    :cond_0
    invoke-virtual {v9}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "abp":Landroid/support/v7/internal/view/ActionBarPolicy;
    .end local v1    # "changed":Z
    .end local v2    # "childCount":I
    .end local v3    # "contentHeight":I
    .end local v4    # "i":I
    .end local v7    # "selectIndex":I
    .end local v9    # "tabView":Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .end local v10    # "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/app/ActionBar$Tab;>;"
    :cond_1
    move v1, v12

    .line 443
    goto :goto_0

    .line 447
    .restart local v0    # "abp":Landroid/support/v7/internal/view/ActionBarPolicy;
    .restart local v1    # "changed":Z
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v3

    goto :goto_1

    .line 458
    .restart local v2    # "childCount":I
    .restart local v3    # "contentHeight":I
    .restart local v4    # "i":I
    .restart local v7    # "selectIndex":I
    .restart local v10    # "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/app/ActionBar$Tab;>;"
    :cond_3
    iget-object v13, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v13}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->removeAllViews()V

    .line 460
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/app/ActionBar$Tab;

    .line 461
    .local v8, "tab":Landroid/support/v7/app/ActionBar$Tab;
    invoke-virtual {v8}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v13

    if-ne v13, v7, :cond_4

    move v6, v11

    .line 462
    .local v6, "isSelected":Z
    :goto_4
    invoke-virtual {p0, v8, v6}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    goto :goto_3

    .end local v6    # "isSelected":Z
    :cond_4
    move v6, v12

    .line 461
    goto :goto_4

    .line 464
    .end local v8    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    :cond_5
    invoke-virtual {p0, v7}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 467
    .end local v0    # "abp":Landroid/support/v7/internal/view/ActionBarPolicy;
    .end local v2    # "childCount":I
    .end local v3    # "contentHeight":I
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "selectIndex":I
    .end local v10    # "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/app/ActionBar$Tab;>;"
    :cond_6
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 403
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 406
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 409
    :cond_1
    return-void
.end method
