.class Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "FoldableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FoldableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreClickSpan"
.end annotation


# instance fields
.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/common/widget/FoldableTextView;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/FoldableTextView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 463
    iput-object p2, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->mText:Ljava/lang/CharSequence;

    .line 464
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 477
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # getter for: Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$100(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # getter for: Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;
    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$200(Lcom/meizu/common/widget/FoldableTextView;)Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # getter for: Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;
    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$200(Lcom/meizu/common/widget/FoldableTextView;)Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/widget/FoldableTextView$FoldingListener;->onFolding(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # setter for: Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z
    invoke-static {v0, v2}, Lcom/meizu/common/widget/FoldableTextView;->access$302(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 483
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # getter for: Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/meizu/common/widget/FoldableTextView;->access$400(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 484
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # invokes: Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V
    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$500(Lcom/meizu/common/widget/FoldableTextView;)V

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # getter for: Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I
    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$000(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    # getter for: Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I
    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$000(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method
