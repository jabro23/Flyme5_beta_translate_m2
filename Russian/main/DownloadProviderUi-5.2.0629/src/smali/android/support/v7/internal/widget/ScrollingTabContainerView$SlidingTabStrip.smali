.class Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorColor:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 789
    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .line 790
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 776
    iput v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    .line 779
    iput v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    .line 780
    iput v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    .line 791
    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 792
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 793
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MzActionBarTabBar:[I

    invoke-static {p2, p3, v1, p4, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 796
    .local v0, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorColor:I

    .line 798
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 800
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 802
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 803
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 804
    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->setMotionEventSplittingEnabled(Z)V

    .line 805
    return-void
.end method

.method static synthetic access$1002(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 771
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    return p1
.end method

.method static synthetic access$800(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;II)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 771
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method static synthetic access$902(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 771
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    return p1
.end method

.method private setIndicatorPosition(II)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 947
    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_1

    .line 949
    :cond_0
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    .line 950
    iput p2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    .line 951
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 953
    :cond_1
    return-void
.end method

.method private tryScatterLayout()V
    .locals 13

    .prologue
    .line 893
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildCount()I

    move-result v3

    .line 894
    .local v3, "childCount":I
    if-nez v3, :cond_1

    .line 921
    :cond_0
    return-void

    .line 895
    :cond_1
    const/4 v9, 0x0

    .line 896
    .local v9, "totalWidth":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 897
    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 898
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 896
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 900
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getMeasuredWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 901
    const/4 v6, 0x0

    .line 902
    .local v6, "inset":I
    const/4 v10, 0x2

    if-ne v3, v10, :cond_5

    .line 903
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0084

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 907
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v10, v9

    mul-int/lit8 v11, v6, 0x2

    if-ge v10, v11, :cond_4

    const/4 v6, 0x0

    .line 908
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getMeasuredWidth()I

    move-result v10

    mul-int/lit8 v11, v6, 0x2

    sub-int v0, v10, v11

    .line 909
    .local v0, "availableWidth":I
    move v1, v6

    .line 911
    .local v1, "begin":I
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_0

    .line 912
    move v7, v1

    .line 913
    .local v7, "left":I
    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 914
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 915
    .local v4, "childWidth":I
    int-to-float v10, v4

    int-to-float v11, v9

    div-float/2addr v10, v11

    int-to-float v11, v0

    mul-float/2addr v10, v11

    float-to-int v8, v10

    .line 916
    .local v8, "rateWidth":I
    sub-int v10, v8, v4

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v7, v10

    .line 917
    add-int/2addr v1, v8

    .line 918
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    add-int v11, v7, v4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 911
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 904
    .end local v0    # "availableWidth":I
    .end local v1    # "begin":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childWidth":I
    .end local v7    # "left":I
    .end local v8    # "rateWidth":I
    :cond_5
    const/4 v10, 0x3

    if-ne v3, v10, :cond_3

    .line 905
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0085

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_1
.end method

.method private updateIndicatorPosition()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 924
    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 927
    .local v3, "selectedTitle":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 928
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 929
    .local v0, "left":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 931
    .local v2, "right":I
    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 933
    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 934
    .local v1, "nextTitle":Landroid/view/View;
    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 936
    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 943
    .end local v1    # "nextTitle":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 944
    return-void

    .line 940
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_1
    const/4 v2, -0x1

    .restart local v2    # "right":I
    move v0, v2

    .restart local v0    # "left":I
    goto :goto_0
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v6, 0x1

    .line 956
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 959
    .local v6, "isRtl":Z
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 960
    .local v7, "targetView":Landroid/view/View;
    if-nez v7, :cond_1

    .line 1024
    :goto_1
    return-void

    .line 956
    .end local v6    # "isRtl":Z
    .end local v7    # "targetView":Landroid/view/View;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 961
    .restart local v6    # "isRtl":Z
    .restart local v7    # "targetView":Landroid/view/View;
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 962
    .local v3, "targetLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v5

    .line 989
    .local v5, "targetRight":I
    iget v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    .line 990
    .local v2, "startLeft":I
    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    .line 992
    .local v4, "startRight":I
    if-ne v2, v3, :cond_2

    if-eq v4, v5, :cond_4

    :cond_2
    if-ltz v2, :cond_4

    if-ltz v4, :cond_4

    .line 993
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 994
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 995
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    int-to-long v8, p2

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 996
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 997
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;IIII)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1006
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$2;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1019
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 1021
    :cond_4
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    .line 1022
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    goto :goto_1

    .line 994
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public cancelIndicatorAnim()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1057
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1029
    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    iget v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    if-le v0, v1, :cond_0

    .line 1030
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1032
    .local v6, "drawableHeight":I
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getHeight()I

    move-result v2

    sub-int/2addr v2, v6

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1034
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1040
    .end local v6    # "drawableHeight":I
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 879
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 882
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->tryScatterLayout()V

    .line 885
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    # invokes: Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isAnimationRunning(Landroid/view/animation/Animation;)Z
    invoke-static {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->access$500(Landroid/view/animation/Animation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->updateIndicatorPosition()V

    .line 890
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 829
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 831
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v8, v9, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    # getter for: Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMode:I
    invoke-static {v8}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->access$600(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 838
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 840
    .local v1, "count":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 843
    .local v6, "unspecifiedSpec":I
    const/4 v4, 0x0

    .line 844
    .local v4, "largestTabWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v7, v1

    .local v7, "z":I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 845
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 846
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    .line 847
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 844
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 850
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-lez v4, :cond_0

    .line 855
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/16 v9, 0x10

    # invokes: Landroid/support/v7/internal/widget/ScrollingTabContainerView;->dpToPx(I)I
    invoke-static {v8, v9}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->access$700(Landroid/support/v7/internal/widget/ScrollingTabContainerView;I)I

    move-result v2

    .line 856
    .local v2, "gutter":I
    mul-int v8, v4, v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getMeasuredWidth()I

    move-result v9

    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_3

    .line 859
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 860
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 861
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 862
    .local v5, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iput v4, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 863
    const/4 v8, 0x0

    iput v8, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 859
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 873
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_0
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 818
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    # invokes: Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isAnimationRunning(Landroid/view/animation/Animation;)Z
    invoke-static {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->access$500(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 821
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->cancelIndicatorAnim()V

    .line 822
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I

    .line 823
    iput p2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F

    .line 824
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->updateIndicatorPosition()V

    goto :goto_0
.end method
