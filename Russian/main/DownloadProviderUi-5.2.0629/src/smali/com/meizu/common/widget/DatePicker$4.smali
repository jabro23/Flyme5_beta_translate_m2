.class Lcom/meizu/common/widget/DatePicker$4;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 530
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_1

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutDirection()I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 531
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    iput-boolean v10, v5, Lcom/meizu/common/widget/DatePicker;->mIsLayoutRtl:Z

    .line 536
    :goto_0
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-boolean v5, v5, Lcom/meizu/common/widget/DatePicker;->mIsLayoutRtl:Z

    if-eqz v5, :cond_0

    .line 537
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    const v6, 0x7f0d00b7

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 538
    .local v1, "dayParent":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 539
    .local v2, "dayParentLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 540
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 541
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 544
    .local v4, "yearLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 545
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 546
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 547
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/meizu/common/widget/ScrollTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1500(Lcom/meizu/common/widget/DatePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "yearLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 550
    .restart local v4    # "yearLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 551
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 552
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 553
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1500(Lcom/meizu/common/widget/DatePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 556
    .local v3, "monthLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 557
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 558
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 559
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/meizu/common/widget/ScrollTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1600(Lcom/meizu/common/widget/DatePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "monthLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 562
    .restart local v3    # "monthLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 563
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 564
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 565
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1600(Lcom/meizu/common/widget/DatePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 568
    .local v0, "dayLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 569
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 570
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 571
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/meizu/common/widget/ScrollTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1700(Lcom/meizu/common/widget/DatePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "dayLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 574
    .restart local v0    # "dayLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 575
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 576
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 577
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    # getter for: Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1700(Lcom/meizu/common/widget/DatePicker;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    .end local v0    # "dayLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "dayParent":Landroid/widget/FrameLayout;
    .end local v2    # "dayParentLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "monthLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "yearLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void

    .line 533
    :cond_1
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    iput-boolean v7, v5, Lcom/meizu/common/widget/DatePicker;->mIsLayoutRtl:Z

    goto/16 :goto_0
.end method
