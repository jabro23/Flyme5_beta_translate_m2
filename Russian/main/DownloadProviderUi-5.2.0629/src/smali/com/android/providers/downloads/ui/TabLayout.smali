.class public Lcom/android/providers/downloads/ui/TabLayout;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# instance fields
.field private mTabScroller:Lcom/meizu/common/util/TabScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/downloads/ui/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/downloads/ui/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Lcom/meizu/common/util/TabScroller;

    invoke-direct {v0, p1, p0}, Lcom/meizu/common/util/TabScroller;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/TabLayout;->mTabScroller:Lcom/meizu/common/util/TabScroller;

    .line 24
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 33
    iget-object v0, p0, Lcom/android/providers/downloads/ui/TabLayout;->mTabScroller:Lcom/meizu/common/util/TabScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/common/util/TabScroller;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 34
    return-void
.end method
