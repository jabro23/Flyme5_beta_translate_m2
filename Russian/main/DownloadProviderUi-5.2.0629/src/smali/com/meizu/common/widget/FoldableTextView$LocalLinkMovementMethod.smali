.class public Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "FoldableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FoldableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalLinkMovementMethod"
.end annotation


# static fields
.field static sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;
    .locals 1

    .prologue
    .line 622
    sget-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    invoke-direct {v0}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    .line 624
    :cond_0
    sget-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 629
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 631
    .local v0, "action":I
    if-eq v0, v7, :cond_0

    if-nez v0, :cond_5

    .line 632
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 633
    .local v5, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 635
    .local v6, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    sub-int/2addr v5, v9

    .line 636
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    sub-int/2addr v6, v9

    .line 638
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    add-int/2addr v5, v9

    .line 639
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    add-int/2addr v6, v9

    .line 641
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 642
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 643
    .local v2, "line":I
    int-to-float v9, v5

    invoke-virtual {v1, v2, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 645
    .local v4, "off":I
    const-class v9, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 647
    .local v3, "link":[Landroid/text/style/ClickableSpan;
    array-length v9, v3

    if-eqz v9, :cond_4

    .line 648
    if-ne v0, v7, :cond_3

    .line 649
    aget-object v8, v3, v8

    invoke-virtual {v8, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 654
    :cond_1
    :goto_0
    instance-of v8, p1, Lcom/meizu/common/widget/FoldableTextView;

    if-eqz v8, :cond_2

    .line 655
    check-cast p1, Lcom/meizu/common/widget/FoldableTextView;

    .end local p1    # "widget":Landroid/widget/TextView;
    # setter for: Lcom/meizu/common/widget/FoldableTextView;->mLinkHit:Z
    invoke-static {p1, v7}, Lcom/meizu/common/widget/FoldableTextView;->access$1402(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 664
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    :goto_1
    return v7

    .line 650
    .restart local v1    # "layout":Landroid/text/Layout;
    .restart local v2    # "line":I
    .restart local v3    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v4    # "off":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    .restart local p1    # "widget":Landroid/widget/TextView;
    :cond_3
    if-nez v0, :cond_1

    .line 651
    aget-object v9, v3, v8

    invoke-interface {p2, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    aget-object v8, v3, v8

    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-static {p2, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 659
    :cond_4
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 660
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move v7, v8

    .line 661
    goto :goto_1

    .line 664
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_5
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_1
.end method
