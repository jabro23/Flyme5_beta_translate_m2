.class public Landroid/support/v7/internal/widget/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# direct methods
.method public static showToast(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .locals 1
    .param p0, "anchorView"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v7/internal/widget/ToastUtils;->showToast(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static showToast(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 23
    .param p0, "anchorView"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 42
    .local v5, "context":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 43
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget v13, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 44
    .local v13, "screenWidth":I
    iget v11, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 45
    .local v11, "screenHeight":I
    div-int/lit8 v10, v11, 0x2

    .line 46
    .local v10, "midScreenHeight":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .local v6, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 49
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v12, v0, [I

    .line 50
    .local v12, "screenPos":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 52
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 53
    .local v7, "height":I
    const/16 v20, 0x1

    aget v20, v12, v20

    add-int v3, v20, v7

    .line 55
    .local v3, "bottom":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 56
    .local v4, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v16

    .line 58
    .local v16, "toastView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b011d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 59
    .local v8, "maxWidth":I
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 60
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 62
    .local v17, "toastWidth":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b0172

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 63
    .local v14, "smartbarHeight":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b00ef

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 65
    .local v15, "statusBarHeight":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b015a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 68
    .local v19, "yOffset":I
    if-ge v3, v10, :cond_0

    .line 70
    const/16 v20, 0x1

    aget v20, v12, v20

    add-int v20, v20, v7

    sub-int v20, v20, v15

    add-int v19, v19, v20

    .line 71
    const/16 v20, 0x33

    const/16 v21, 0x0

    aget v21, v12, v21

    div-int/lit8 v22, v18, 0x2

    add-int v21, v21, v22

    div-int/lit8 v22, v17, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 80
    :goto_0
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 81
    return-object v4

    .line 75
    :cond_0
    const/16 v20, 0x1

    aget v20, v12, v20

    sub-int v20, v11, v20

    sub-int v20, v20, v14

    add-int v19, v19, v20

    .line 76
    const/16 v20, 0x53

    const/16 v21, 0x0

    aget v21, v12, v21

    div-int/lit8 v22, v18, 0x2

    add-int v21, v21, v22

    div-int/lit8 v22, v17, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method
