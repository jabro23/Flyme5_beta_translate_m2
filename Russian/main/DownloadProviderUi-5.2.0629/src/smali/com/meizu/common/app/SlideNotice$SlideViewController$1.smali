.class Lcom/meizu/common/app/SlideNotice$SlideViewController$1;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 5

    .prologue
    .line 469
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # getter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$100(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # getter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$100(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v0, v2

    .line 470
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # getter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;
    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$200(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 471
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 472
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # invokes: Lcom/meizu/common/app/SlideNotice$SlideViewController;->findViewPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    invoke-static {v2, v0, v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$300(Lcom/meizu/common/app/SlideNotice$SlideViewController;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 473
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    # invokes: Lcom/meizu/common/app/SlideNotice$SlideViewController;->update(II)V
    invoke-static {v2, v3, v4}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$400(Lcom/meizu/common/app/SlideNotice$SlideViewController;II)V

    .line 475
    .end local v1    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 469
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
