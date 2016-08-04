.class Lcom/meizu/common/app/SlideNotice$SlideViewController$5;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;->handleShow()Z
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
    .line 659
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$5;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 663
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$5;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # getter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$200(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 664
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 665
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$5;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$5;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # getter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideView:Landroid/view/View;
    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$800(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    # setter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidHeight:I
    invoke-static {v1, v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$702(Lcom/meizu/common/app/SlideNotice$SlideViewController;I)I

    .line 666
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$5;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # getter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnimationExecutor:Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;
    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$900(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$5;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # getter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidHeight:I
    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$700(Lcom/meizu/common/app/SlideNotice$SlideViewController;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->start(II)V

    .line 667
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$5;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # setter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnimationType:I
    invoke-static {v1, v3}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$1002(Lcom/meizu/common/app/SlideNotice$SlideViewController;I)I

    .line 668
    return v3
.end method
