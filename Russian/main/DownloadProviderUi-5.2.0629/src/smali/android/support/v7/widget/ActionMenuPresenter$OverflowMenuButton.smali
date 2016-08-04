.class Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/support/v7/internal/widget/TintImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 692
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 696
    # getter for: Landroid/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$200(Landroid/support/v7/widget/ActionMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f01008e

    :goto_0
    invoke-direct {p0, p2, v3, v1}, Landroid/support/v7/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 690
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .line 697
    const v1, 0x7f0d000e

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setId(I)V

    .line 700
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 701
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 702
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 703
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 705
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {v1, p0, p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 736
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 737
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->isSplit()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 738
    :cond_0
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;

    invoke-direct {v0, p1, p0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/view/View;)V

    .line 739
    .local v0, "rippleDrawableComp":Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 744
    .end local v0    # "rippleDrawableComp":Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;
    :cond_1
    # getter for: Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 745
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 747
    return-void

    .line 696
    :cond_3
    const v1, 0x7f01002b

    goto :goto_0
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 810
    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/TintImageView;->onLayout(ZIIII)V

    .line 811
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42500000    # 52.0f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 812
    .local v1, "minTouchWidth":I
    sub-int v4, p4, p2

    if-ge v4, v1, :cond_0

    .line 813
    sub-int v4, p4, p2

    sub-int v4, v1, v4

    div-int/lit8 v0, v4, 0x2

    .line 814
    .local v0, "extend":I
    new-instance v3, Landroid/graphics/Rect;

    sub-int v4, p2, v0

    add-int v5, p4, v0

    invoke-direct {v3, v4, p3, v5, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 815
    .local v3, "touchRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 816
    .local v2, "parent":Landroid/view/View;
    new-instance v4, Landroid/view/TouchDelegate;

    invoke-direct {v4, v3, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 818
    .end local v0    # "extend":I
    .end local v2    # "parent":Landroid/view/View;
    .end local v3    # "touchRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 751
    invoke-super {p0}, Landroid/support/v7/internal/widget/TintImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    :goto_0
    return v1

    .line 755
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 756
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 15
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 772
    invoke-super/range {p0 .. p4}, Landroid/support/v7/internal/widget/TintImageView;->setFrame(IIII)Z

    move-result v3

    .line 775
    .local v3, "changed":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 776
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 790
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I

    move-result v12

    sub-int v7, v11, v12

    .line 791
    .local v7, "offsetX":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I

    move-result v12

    sub-int v8, v11, v12

    .line 792
    .local v8, "offsetY":I
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    if-nez v7, :cond_0

    if-eqz v8, :cond_1

    .line 793
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v9

    .line 794
    .local v9, "width":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v5

    .line 795
    .local v5, "height":I
    div-int/lit8 v10, v9, 0x2

    .line 796
    .local v10, "widthHalfEdge":I
    div-int/lit8 v6, v5, 0x2

    .line 797
    .local v6, "heightHalfEdge":I
    add-int v11, v9, v7

    div-int/lit8 v1, v11, 0x2

    .line 798
    .local v1, "centerX":I
    add-int v11, v5, v8

    div-int/lit8 v2, v11, 0x2

    .line 799
    .local v2, "centerY":I
    sub-int v11, v1, v10

    sub-int v12, v2, v6

    add-int v13, v1, v10

    add-int v14, v2, v6

    invoke-static {v0, v11, v12, v13, v14}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 804
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    .end local v5    # "height":I
    .end local v6    # "heightHalfEdge":I
    .end local v9    # "width":I
    .end local v10    # "widthHalfEdge":I
    :cond_1
    return v3
.end method
