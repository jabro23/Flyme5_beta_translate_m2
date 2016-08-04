.class public Lflyme/support/v7/widget/MzItemDecoration;
.super Lflyme/support/v7/widget/RecyclerView$ItemDecoration;
.source "MzItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;
    }
.end annotation


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field public mDividerPadding:Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;

.field private mDividerWidth:I

.field private mRecyclerView:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020203

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/MzItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 21
    iget-object v0, p0, Lflyme/support/v7/widget/MzItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/MzItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 22
    return-void
.end method

.method private getOrientation(Lflyme/support/v7/widget/RecyclerView;)I
    .locals 3
    .param p1, "parent"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 113
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Lflyme/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/LinearLayoutManager;

    .line 115
    .local v0, "layoutManager":Lflyme/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    return v1

    .line 117
    .end local v0    # "layoutManager":Lflyme/support/v7/widget/LinearLayoutManager;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DividerItemDecoration can only be used with a LinearLayoutManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/MzItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_1

    .line 59
    invoke-super/range {p0 .. p3}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 110
    :cond_0
    return-void

    .line 63
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lflyme/support/v7/widget/MzItemDecoration;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 64
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/MzItemDecoration;->getOrientation(Lflyme/support/v7/widget/RecyclerView;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 65
    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v10

    .line 66
    .local v10, "left":I
    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v16

    sub-int v13, v15, v16

    .line 67
    .local v13, "right":I
    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 69
    .local v4, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v4, :cond_0

    .line 70
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lflyme/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 72
    .local v12, "params":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v15

    iget v0, v12, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    add-int v14, v15, v16

    .line 73
    .local v14, "top":I
    move-object/from16 v0, p0

    iget v15, v0, Lflyme/support/v7/widget/MzItemDecoration;->mDividerHeight:I

    add-int v2, v14, v15

    .line 74
    .local v2, "bottom":I
    move v6, v10

    .line 75
    .local v6, "finalLeft":I
    move v7, v13

    .line 76
    .local v7, "finalRight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/MzItemDecoration;->mDividerPadding:Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;

    if-eqz v15, :cond_2

    .line 77
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/MzItemDecoration;->mDividerPadding:Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v16

    invoke-interface/range {v15 .. v16}, Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;->getDividerPadding(I)[I

    move-result-object v11

    .line 78
    .local v11, "paddings":[I
    array-length v15, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 79
    const/4 v15, 0x0

    aget v15, v11, v15

    add-int/2addr v6, v15

    .line 80
    const/4 v15, 0x1

    aget v15, v11, v15

    sub-int/2addr v7, v15

    .line 83
    .end local v11    # "paddings":[I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/MzItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v6, v14, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/MzItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "bottom":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v6    # "finalLeft":I
    .end local v7    # "finalRight":I
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v12    # "params":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .end local v13    # "right":I
    .end local v14    # "top":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v14

    .line 88
    .restart local v14    # "top":I
    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v16

    sub-int v2, v15, v16

    .line 89
    .restart local v2    # "bottom":I
    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 91
    .restart local v4    # "childCount":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    if-ge v9, v4, :cond_0

    .line 92
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lflyme/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 93
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 95
    .restart local v12    # "params":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v15

    iget v0, v12, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    move/from16 v16, v0

    add-int v10, v15, v16

    .line 96
    .restart local v10    # "left":I
    move-object/from16 v0, p0

    iget v15, v0, Lflyme/support/v7/widget/MzItemDecoration;->mDividerWidth:I

    add-int v13, v10, v15

    .line 97
    .restart local v13    # "right":I
    move v8, v14

    .line 98
    .local v8, "finalTop":I
    move v5, v2

    .line 99
    .local v5, "finalBottom":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/MzItemDecoration;->mDividerPadding:Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;

    if-eqz v15, :cond_4

    .line 100
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/MzItemDecoration;->mDividerPadding:Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v16

    invoke-interface/range {v15 .. v16}, Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;->getDividerPadding(I)[I

    move-result-object v11

    .line 101
    .restart local v11    # "paddings":[I
    array-length v15, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 102
    const/4 v15, 0x0

    aget v15, v11, v15

    add-int/2addr v8, v15

    .line 103
    const/4 v15, 0x1

    aget v15, v11, v15

    sub-int/2addr v5, v15

    .line 106
    .end local v11    # "paddings":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/MzItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v10, v8, v13, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/MzItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 31
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/MzItemDecoration;->mDividerHeight:I

    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/MzItemDecoration;->mDividerWidth:I

    .line 38
    :goto_0
    iput-object p1, p0, Lflyme/support/v7/widget/MzItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 39
    iget-object v0, p0, Lflyme/support/v7/widget/MzItemDecoration;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lflyme/support/v7/widget/MzItemDecoration;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->invalidate()V

    .line 42
    :cond_0
    return-void

    .line 35
    :cond_1
    iput v0, p0, Lflyme/support/v7/widget/MzItemDecoration;->mDividerHeight:I

    .line 36
    iput v0, p0, Lflyme/support/v7/widget/MzItemDecoration;->mDividerWidth:I

    goto :goto_0
.end method

.method public setDividerPadding(Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;)V
    .locals 0
    .param p1, "dividerPadding"    # Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;

    .prologue
    .line 126
    iput-object p1, p0, Lflyme/support/v7/widget/MzItemDecoration;->mDividerPadding:Lflyme/support/v7/widget/MzItemDecoration$DividerPadding;

    .line 127
    return-void
.end method
