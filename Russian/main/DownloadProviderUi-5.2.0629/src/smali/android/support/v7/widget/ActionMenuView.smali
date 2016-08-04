.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$LayoutParams;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

.field private mContext:Landroid/content/Context;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mHasOverflow:Z

.field private mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 98
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    .line 99
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 100
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 101
    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 103
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->setMotionEventSplittingEnabled(Z)V

    .line 105
    return-void
.end method

.method private applyFlymeStyle(Landroid/support/v7/widget/ActionMenuView$LayoutParams;II)V
    .locals 8
    .param p1, "lp"    # Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .param p2, "i"    # I
    .param p3, "childCount"    # I

    .prologue
    const/16 v7, 0x11

    .line 1072
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b007f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1073
    .local v3, "overflowMargin":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0080

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1074
    .local v0, "itemLastMargin":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0081

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1075
    .local v2, "itemNextFlowMargin":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1076
    .local v1, "itemMargin":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_0

    if-nez p2, :cond_0

    .line 1077
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0086

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 1080
    :cond_0
    iget-boolean v5, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_2

    .line 1081
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_1

    .line 1082
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->setMarginEnd(I)V

    .line 1083
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getLayoutDirection()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->resolveLayoutDirection(I)V

    .line 1103
    :goto_0
    return-void

    .line 1085
    :cond_1
    iput v3, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 1090
    :cond_2
    iget-boolean v5, p0, Landroid/support/v7/widget/ActionMenuView;->mHasOverflow:Z

    if-eqz v5, :cond_3

    add-int/lit8 v5, p3, -0x2

    if-ne p2, v5, :cond_3

    .line 1091
    move v4, v2

    .line 1097
    .local v4, "rightMargin":I
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_5

    .line 1098
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->setMarginEnd(I)V

    .line 1099
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getLayoutDirection()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->resolveLayoutDirection(I)V

    goto :goto_0

    .line 1092
    .end local v4    # "rightMargin":I
    :cond_3
    iget-boolean v5, p0, Landroid/support/v7/widget/ActionMenuView;->mHasOverflow:Z

    if-nez v5, :cond_4

    add-int/lit8 v5, p3, -0x1

    if-ne p2, v5, :cond_4

    .line 1093
    move v4, v0

    .restart local v4    # "rightMargin":I
    goto :goto_1

    .line 1095
    .end local v4    # "rightMargin":I
    :cond_4
    move v4, v1

    .restart local v4    # "rightMargin":I
    goto :goto_1

    .line 1101
    :cond_5
    iput v4, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 436
    .local v8, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 438
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 439
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 441
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 443
    .local v7, "itemView":Landroid/support/v7/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 445
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 446
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 447
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 449
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 452
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 453
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 454
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 457
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 458
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 460
    iput v0, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 461
    mul-int v10, v0, p1

    .line 462
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 464
    return v0

    .line 441
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Landroid/support/v7/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 443
    .restart local v7    # "itemView":Landroid/support/v7/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 457
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method static measureChildForCellsInSplit(Landroid/view/View;III)I
    .locals 7
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "parentHeightMeasureSpec"    # I
    .param p3, "parentHeightPadding"    # I

    .prologue
    const/4 v6, 0x1

    .line 861
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 863
    .local v3, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    sub-int v1, v5, p3

    .line 865
    .local v1, "childHeightSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 866
    .local v0, "childHeightMode":I
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 868
    .local v2, "childHeightSpec":I
    iput v6, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 869
    move v4, p1

    .line 870
    .local v4, "targetWidth":I
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v5, v2}, Landroid/view/View;->measure(II)V

    .line 872
    return v6
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/support/v7/widget/ActionMenuPresenter;->isSplit()Z

    move-result v38

    if-eqz v38, :cond_0

    .line 203
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormatInSplit(II)V

    .line 417
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 209
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 210
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 212
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 213
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 215
    .local v18, "heightPadding":I
    const/16 v38, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v22

    .line 218
    .local v22, "itemHeightSpec":I
    sub-int v37, v37, v36

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 222
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 224
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_1

    .line 226
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 230
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 232
    .local v5, "cellSize":I
    move v8, v4

    .line 233
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 234
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 235
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 236
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 237
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 240
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 242
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v12

    .line 243
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_9

    .line 244
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 245
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 243
    :cond_2
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 247
    :cond_3
    instance-of v0, v11, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 248
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 250
    if-eqz v21, :cond_4

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 256
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 257
    .local v23, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 258
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 259
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 260
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 261
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 262
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 263
    if-eqz v21, :cond_7

    move-object/from16 v38, v11

    check-cast v38, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_7

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 266
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_8

    const/4 v7, 0x1

    .line 268
    .local v7, "cellsAvailable":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 271
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 272
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    add-int/lit8 v14, v14, 0x1

    .line 273
    :cond_5
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_6

    const/16 v16, 0x1

    .line 275
    :cond_6
    sub-int/2addr v8, v9

    .line 276
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 277
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_2

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_2

    .line 263
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_7
    const/16 v38, 0x0

    goto :goto_3

    :cond_8
    move v7, v8

    .line 266
    goto :goto_4

    .line 282
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_9
    if-eqz v16, :cond_b

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 287
    .local v10, "centerSingleExpandedItem":Z
    :goto_5
    const/16 v30, 0x0

    .line 288
    .local v30, "needsExpansion":Z
    :goto_6
    if-lez v14, :cond_f

    if-lez v8, :cond_f

    .line 289
    const v26, 0x7fffffff

    .line 290
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    .line 291
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    .line 292
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v0, v12, :cond_e

    .line 293
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 294
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 297
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_c

    .line 292
    :cond_a
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 282
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    .line 300
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 301
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 302
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 303
    const/16 v27, 0x1

    goto :goto_8

    .line 304
    :cond_d
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 305
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v28, v28, v38

    .line 306
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 311
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_e
    or-long v32, v32, v28

    .line 313
    move/from16 v0, v27

    if-le v0, v8, :cond_14

    .line 342
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_f
    if-nez v16, :cond_19

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_19

    const/16 v31, 0x1

    .line 343
    .local v31, "singleItem":Z
    :goto_9
    if-lez v8, :cond_21

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_21

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_10

    if-nez v31, :cond_10

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_21

    .line 345
    :cond_10
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 347
    .local v13, "expandCount":F
    if-nez v31, :cond_12

    .line 349
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 350
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 351
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 353
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_12

    .line 354
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 355
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_12

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 359
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_12
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_1a

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 362
    .local v15, "extraPixels":I
    :goto_a
    const/16 v20, 0x0

    :goto_b
    move/from16 v0, v20

    if-ge v0, v12, :cond_20

    .line 363
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1b

    .line 362
    :cond_13
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 316
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    :cond_14
    add-int/lit8 v26, v26, 0x1

    .line 318
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v12, :cond_18

    .line 319
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 320
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 321
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v28

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_16

    .line 323
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 318
    :cond_15
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 327
    :cond_16
    if-eqz v10, :cond_17

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_17

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_17

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 331
    :cond_17
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 332
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 333
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 336
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_18
    const/16 v30, 0x1

    .line 337
    goto/16 :goto_6

    .line 342
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 359
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 365
    .restart local v15    # "extraPixels":I
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 366
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 367
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    instance-of v0, v11, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 369
    move-object/from16 v0, v23

    iput v15, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 370
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 371
    if-nez v20, :cond_1c

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1c

    .line 374
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 376
    :cond_1c
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 377
    :cond_1d
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1e

    .line 378
    move-object/from16 v0, v23

    iput v15, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 379
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 380
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 381
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 386
    :cond_1e
    if-eqz v20, :cond_1f

    .line 387
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 389
    :cond_1f
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_13

    .line 390
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 395
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_20
    const/4 v8, 0x0

    .line 399
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_21
    if-eqz v30, :cond_23

    .line 400
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v12, :cond_23

    .line 401
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 402
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 404
    .restart local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_22

    .line 400
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 406
    :cond_22
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 407
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 412
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_23
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_24

    .line 413
    move/from16 v19, v25

    .line 416
    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method private onMeasureExactFormatInSplit(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 881
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/internal/view/ActionBarPolicy;->getSplitActionBarPadding()I

    move-result v8

    .line 882
    .local v8, "extraPadding":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 883
    .local v9, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 884
    .local v19, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 886
    .local v11, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    mul-int/lit8 v21, v8, 0x2

    add-int v18, v20, v21

    .line 887
    .local v18, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v21

    add-int v10, v20, v21

    .line 888
    .local v10, "heightPadding":I
    const-string v20, "ActionMenuView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onMeasureExactFormatInSplit:extraPadding="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";widthSize="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";widthPadding="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/16 v20, -0x2

    move/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v10, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v14

    .line 893
    .local v14, "itemHeightSpec":I
    sub-int v19, v19, v18

    .line 895
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v7

    .line 897
    .local v7, "childCount":I
    if-nez v7, :cond_0

    .line 899
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 938
    :goto_0
    return-void

    .line 903
    :cond_0
    div-int v3, v19, v7

    .line 905
    .local v3, "cellSize":I
    move v4, v7

    .line 906
    .local v4, "cellsRemaining":I
    const/16 v17, 0x0

    .line 907
    .local v17, "maxChildHeight":I
    const/16 v16, 0x0

    .line 910
    .local v16, "maxCellsUsed":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v7, :cond_3

    .line 911
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 912
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 910
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 914
    :cond_1
    instance-of v13, v6, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 916
    .local v13, "isGeneratedItem":Z
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 917
    .local v15, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 918
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 919
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 920
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 921
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 922
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 923
    if-eqz v13, :cond_2

    move-object/from16 v20, v6

    check-cast v20, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 925
    invoke-static {v6, v3, v14, v10}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCellsInSplit(Landroid/view/View;III)I

    move-result v5

    .line 927
    .local v5, "cellsUsed":I
    move/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 929
    sub-int/2addr v4, v5

    .line 930
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    goto :goto_2

    .line 923
    .end local v5    # "cellsUsed":I
    :cond_2
    const/16 v20, 0x0

    goto :goto_3

    .line 933
    .end local v6    # "child":Landroid/view/View;
    .end local v13    # "isGeneratedItem":Z
    .end local v15    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_3
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-eq v9, v0, :cond_4

    .line 934
    move/from16 v11, v17

    .line 937
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 623
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 729
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 596
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 598
    .local v0, "params":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 599
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 604
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 609
    if-eqz p1, :cond_2

    .line 610
    instance-of v1, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V

    .line 613
    .local v0, "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 614
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 618
    .end local v0    # "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 610
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 618
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 629
    .local v0, "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 630
    return-object v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 735
    if-nez p1, :cond_1

    .line 736
    const/4 v2, 0x0

    .line 747
    :cond_0
    :goto_0
    return v2

    .line 738
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 739
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 740
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 741
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 742
    check-cast v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 744
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 745
    check-cast v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .prologue
    .line 645
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 646
    return-void
.end method

.method public invokeItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    .line 635
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 146
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 157
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 580
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 581
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 582
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 469
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    .line 470
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/widget/ActionMenuPresenter;->isSplit()Z

    move-result v30

    if-eqz v30, :cond_2

    .line 475
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/ActionMenuView;->onLayoutInSplit(IIII)V

    goto :goto_0

    .line 480
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 481
    .local v6, "childCount":I
    sub-int v30, p5, p3

    div-int/lit8 v15, v30, 0x2

    .line 482
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 483
    .local v7, "dividerWidth":I
    const/16 v18, 0x0

    .line 484
    .local v18, "overflowWidth":I
    const/16 v17, 0x0

    .line 485
    .local v17, "nonOverflowWidth":I
    const/16 v16, 0x0

    .line 486
    .local v16, "nonOverflowCount":I
    sub-int v30, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v31

    sub-int v29, v30, v31

    .line 487
    .local v29, "widthRemaining":I
    const/4 v8, 0x0

    .line 488
    .local v8, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    .line 489
    .local v11, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_8

    .line 490
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 491
    .local v27, "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 489
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 495
    :cond_3
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 496
    .local v19, "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    .line 497
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 498
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 499
    add-int v18, v18, v7

    .line 501
    :cond_4
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 504
    .local v9, "height":I
    if-eqz v11, :cond_5

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v12, v30, v31

    .line 506
    .local v12, "l":I
    add-int v20, v12, v18

    .line 511
    .local v20, "r":I
    :goto_3
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 512
    .local v26, "t":I
    add-int v5, v26, v9

    .line 513
    .local v5, "b":I
    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 515
    sub-int v29, v29, v18

    .line 516
    const/4 v8, 0x1

    .line 517
    goto :goto_2

    .line 508
    .end local v5    # "b":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    .end local v26    # "t":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v20, v30, v31

    .line 509
    .restart local v20    # "r":I
    sub-int v12, v20, v18

    .restart local v12    # "l":I
    goto :goto_3

    .line 518
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    :cond_6
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v21, v30, v31

    .line 519
    .local v21, "size":I
    add-int v17, v17, v21

    .line 520
    sub-int v29, v29, v21

    .line 521
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 522
    add-int v17, v17, v7

    .line 524
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 528
    .end local v19    # "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v27    # "v":Landroid/view/View;
    :cond_8
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_9

    if-nez v8, :cond_9

    .line 530
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 531
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 532
    .local v28, "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 533
    .restart local v9    # "height":I
    sub-int v30, p4, p2

    div-int/lit8 v14, v30, 0x2

    .line 534
    .local v14, "midHorizontal":I
    div-int/lit8 v30, v28, 0x2

    sub-int v12, v14, v30

    .line 535
    .restart local v12    # "l":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 536
    .restart local v26    # "t":I
    add-int v30, v12, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 540
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_9
    if-eqz v8, :cond_b

    const/16 v30, 0x0

    :goto_4
    sub-int v22, v16, v30

    .line 541
    .local v22, "spacerCount":I
    const/16 v31, 0x0

    if-lez v22, :cond_c

    div-int v30, v29, v22

    :goto_5
    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 543
    .local v23, "spacerSize":I
    if-eqz v11, :cond_e

    .line 544
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v25, v30, v31

    .line 545
    .local v25, "startRight":I
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v6, :cond_0

    .line 546
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 547
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 548
    .local v13, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_a

    iget-boolean v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_d

    .line 545
    :cond_a
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 540
    .end local v13    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v25    # "startRight":I
    .end local v27    # "v":Landroid/view/View;
    :cond_b
    const/16 v30, 0x1

    goto :goto_4

    .line 541
    .restart local v22    # "spacerCount":I
    :cond_c
    const/16 v30, 0x0

    goto :goto_5

    .line 552
    .restart local v13    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v25    # "startRight":I
    .restart local v27    # "v":Landroid/view/View;
    :cond_d
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v25, v25, v30

    .line 553
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 554
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 555
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 556
    .restart local v26    # "t":I
    sub-int v30, v25, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 557
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    sub-int v25, v25, v30

    goto :goto_7

    .line 560
    .end local v9    # "height":I
    .end local v13    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v24

    .line 561
    .local v24, "startLeft":I
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_0

    .line 562
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 563
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 564
    .restart local v13    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_f

    iget-boolean v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    .line 561
    :cond_f
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 568
    :cond_10
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v24, v24, v30

    .line 569
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 570
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 571
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 572
    .restart local v26    # "t":I
    add-int v30, v24, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 573
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    add-int v24, v24, v30

    goto :goto_9
.end method

.method protected onLayoutInSplit(IIII)V
    .locals 34
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 962
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/support/v7/internal/view/ActionBarPolicy;->getSplitActionBarPadding()I

    move-result v8

    .line 963
    .local v8, "extraPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 964
    .local v6, "childCount":I
    sub-int v31, p4, p2

    div-int/lit8 v16, v31, 0x2

    .line 965
    .local v16, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 966
    .local v7, "dividerWidth":I
    const/16 v19, 0x0

    .line 967
    .local v19, "overflowWidth":I
    const/16 v18, 0x0

    .line 968
    .local v18, "nonOverflowWidth":I
    const/16 v17, 0x0

    .line 969
    .local v17, "nonOverflowCount":I
    sub-int v31, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v32

    sub-int v31, v31, v32

    mul-int/lit8 v32, v8, 0x2

    sub-int v30, v31, v32

    .line 970
    .local v30, "widthRemaining":I
    const-string v31, "ActionMenuView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onLayoutInSplit:left = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "; right = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "; widthRemaining = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v9, 0x0

    .line 972
    .local v9, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v12

    .line 973
    .local v12, "isLayoutRtl":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v6, :cond_5

    .line 974
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 975
    .local v28, "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 973
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 979
    :cond_0
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 980
    .local v20, "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3

    .line 981
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 982
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 983
    add-int v19, v19, v7

    .line 985
    :cond_1
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 988
    .local v10, "height":I
    if-eqz v12, :cond_2

    .line 989
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v31

    add-int v31, v31, v8

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v13, v31, v32

    .line 990
    .local v13, "l":I
    add-int v21, v13, v19

    .line 995
    .local v21, "r":I
    :goto_2
    div-int/lit8 v31, v10, 0x2

    sub-int v27, v16, v31

    .line 996
    .local v27, "t":I
    add-int v5, v27, v10

    .line 997
    .local v5, "b":I
    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 999
    sub-int v30, v30, v19

    .line 1000
    const/4 v9, 0x1

    .line 1001
    goto :goto_1

    .line 992
    .end local v5    # "b":I
    .end local v13    # "l":I
    .end local v21    # "r":I
    .end local v27    # "t":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v31

    sub-int v31, v31, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    sub-int v21, v31, v32

    .line 993
    .restart local v21    # "r":I
    sub-int v13, v21, v19

    .restart local v13    # "l":I
    goto :goto_2

    .line 1002
    .end local v10    # "height":I
    .end local v13    # "l":I
    .end local v21    # "r":I
    :cond_3
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v22, v31, v32

    .line 1003
    .local v22, "size":I
    add-int v18, v18, v22

    .line 1004
    sub-int v30, v30, v22

    .line 1005
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 1006
    add-int v18, v18, v7

    .line 1008
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 1012
    .end local v20    # "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v22    # "size":I
    .end local v28    # "v":Landroid/view/View;
    :cond_5
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v6, v0, :cond_7

    if-nez v9, :cond_7

    .line 1014
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 1015
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 1016
    .local v29, "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1017
    .restart local v10    # "height":I
    sub-int v31, p3, p1

    div-int/lit8 v15, v31, 0x2

    .line 1018
    .local v15, "midHorizontal":I
    div-int/lit8 v31, v29, 0x2

    sub-int v13, v15, v31

    .line 1019
    .restart local v13    # "l":I
    div-int/lit8 v31, v10, 0x2

    sub-int v27, v16, v31

    .line 1020
    .restart local v27    # "t":I
    add-int v31, v13, v29

    add-int v32, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1061
    .end local v10    # "height":I
    .end local v13    # "l":I
    .end local v15    # "midHorizontal":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_6
    return-void

    .line 1024
    :cond_7
    if-eqz v9, :cond_9

    const/16 v31, 0x0

    :goto_3
    sub-int v23, v17, v31

    .line 1025
    .local v23, "spacerCount":I
    const/16 v32, 0x0

    if-lez v23, :cond_a

    div-int v31, v30, v23

    :goto_4
    move/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1027
    .local v24, "spacerSize":I
    if-eqz v12, :cond_c

    .line 1028
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    sub-int v26, v31, v8

    .line 1029
    .local v26, "startRight":I
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v6, :cond_6

    .line 1030
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 1031
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1032
    .local v14, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    iget-boolean v0, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    .line 1029
    :cond_8
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1024
    .end local v14    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v23    # "spacerCount":I
    .end local v24    # "spacerSize":I
    .end local v26    # "startRight":I
    .end local v28    # "v":Landroid/view/View;
    :cond_9
    const/16 v31, 0x1

    goto :goto_3

    .line 1025
    .restart local v23    # "spacerCount":I
    :cond_a
    const/16 v31, 0x0

    goto :goto_4

    .line 1036
    .restart local v14    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v24    # "spacerSize":I
    .restart local v26    # "startRight":I
    .restart local v28    # "v":Landroid/view/View;
    :cond_b
    iget v0, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v26, v26, v31

    .line 1037
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 1038
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1039
    .restart local v10    # "height":I
    div-int/lit8 v31, v10, 0x2

    sub-int v27, v16, v31

    .line 1040
    .restart local v27    # "t":I
    sub-int v31, v26, v29

    add-int v32, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1041
    iget v0, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v31, v31, v24

    sub-int v26, v26, v31

    goto :goto_6

    .line 1044
    .end local v10    # "height":I
    .end local v14    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v26    # "startRight":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v31

    add-int v25, v31, v8

    .line 1045
    .local v25, "startLeft":I
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v6, :cond_6

    .line 1046
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 1047
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1048
    .restart local v14    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_d

    iget-boolean v0, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    .line 1045
    :cond_d
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1052
    :cond_e
    iget v0, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v25, v25, v31

    .line 1053
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 1054
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1055
    .restart local v10    # "height":I
    div-int/lit8 v31, v10, 0x2

    sub-int v27, v16, v31

    .line 1056
    .restart local v27    # "t":I
    const-string v31, "ActionMenuView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "layout child:left="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ";width="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    add-int v31, v25, v29

    add-int v32, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1058
    iget v0, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v31, v31, v24

    add-int v25, v25, v31

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 166
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 167
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 169
    iget-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 170
    iput v8, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 175
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 176
    .local v5, "widthSize":I
    const-string v6, "ActionMenuView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure:widthSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";mFormatItems="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";mFormatItemsWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 178
    iput v5, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 179
    iget-object v6, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 182
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 183
    .local v1, "childCount":I
    iget-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    if-lez v1, :cond_3

    .line 184
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 197
    :goto_1
    const-string v6, "ActionMenuView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMeasure:getMeasuredWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; getMeasuredHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 167
    goto/16 :goto_0

    .line 187
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 188
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 190
    .local v3, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 192
    invoke-direct {p0, v3, v2, v1}, Landroid/support/v7/widget/ActionMenuView;->applyFlymeStyle(Landroid/support/v7/widget/ActionMenuView$LayoutParams;II)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 195
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_1
.end method

.method public peekMenu()Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setHasOverflow(Z)V
    .locals 0
    .param p1, "hasOverflow"    # Z

    .prologue
    .line 1110
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->mHasOverflow:Z

    .line 1111
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 677
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .line 678
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;

    .line 679
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 161
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    .line 592
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 115
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 116
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 117
    if-nez p1, :cond_1

    .line 118
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 140
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 141
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
