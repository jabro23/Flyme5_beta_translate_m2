.class Landroid/support/v7/widget/Toolbar$3;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$3;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 21
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 1034
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 1035
    .local v13, "parent":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$3;->this$0:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    const/high16 v18, 0x42600000    # 56.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v10, v0

    .line 1036
    .local v10, "minTouchWidth":I
    sub-int v17, p4, p2

    move/from16 v0, v17

    if-ge v0, v10, :cond_0

    .line 1037
    sub-int v17, p4, p2

    sub-int v17, v10, v17

    div-int/lit8 v7, v17, 0x2

    .line 1038
    .local v7, "extend":I
    new-instance v14, Landroid/graphics/Rect;

    sub-int v17, p2, v7

    add-int v18, p4, v7

    move/from16 v0, v17

    move/from16 v1, p3

    move/from16 v2, v18

    move/from16 v3, p5

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1039
    .local v14, "touchRect":Landroid/graphics/Rect;
    new-instance v17, Landroid/view/TouchDelegate;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 1042
    .end local v7    # "extend":I
    .end local v14    # "touchRect":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1043
    .local v4, "bg":Landroid/graphics/drawable/Drawable;
    sub-int v15, p4, p2

    .line 1044
    .local v15, "width":I
    sub-int v8, p5, p3

    .line 1045
    .local v8, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v18

    sub-int v11, v17, v18

    .line 1046
    .local v11, "offsetX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v18

    sub-int v12, v17, v18

    .line 1047
    .local v12, "offsetY":I
    if-eqz v4, :cond_2

    if-nez v11, :cond_1

    if-eqz v12, :cond_2

    .line 1048
    :cond_1
    div-int/lit8 v16, v15, 0x2

    .line 1049
    .local v16, "widthHalfEdge":I
    div-int/lit8 v9, v8, 0x2

    .line 1050
    .local v9, "heightHalfEdge":I
    add-int v17, v15, v11

    div-int/lit8 v5, v17, 0x2

    .line 1051
    .local v5, "centerX":I
    add-int v17, v8, v12

    div-int/lit8 v6, v17, 0x2

    .line 1052
    .local v6, "centerY":I
    sub-int v17, v5, v16

    sub-int v18, v6, v9

    add-int v19, v5, v16

    add-int v20, v6, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1055
    .end local v5    # "centerX":I
    .end local v6    # "centerY":I
    .end local v9    # "heightHalfEdge":I
    .end local v16    # "widthHalfEdge":I
    :cond_2
    return-void
.end method
