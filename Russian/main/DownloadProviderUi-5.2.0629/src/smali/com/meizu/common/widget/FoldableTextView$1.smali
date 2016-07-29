.class Lcom/meizu/common/widget/FoldableTextView$1;
.super Ljava/lang/Object;
.source "FoldableTextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/FoldableTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/FoldableTextView;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->access$102(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 572
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    .line 558
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # getter for: Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z
    invoke-static {v1}, Lcom/meizu/common/widget/FoldableTextView;->access$300(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # getter for: Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/meizu/common/widget/FoldableTextView;->access$700(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 560
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/FoldableTextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # getter for: Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I
    invoke-static {v3}, Lcom/meizu/common/widget/FoldableTextView;->access$800(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v3

    # invokes: Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V
    invoke-static {v1, v2, v3}, Lcom/meizu/common/widget/FoldableTextView;->access$900(Lcom/meizu/common/widget/FoldableTextView;II)V

    .line 564
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # setter for: Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z
    invoke-static {v1, v0}, Lcom/meizu/common/widget/FoldableTextView;->access$102(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 566
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # getter for: Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z
    invoke-static {v2}, Lcom/meizu/common/widget/FoldableTextView;->access$1200(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    # setter for: Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z
    invoke-static {v1, v0}, Lcom/meizu/common/widget/FoldableTextView;->access$1202(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 567
    return-void

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/FoldableTextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # getter for: Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I
    invoke-static {v3}, Lcom/meizu/common/widget/FoldableTextView;->access$1000(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v3

    # invokes: Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V
    invoke-static {v1, v2, v3}, Lcom/meizu/common/widget/FoldableTextView;->access$1100(Lcom/meizu/common/widget/FoldableTextView;II)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 577
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 554
    return-void
.end method
