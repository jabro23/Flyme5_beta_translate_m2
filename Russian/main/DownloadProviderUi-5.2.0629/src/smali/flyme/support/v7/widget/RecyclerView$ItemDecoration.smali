.class public abstract Lflyme/support/v7/widget/RecyclerView$ItemDecoration;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILflyme/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 8692
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8693
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .param p4, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 8716
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;ILflyme/support/v7/widget/RecyclerView;)V

    .line 8718
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8662
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 8653
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;)V

    .line 8654
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8683
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 8674
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;)V

    .line 8675
    return-void
.end method