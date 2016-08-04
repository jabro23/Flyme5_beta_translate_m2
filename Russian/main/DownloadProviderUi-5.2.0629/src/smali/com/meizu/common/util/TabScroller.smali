.class public Lcom/meizu/common/util/TabScroller;
.super Ljava/lang/Object;
.source "TabScroller.java"


# instance fields
.field private mCurrentTabOffset:F

.field private mCurrentTabPos:I

.field private mOldTabOffset:F

.field private mTabIndicator:Landroid/graphics/drawable/Drawable;

.field private mTabIndicatorHeight:I

.field private mTabLength:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabParentView:Landroid/view/ViewGroup;

.field private mTabViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v1, 0x14

    iput v1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicatorHeight:I

    .line 81
    iput v4, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/common/util/TabScroller;->mOldTabOffset:F

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    .line 90
    const/4 v1, 0x0

    sget-object v2, Lcom/meizu/common/R$styleable;->TabScroller:[I

    const v3, 0x7f010118

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    iget-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicatorHeight:I

    .line 97
    iput-object p2, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    .line 98
    return-void
.end method


# virtual methods
.method public addTabView(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 151
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 154
    :cond_0
    return-void
.end method

.method public addTabView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 218
    .local v11, "tabSize":I
    if-nez v11, :cond_0

    .line 274
    :goto_0
    return-void

    .line 222
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    if-lt v12, v11, :cond_7

    .line 223
    add-int/lit8 v12, v11, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    .line 228
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v11, :cond_8

    const/4 v10, 0x1

    .line 230
    .local v10, "setTabLength":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 231
    .local v7, "mCurTab":Landroid/view/View;
    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 232
    .local v2, "curTabwidth":I
    :goto_3
    if-ltz v2, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v12

    if-le v2, v12, :cond_3

    .line 233
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 235
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 237
    .local v6, "height":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int v1, v12, v13

    .line 239
    .local v1, "center":I
    const/4 v8, 0x0

    .line 240
    .local v8, "nextTab":Landroid/view/View;
    const/4 v9, 0x0

    .line 241
    .local v9, "nextTabWidth":I
    const/4 v4, 0x0

    .line 243
    .local v4, "deltaWidth":F
    const/4 v5, 0x0

    .line 245
    .local v5, "distance":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/util/TabScroller;->mOldTabOffset:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    add-int/lit8 v13, v11, -0x1

    if-ge v12, v13, :cond_b

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "nextTab":Landroid/view/View;
    check-cast v8, Landroid/view/View;

    .line 248
    .restart local v8    # "nextTab":Landroid/view/View;
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 249
    :goto_4
    if-ltz v9, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v12

    if-le v9, v12, :cond_5

    .line 250
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 261
    :cond_5
    :goto_5
    if-eqz v8, :cond_6

    .line 262
    sub-int v12, v9, v2

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    mul-float v4, v12, v13

    .line 263
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sub-int v5, v12, v13

    .line 264
    int-to-float v12, v1

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v1, v12

    .line 267
    :cond_6
    int-to-float v12, v2

    add-float/2addr v12, v4

    float-to-int v3, v12

    .line 269
    .local v3, "curWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v13, v3, 0x2

    sub-int v13, v1, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/util/TabScroller;->mTabIndicatorHeight:I

    sub-int v14, v6, v14

    div-int/lit8 v15, v3, 0x2

    add-int/2addr v15, v1

    invoke-virtual {v12, v13, v14, v15, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 224
    .end local v1    # "center":I
    .end local v2    # "curTabwidth":I
    .end local v3    # "curWidth":I
    .end local v4    # "deltaWidth":F
    .end local v5    # "distance":I
    .end local v6    # "height":I
    .end local v7    # "mCurTab":Landroid/view/View;
    .end local v8    # "nextTab":Landroid/view/View;
    .end local v9    # "nextTabWidth":I
    .end local v10    # "setTabLength":Z
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    if-gez v12, :cond_1

    .line 225
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    goto/16 :goto_1

    .line 228
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 231
    .restart local v7    # "mCurTab":Landroid/view/View;
    .restart local v10    # "setTabLength":Z
    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    goto/16 :goto_3

    .line 248
    .restart local v1    # "center":I
    .restart local v2    # "curTabwidth":I
    .restart local v4    # "deltaWidth":F
    .restart local v5    # "distance":I
    .restart local v6    # "height":I
    .restart local v8    # "nextTab":Landroid/view/View;
    .restart local v9    # "nextTabWidth":I
    :cond_a
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    goto :goto_4

    .line 252
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/util/TabScroller;->mOldTabOffset:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    if-lez v12, :cond_5

    .line 254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "nextTab":Landroid/view/View;
    check-cast v8, Landroid/view/View;

    .line 255
    .restart local v8    # "nextTab":Landroid/view/View;
    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 256
    :goto_6
    if-ltz v9, :cond_c

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v12

    if-le v9, v12, :cond_5

    .line 257
    :cond_c
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    goto/16 :goto_5

    .line 255
    :cond_d
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    goto :goto_6
.end method

.method public onTabScrolled(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 205
    iput p1, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    .line 206
    iput p2, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    .line 207
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 210
    :cond_0
    return-void
.end method

.method public removeAllTabView()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 197
    :cond_0
    return-void
.end method

.method public removeTabView(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/common/util/TabScroller;->removeTabView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public removeTabView(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 177
    :cond_0
    return v0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iput p1, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    .line 132
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public setTabIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicatorHeight:I

    .line 109
    :cond_0
    return-void
.end method

.method public setTabIndicatorHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 116
    if-lez p1, :cond_0

    .line 117
    iput p1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicatorHeight:I

    .line 119
    :cond_0
    return-void
.end method

.method public setTabLength([I)V
    .locals 6
    .param p1, "lengths"    # [I

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 163
    .local v1, "i":I
    iget-object v4, p0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "arr$":[I
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method
