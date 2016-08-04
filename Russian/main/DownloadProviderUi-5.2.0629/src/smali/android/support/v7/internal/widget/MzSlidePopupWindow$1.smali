.class Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;
.super Ljava/lang/Object;
.source "MzSlidePopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/MzSlidePopupWindow;->preparePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    .line 98
    iget-object v3, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v3}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$100(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 99
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 100
    iget-object v3, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mOnTop:Z
    invoke-static {v3}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$200(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v3}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$100(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 101
    .local v1, "beginY":I
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v3}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$100(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 102
    iget-object v3, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v3}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$100(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 104
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 105
    const/4 v3, 0x0

    return v3

    .line 100
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "beginY":I
    :cond_0
    iget-object v3, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v3}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$100(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v1, v3

    goto :goto_0
.end method
