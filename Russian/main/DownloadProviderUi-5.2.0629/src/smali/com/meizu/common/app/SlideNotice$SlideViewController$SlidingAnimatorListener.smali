.class Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method private constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;Lcom/meizu/common/app/SlideNotice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p2, "x1"    # Lcom/meizu/common/app/SlideNotice$1;

    .prologue
    .line 903
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 926
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # getter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnimationType:I
    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$1000(Lcom/meizu/common/app/SlideNotice$SlideViewController;)I

    move-result v0

    if-nez v0, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    # getter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideY:I
    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$1400(Lcom/meizu/common/app/SlideNotice$SlideViewController;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    const/4 v1, -0x1

    # setter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideY:I
    invoke-static {v0, v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$1402(Lcom/meizu/common/app/SlideNotice$SlideViewController;I)I

    .line 919
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget-object v0, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;
    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$1200(Lcom/meizu/common/app/SlideNotice;)Lcom/meizu/common/app/SlideNotice$SlideViewController;

    move-result-object v0

    # invokes: Lcom/meizu/common/app/SlideNotice$SlideViewController;->destroy()V
    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$000(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 931
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 908
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget-object v0, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;
    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$1200(Lcom/meizu/common/app/SlideNotice;)Lcom/meizu/common/app/SlideNotice$SlideViewController;

    move-result-object v0

    const/4 v1, 0x1

    # setter for: Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z
    invoke-static {v0, v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$1302(Lcom/meizu/common/app/SlideNotice$SlideViewController;Z)Z

    .line 909
    return-void
.end method
